# 🥝 Kiwi Blog

A lightweight, markdown-powered static site generator with a simple naming pattern for creating custom pages.

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Powered By: Markdown](https://img.shields.io/badge/Powered%20By-Markdown-blue)
![Build System: Bash](https://img.shields.io/badge/Build%20System-Bash-green)

## Quick Start

```bash
git clone https://github.com/derlocke-ng/kiwi-blog.git
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

**Note**: Multiple markdown files in a subsite folder are combined in **alphabetical order** by filename.

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

**Important**: Blog entries are automatically **time-sorted** (newest first) based on the date in each markdown file.

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

## 🗺️ Roadmap - Upcoming Features

We're constantly improving Kiwi Blog! Here's what's coming next:

### 🎯 **Phase 1: Content Enhancement**
- **📋 Table of Contents** - Automatic headline tree generation for long posts
- **🏷️ Post Tags** - Categorize and organize your blog entries  
- **📅 Enhanced Archive** - Better sorting and filtering options

### 🔍 **Phase 2: Search & Discovery**
- **🔎 Entry Search** - Full-text search across all blog posts
- **🏷️ Tag Search** - Find posts by specific tags quickly
- **📊 Smart Sorting** - Multiple sort options (date, title, tags, popularity)

### ⚡ **Phase 3: Advanced Features**
- **📱 Mobile Optimization** - Enhanced responsive design
- **🌍 Multi-language Support** - Internationalization features
- **📈 Analytics Integration** - Basic visitor statistics
- **💬 Comment System** - Optional commenting functionality

### 🎨 **Phase 4: Customization**
- **🎭 Theme Gallery** - Pre-built theme collections
- **🧩 Plugin System** - Extensible functionality modules
- **⚙️ Config File** - YAML-based configuration options

---

*Want to contribute? Check out our [GitHub Issues](https://github.com/derlocke-ng/kiwi-blog/issues) or submit a feature request!*

## License

MIT License - See [LICENSE](LICENSE) file for details.

---

<div align="center">

**Made with 🥝 by [derlocke-ng](https://github.com/derlocke-ng)**

*Simple • Powerful • Extensible*

[![GitHub Stars](https://img.shields.io/github/stars/derlocke-ng/kiwi-blog?style=social)](https://github.com/derlocke-ng/kiwi-blog)
[![GitHub Forks](https://img.shields.io/github/forks/derlocke-ng/kiwi-blog?style=social)](https://github.com/derlocke-ng/kiwi-blog/fork)

</div>