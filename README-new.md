# 🥝 Kiwi Blog

A modern, lightweight static site generator with advanced theming capabilities and dynamic page creation.

## 🌐 Live Demo

**[🔗 View Live Demo](https://derlocke-ng.github.io/kiwi-blog/)**

*Experience the full functionality including the dual-slider theme system, dark mode toggle, and responsive design.*

## ✨ Features

- **🔥 Dynamic Site Generation**: Automatically creates pages from `*-template.html` files
- **📌 Pinned Posts**: Feature important content at the top
- **📅 Archive System**: Organized yearly blog archives  
- **🎨 Advanced Theming**: Dual-slider color customization with dark mode
- **📱 Responsive Design**: Mobile-friendly layout
- **⚡ Fast & Lightweight**: Pure HTML/CSS/JS with no dependencies
- **🔧 Easy Customization**: Markdown-based content management

## 🚀 Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/kiwi-blog.git
   cd kiwi-blog
   ```

2. **Make the build script executable**
   ```bash
   chmod +x build.sh
   ```

3. **Build your site**
   ```bash
   ./build.sh
   ```

4. **Open `index.html` in your browser**

## 📁 Project Structure

```
kiwi-blog/
├── 📝 Content Files
│   ├── blogentries/          # Blog posts and main content
│   │   ├── home.md          # Homepage content
│   │   ├── pinned.md        # Pinned post
│   │   └── *.md             # Other blog entries
│   └── sample/              # Custom page content
│       └── sample.md        # Sample custom page
│
├── 🎨 Templates
│   ├── template.html        # Main page template
│   ├── archive-template.html # Archive page template
│   └── sample-template.html  # Custom page template
│
├── 🎯 Generated Pages (auto-created)
│   ├── index.html           # Main page
│   ├── archive.html         # Archive page
│   └── sample.html          # Sample page
│
├── 🎨 Styling & Scripts
│   ├── style.css            # Main stylesheet
│   └── theme.js             # Theme system
│
└── ⚙️ Build System
    └── build.sh             # Main build script
```

## 📝 Creating Content

### Blog Entries

Blog entries go in the `blogentries/` folder and are sorted by **DATE** (newest first):

**Example: `blogentries/my-new-post.md`**
```markdown
# My First Blog Post
2025-05-27

Welcome to my **first blog post**! This is written in Markdown.

## Features I Love

- Easy markdown writing
- Automatic HTML generation  
- Beautiful themes
- Code highlighting

```python
def hello_world():
    print("Hello from Kiwi Blog!")
```

That's all there is to it!
```

### Custom Pages

Custom pages are sorted **ALPHABETICALLY** and created with:

1. **Create template**: `my-page-template.html`
2. **Create folder**: `my-page/` 
3. **Add content**: `my-page/content.md`

**Example Template Structure:**
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Page - Kiwi Blog</title>
  <link rel="icon" href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>🥝</text></svg>">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <nav class="taskbar">
    <div class="logo"><a href="index.html">🥝 Kiwi Blog</a></div>
    <ul class="menu">
      <!--MENU-->
    </ul>
  </nav>
  <div class="main-wrapper">
    <main>
      <!--SAMPLE-->
    </main>
  </div>
  <footer>
    <div class="footer-content">
      <div class="footer-links">
        <!--FOOTERLINKS-->
      </div>
    </div>
  </footer>
  <script src="theme.js"></script>
</body>
</html>
```

### Template Placeholders

**Key Placeholders** (case-sensitive):
- `<!--MENU-->` - Auto-generated navigation menu
- `<!--SAMPLE-->` - Content from matching folder (e.g., `sample/` for `sample-template.html`)
- `<!--FOOTERLINKS-->` - Auto-generated footer links
- `<!--MAIN-->` - Used in main template for blog content

### Content Sorting

Kiwi Blog handles different content types with different sorting:

- **📅 Blog Entries** (`blogentries/`): Sorted by **DATE** (newest first)
  - Requires date on second line: `2025-05-26`
  - Appears on homepage and archive
  
- **📁 Custom Pages** (from `*-template.html`): Sorted **ALPHABETICALLY** by filename
  - No date requirement
  - Creates separate pages
  - Multiple `.md` files combined in alphabetical order

### Pinned Posts

Edit `blogentries/pinned.md` to feature important content at the top:

```markdown
# 📌 Important Announcement
2025-05-27

This post will always appear first on your blog!

Perfect for:
- Site announcements
- Welcome messages  
- Important updates
```

## 🎨 Theme System

Kiwi Blog features an advanced dual-slider theming system:

### Controls
- **🌙 Dark Mode Toggle**: Switch between light and dark themes
- **📄 Content Slider**: Customize colors for blog content and articles (HSL hue 0-360)
- **🎨 Header/Footer Slider**: Adjust navigation and footer colors (HSL hue 0-360)

### Features
- ✅ **Real-time Updates**: Changes apply instantly
- ✅ **Cross-page Persistence**: Settings saved with `localStorage` 
- ✅ **Responsive Design**: Touch-friendly sliders on mobile
- ✅ **Accessibility**: Proper contrast ratios maintained
- ✅ **Kiwi-inspired Defaults**: Beautiful green (#64 hue) and blue (#210 hue) scheme

### CSS Variables
The theme system uses CSS custom properties:

```css
:root {
  --content-hue: 100;        /* Content color hue (0-360) */
  --header-hue: 210;         /* Header/footer color hue (0-360) */
  --dark-mode: 0;            /* Dark mode state (0 or 1) */
  
  /* Auto-calculated colors */
  --bg-primary: hsl(var(--content-hue), 20%, 98%);
  --text-primary: hsl(var(--content-hue), 10%, 15%);
  --header-bg: hsl(var(--header-hue), 30%, 25%);
}

[data-theme="dark"] {
  --bg-primary: hsl(var(--content-hue), 15%, 12%);
  --text-primary: hsl(var(--content-hue), 10%, 85%);
}
```

## ⚙️ Build System

The `build.sh` script automatically:

1. **Processes blog entries** from `blogentries/` folder
2. **Generates navigation menus** for all pages
3. **Creates archive pages** grouped by year
4. **Builds custom pages** from `*-template.html` files
5. **Adds syntax highlighting** with Pandoc's `--highlight-style=pygments`
6. **Sorts content appropriately**:
   - Blog entries: By date (newest first)
   - Custom pages: Alphabetically

### Build Process Example

```bash
#!/bin/bash
# Key features of build.sh:

# 1. Dynamic menu generation
MENU_LINKS=( '<li><a href="index.html#home">Home</a></li>' '<li><a href="archive.html">Archive</a></li>' )

# 2. Pandoc with syntax highlighting  
pandoc "blogentries/home.md" --highlight-style=pygments -o /tmp/home_content.html

# 3. Template placeholder replacement
sed -i '/<!--MENU-->/r /tmp/menu_links.html' "$OUTPUT"
sed -i '/<!--MAIN-->/r /tmp/main_content.html' "$OUTPUT"
sed -i '/<!--FOOTERLINKS-->/r /tmp/footer_links.html' "$OUTPUT"
```

## 🔧 Advanced Customization

### Adding New Template Types

1. Create `newtype-template.html` with the placeholder structure
2. Create `newtype/` folder for content
3. Add `newtype/content.md` files
4. Run `./build.sh` - automatic page generation!

### Markdown Features

Full Markdown support with enhanced features:

````markdown
# Heading 1
## Heading 2

**Bold text** and *italic text*

- Bulleted lists
- With multiple items

1. Numbered lists
2. Also supported

```python
# Code blocks with syntax highlighting
def kiwi_blog():
    return "Awesome static site generator!"
```

> Blockquotes for important information

[Links](https://github.com) and images work perfectly.

| Tables | Are |
|--------|-----|
| Also   | Supported |
````

### Archive System
- Automatically groups posts by year
- Shows post counts per year
- Accessible via `/archive.html`
- Maintains chronological order

## 🌐 Deployment

### GitHub Pages (Recommended)

1. Push to GitHub repository
2. Go to Settings → Pages
3. Select "Deploy from a branch"
4. Choose "main" branch and "/" (root) folder
5. Your site will be live at `https://yourusername.github.io/kiwi-blog`

See `GITHUB-SETUP.md` for detailed instructions.

### Manual Deployment

Upload these files to any web server:
- All generated `.html` files
- `style.css`
- `theme.js`  
- Optional: `favicon.svg`

## 🎯 Browser Compatibility

- ✅ Chrome/Chromium 80+
- ✅ Firefox 75+
- ✅ Safari 13+
- ✅ Edge 80+
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

## 📱 Responsive Design

Kiwi Blog is mobile-first with:
- 📱 Touch-friendly theme sliders
- 🔄 Responsive navigation that collapses on mobile
- 📖 Optimized typography for reading
- ⚡ Fast loading on all devices
- 🎨 Theme controls work perfectly on touchscreens

## 🛠️ Development

### Prerequisites
- **Pandoc** for Markdown processing
- **Bash** shell for build script
- Modern web browser for testing

### Local Development
```bash
# Make changes to templates or content
vim blogentries/my-post.md

# Rebuild
./build.sh

# Test in browser
open index.html
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b amazing-feature`
3. Make your changes
4. Test thoroughly (build and check all pages)
5. Submit a pull request

## 📚 Documentation

- `README.md` - This comprehensive guide
- `GITHUB-SETUP.md` - GitHub Pages deployment guide
- `PROJECT-SUMMARY.md` - Technical overview and development notes

## 🐛 Troubleshooting

### Common Issues

**Build script doesn't work:**
- Check that Pandoc is installed: `pandoc --version`
- Make script executable: `chmod +x build.sh`

**Favicon not showing:**
- Clear browser cache
- Check if emoji-based favicon appears in tab

**Theme not persisting:**
- Check browser localStorage support
- Verify JavaScript is enabled

## 📄 License

MIT License - feel free to use this project for personal or commercial purposes.

## 🔗 Links

- **[Live Demo](https://derlocke-ng.github.io/kiwi-blog/)**
- **[GitHub Repository](https://github.com/derlocke-ng/kiwi-blog)**
- **[Issues & Support](https://github.com/derlocke-ng/kiwi-blog/issues)**

---

**Made with 🥝 by the Kiwi Blog community**

*A fresh take on static site generation - simple, powerful, and deliciously customizable!*
