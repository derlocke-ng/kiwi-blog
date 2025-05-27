# 🥝 Kiwi Blog

> *A lightweight, markdown-powered static site generator with a simple naming pattern for creating custom pages.*

<div align="center">

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Powered By: Markdown](https://img.shields.io/badge/Powered%20By-Markdown-blue)
![Build System: Bash](https://img.shields.io/badge/Build%20System-Bash-green)

</div>

## 🚀 Quick Start

```bash
git clone https://github.com/derlocke-ng/kiwi-blog.git
cd kiwi-blog
chmod +x build.sh
./build.sh
```

> **That's it!** Your blog is now running locally. Open `index.html` in your browser.

## ✨ Creating Subsites - The Naming Pattern

Kiwi Blog uses a simple **three-part naming pattern** to create custom subsites:

| Step | Component | Example |
|------|-----------|---------|
| **1** | Template File: `NAME-template.html` | `projects-template.html` |
| **2** | Content Folder: `NAME/` | `projects/` |
| **3** | Placeholder: `<!--NAME-->` | `<!--PROJECTS-->` |

### 🔧 Step-by-Step Guide

#### 1. Template File: `NAME-template.html`
Create a template file ending with `-template.html`:
```bash
cp sample-template.html projects-template.html
```

#### 2. Content Folder: `NAME/`
Create a matching directory for markdown content:
```bash
mkdir projects
echo "# My Projects" > projects/projects.md
```

#### 3. Placeholder: `<!--NAME-->`
The build script automatically replaces `<!--NAME-->` (uppercase) in your template with the content from the `NAME/` directory.

**Note**: Multiple markdown files in a subsite folder are combined in **alphabetical order** by filename.

### 🎯 Example: Creating a "Portfolio" Subsite

<div align="center">

| Step | Action | Result |
|------|--------|--------|
| 1️⃣ | Create `portfolio-template.html` | Template ready |
| 2️⃣ | Create `portfolio/` folder | Content directory |
| 3️⃣ | Add `portfolio/portfolio.md` | Content file |
| 4️⃣ | Run `./build.sh` | ✨ `portfolio.html` + menu entry |

</div>

## 🧩 Template Placeholders

<div align="center">

### Universal Placeholders (Available in All Templates)
| Placeholder | Purpose |
|-------------|---------|
| `<!--MENU-->` | Navigation menu links |
| `<!--FOOTERLINKS-->` | Footer navigation |

### Homepage Template (template.html)
| Placeholder | Purpose |
|-------------|---------|
| `<!--HOME-->` | Homepage content |
| `<!--PINNED-->` | Featured post content |
| `<!--LATEST-->` | Blog posts |

### Custom Page Templates
| Template | Placeholder | Content Source |
|----------|-------------|----------------|
| `sample-template.html` | `<!--SAMPLE-->` | `sample/` folder |
| `showcase-template.html` | `<!--SHOWCASE-->` | `showcase/` folder |
| `archive-template.html` | `<!--ARCHIVE-->` | Generated archive |
| `NAME-template.html` | `<!--NAME-->` | `NAME/` folder |

</div>

> **Note**: Each custom template gets its own unique placeholder based on the filename.

## 📝 Blog Posts

> Create engaging content with automatic time-sorting!

Add markdown files to `blogentries/` with this format:

```markdown
# Post Title

**Date:** 2025-05-27  
**Author:** Your Name

Content here...
```

**✨ Important**: Blog entries are automatically **time-sorted** (newest first) based on the date in each markdown file.

## ⚙️ Requirements

<div align="center">

| Tool | Purpose | Installation |
|------|---------|-------------|
| **Pandoc** | Markdown → HTML conversion | `sudo apt-get install pandoc` |
| **Bash** | Build script execution | Pre-installed on most systems |

</div>

```bash
# Ubuntu/Debian
sudo apt-get install pandoc

# macOS  
brew install pandoc
```

## 📁 Project Structure

<div align="center">

```
🥝 kiwi-blog/
├── 🔧 build.sh                    # Main build script
├── 🏠 template.html               # Homepage template
├── 📄 archive-template.html       # Archive page template
├── 📄 sample-template.html        # Sample page template
├── 📄 showcase-template.html      # Showcase page template
├── 🎨 style.css                   # Main stylesheet
├── ⚙️ theme.js                    # Theme system
├── 🖼️ favicon.svg                 # Site icon
├── 📄 index.html                  # Generated homepage
├── 📄 archive.html                # Generated archive page
├── 📄 sample.html                 # Generated sample page
├── 📄 showcase.html               # Generated showcase page
├── 📝 blogentries/                # Blog posts directory
│   ├── 🏠 home.md                 # Homepage content
│   ├── 📌 pinned.md               # Featured post
│   ├── 📰 blog1.md                # Blog post
│   ├── 📰 blog2.md                # Blog post
│   ├── 📰 extending-kiwi-blog.md  # Blog post
│   └── 📰 getting-started.md      # Blog post
├── 📁 sample/                     # Sample page content
│   └── 📝 sample.md
└── 📁 showcase/                   # Showcase page content
    └── 📝 showcase.md
```

</div>

## 📋 Todo List

- [ ] **Table of Contents** - Automatic headline tree generation for long posts
- [ ] **Post Tags** - Categorize and organize blog entries with tags
- [ ] **Entry Search** - Full-text search functionality across all blog posts  
- [ ] **Tag Search** - Find posts by filtering specific tags
- [ ] **Enhanced Sorting** - Additional sorting options similar to archive page

## License

MIT License - See [LICENSE](LICENSE) file for details.

---

<div align="center">

**Made with 🥝 by [derlocke-ng](https://github.com/derlocke-ng)**

*Simple • Powerful • Extensible*

[![GitHub Stars](https://img.shields.io/github/stars/derlocke-ng/kiwi-blog?style=social)](https://github.com/derlocke-ng/kiwi-blog)
[![GitHub Forks](https://img.shields.io/github/forks/derlocke-ng/kiwi-blog?style=social)](https://github.com/derlocke-ng/kiwi-blog/fork)

</div>