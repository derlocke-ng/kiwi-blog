#!/bin/bash
# Kiwi Blog static site generator with dynamic menu/footer for new pages
# Requires: pandoc

set -e

BLOG_DIR="blogentries"
TEMPLATE="template.html"
ARCHIVE_TEMPLATE="archive-template.html"
OUTPUT="index.html"
ARCHIVE_OUTPUT="archive.html"

# Find all *-template.html files (except template.html and archive-template.html)
PAGE_TEMPLATES=()
for tpl in ./*-template.html; do
  base="$(basename "$tpl")"
  if [ "$base" = "template.html" ] || [ "$base" = "archive-template.html" ]; then
    continue
  fi
  PAGE_TEMPLATES+=("$tpl")
done

# Build menu/footer links dynamically as arrays for robust newline handling
MENU_LINKS=( '<li><a href="index.html#home">Home</a></li>' '<li><a href="archive.html">Archive</a></li>' )
FOOTER_LINKS=( '<a href="index.html#home">Home</a> | <a href="archive.html">Archive</a>' )
for tpl in "${PAGE_TEMPLATES[@]}"; do
  PAGE="${tpl%-template.html}.html"
  NAME="$(basename "${tpl%-template.html}")"
  TITLE="$(echo "$NAME" | sed 's/.*/\u&/;s/-/ /g')"
  MENU_LINKS+=( "<li><a href=\"$PAGE\">$TITLE</a></li>" )
  FOOTER_LINKS+=( " | <a href=\"$PAGE\">$TITLE</a>" )
done

# Replace menu/footer placeholders in template.html for index.html
cp "$TEMPLATE" "$OUTPUT"
printf -v MENU_LINKS_STR '%s\n' "${MENU_LINKS[@]}"
printf -v FOOTER_LINKS_STR '%s' "${FOOTER_LINKS[@]}"
echo -e "$MENU_LINKS_STR" > /tmp/menu_links.html
echo -e "$FOOTER_LINKS_STR" > /tmp/footer_links.html

# Pinned post (optional)
PINNED_MD="$BLOG_DIR/pinned.md"
PINNED_HTML=""
if [ -f "$PINNED_MD" ]; then
  PINNED_HTML="$(pandoc "$PINNED_MD" -f markdown -t html --highlight-style=pygments)"
fi
echo -e "$PINNED_HTML" > /tmp/pinned.html

# Collect blog entries (excluding home.md and pinned.md)
ENTRIES=()
for f in "$BLOG_DIR"/*.md; do
  base="$(basename "$f")"
  if [ "$base" = "home.md" ] || [ "$base" = "pinned.md" ]; then
    continue
  fi
  ENTRIES+=("$f")
done

# Sort entries by date (second line), newest first
mapfile -t sorted < <(for f in "${ENTRIES[@]}"; do echo "$f|$(head -n 2 "$f" | tail -n 1)"; done | sort -t'|' -k2 -r)

# Prepare all entries for home (show all, newest first)
LATEST_HTML=""
for entry in "${sorted[@]}"; do
  [ -z "$entry" ] && continue
  f="${entry%%|*}"
  ID=$(basename "$f" .md)
  ENTRY_HTML=$(pandoc "$f" -f markdown -t html --highlight-style=pygments)
  LATEST_HTML+="<section id=\"$ID\" class=\"blogentry\">$ENTRY_HTML</section>\n"
done
echo -e "$LATEST_HTML" > /tmp/latest.html

# Prepare yearly archive and all entries for archive
ARCHIVE_HTML="<h2>Archive</h2>\n"
YEAR=""
for entry in "${sorted[@]}"; do
  f="${entry%%|*}"
  TITLE=$(head -n 1 "$f")
  DATE=$(head -n 2 "$f" | tail -n 1)
  ID=$(basename "$f" .md)
  YR=${DATE:0:4}
  if [ "$YR" != "$YEAR" ]; then
    [ -n "$YEAR" ] && ARCHIVE_HTML+="</ul>"
    ARCHIVE_HTML+="<h3>$YR</h3><ul>"
    YEAR="$YR"
  fi
  ARCHIVE_HTML+="<li><a href=\"index.html#$ID\">$TITLE</a> <span class=\"date\">$DATE</span></li>\n"
done
[ -n "$YEAR" ] && ARCHIVE_HTML+="</ul>"
echo -e "$ARCHIVE_HTML" > /tmp/archive.html

# Home page (manual, optional)
HOME_MD="$BLOG_DIR/home.md"
HOME_HTML=""
if [ -f "$HOME_MD" ]; then
  HOME_HTML="$(pandoc "$HOME_MD" -f markdown -t html --highlight-style=pygments)"
fi
echo -e "$HOME_HTML" > /tmp/home.html

# Build main index.html
sed -i "/<!--MENU-->/r /tmp/menu_links.html" "$OUTPUT"
sed -i "/<!--MENU-->/d" "$OUTPUT"
sed -i "/<!--FOOTERLINKS-->/r /tmp/footer_links.html" "$OUTPUT"
sed -i "/<!--FOOTERLINKS-->/d" "$OUTPUT"
sed -i "/<!--HOME-->/r /tmp/home.html" "$OUTPUT"
sed -i "/<!--PINNED-->/r /tmp/pinned.html" "$OUTPUT"
sed -i "/<!--LATEST-->/r /tmp/latest.html" "$OUTPUT"
sed -i "/<!--ARCHIVE-->/r /tmp/archive.html" "$OUTPUT"
sed -i "/<!--HOME-->/d" "$OUTPUT"
sed -i "/<!--PINNED-->/d" "$OUTPUT"
sed -i "/<!--LATEST-->/d" "$OUTPUT"
sed -i "/<!--ARCHIVE-->/d" "$OUTPUT"

# Build archive.html as a sub site
cp "$ARCHIVE_TEMPLATE" "$ARCHIVE_OUTPUT"
sed -i "/<!--MENU-->/r /tmp/menu_links.html" "$ARCHIVE_OUTPUT"
sed -i "/<!--MENU-->/d" "$ARCHIVE_OUTPUT"
sed -i "/<!--FOOTERLINKS-->/r /tmp/footer_links.html" "$ARCHIVE_OUTPUT"
sed -i "/<!--FOOTERLINKS-->/d" "$ARCHIVE_OUTPUT"
sed -i "/<!--ARCHIVE-->/r /tmp/archive.html" "$ARCHIVE_OUTPUT"
sed -i "/<!--ARCHIVE-->/d" "$ARCHIVE_OUTPUT"

# For each *-template.html, generate the corresponding page from markdown in a subfolder if it exists
for tpl in "${PAGE_TEMPLATES[@]}"; do
  PAGE="${tpl%-template.html}.html"
  BASENAME="$(basename "${tpl%-template.html}")"
  MARKDOWN_DIR="${BASENAME}"
  PAGE_HTML=""
  if [ -d "$MARKDOWN_DIR" ]; then
    for md in "$MARKDOWN_DIR"/*.md; do
      [ -f "$md" ] || continue
      PAGE_HTML+="$(pandoc "$md" -f markdown -t html --highlight-style=pygments)\n"
    done
  fi
  cp "$tpl" "$PAGE"
  # Insert menu and footer using temp files
  sed -i "/<!--MENU-->/r /tmp/menu_links.html" "$PAGE"
  sed -i "/<!--MENU-->/d" "$PAGE"
  sed -i "/<!--FOOTERLINKS-->/r /tmp/footer_links.html" "$PAGE"
  sed -i "/<!--FOOTERLINKS-->/d" "$PAGE"
  # Insert main content placeholder (e.g. <!--SAMPLE-->) using temp file and sed 'r' (read)
  PLACEHOLDER="<!--${BASENAME^^}-->"
  printf '%b' "$PAGE_HTML" > /tmp/page_content.html
  # Use a two-step process: replace placeholder with a unique marker, then read in the file at that marker
  MARKER="__REPLACE_MARKER__"
  sed -i "s|$PLACEHOLDER|$MARKER|" "$PAGE"
  sed -i "/$MARKER/r /tmp/page_content.html" "$PAGE"
  sed -i "/$MARKER/d" "$PAGE"
done

rm /tmp/home.html /tmp/pinned.html /tmp/latest.html /tmp/archive.html /tmp/menu_links.html /tmp/footer_links.html /tmp/page_content.html

echo "Site built as $OUTPUT, $ARCHIVE_OUTPUT, and all *-template.html pages."
