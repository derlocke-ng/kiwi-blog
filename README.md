# 🥝 Kiwi Blog

A lightweight, markdown-powered static site generator with a simple naming pattern for creating custom pages.

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Powered By: Markdown](https://img.shields.io/badge/Powered%20By-Markdown-black)
![Build System: Bash](https://img.shields.io/badge/Build%20System-Bash-green)

## Quick Start

```bash
git clone https://github.com/yourusername/kiwi-blog.git
cd kiwi-blog
chmod +x build.sh
./build.sh
```

## Creating Subsites - The Naming Pattern

Kiwi Blog uses a simple three-part naming pattern to create custom subsites:

### 1. Template File: `NAME-template.html`
Create a template file ending with `-template.html`:
```bash
cp sample-template.html projects-template.html
```

### 2. Content Folder: `NAME/`
Create a matching directory for markdown content:
```bash
mkdir projects
echo "# My Projects" > projects/projects.md
```

### 3. Placeholder: `<!--NAME-->`
The build script automatically replaces `<!--NAME-->` (uppercase) in your template with the content from the `NAME/` directory.

### Example: Creating a "Portfolio" Subsite

1. **Create template**: `portfolio-template.html`
2. **Create folder**: `portfolio/`
3. **Add content**: `portfolio/portfolio.md`
4. **Build**: `./build.sh`

Result: `portfolio.html` with navigation menu entry

## Built-in Template Placeholders

All templates support these placeholders:

- `<!--MENU-->`: Navigation menu links
- `<!--HOME-->`: Homepage content  
- `<!--PINNED-->`: Featured post content
- `<!--LATEST-->`: Blog posts
- `<!--FOOTERLINKS-->`: Footer navigation
- `<!--ARCHIVE-->`: Archive page content
- `<!--SAMPLE-->`: Sample page content
- `<!--SHOWCASE-->`: Showcase page content

## Blog Posts

Add markdown files to `blogentries/` with this format:

```markdown
# Post Title

**Date:** 2025-05-27  
**Author:** Your Name

Content here...
```

## Requirements

- **Pandoc**: For Markdown to HTML conversion
- **Bash**: For the build script

```bash
# Ubuntu/Debian
sudo apt-get install pandoc

# macOS  
brew install pandoc
```

## Project Structure

```
kiwi-blog/
├── build.sh                # Main build script
├── template.html           # Homepage template
├── NAME-template.html      # Custom page templates
├── style.css               # Stylesheet
├── blogentries/            # Blog posts
│   ├── home.md
│   ├── pinned.md
│   └── *.md
└── NAME/                   # Custom page content
    └── NAME.md
```

## License

MIT License - See [LICENSE](LICENSE) file for details.

---

**Made with 🥝 by Kiwi Blog contributors**