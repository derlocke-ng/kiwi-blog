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

## 🧩 Built-in Template Placeholders

<div align="center">

| Placeholder | Purpose | Usage |
|-------------|---------|-------|
| `<!--MENU-->` | Navigation menu links | All templates |
| `<!--HOME-->` | Homepage content | Main template |
| `<!--PINNED-->` | Featured post content | Homepage |
| `<!--LATEST-->` | Blog posts | Homepage |
| `<!--FOOTERLINKS-->` | Footer navigation | All templates |
| `<!--ARCHIVE-->` | Archive page content | Archive template |
| `<!--SAMPLE-->` | Sample page content | Sample template |
| `<!--SHOWCASE-->` | Showcase page content | Showcase template |

</div>

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
├── 🔧 build.sh                # Main build script
├── 🏠 template.html           # Homepage template
├── 📄 NAME-template.html      # Custom page templates
├── 🎨 style.css               # Stylesheet
├── 📝 blogentries/            # Blog posts
│   ├── 🏠 home.md
│   ├── 📌 pinned.md
│   └── 📰 *.md
└── 📁 NAME/                   # Custom page content
    └── 📝 NAME.md
```

</div>

## 📋 Todo List

- [ ] Headline tree (table of contents)
- [ ] Post tags
- [ ] Search for entries
- [ ] Search for tags
- [ ] Sort like archive

## License

MIT License - See [LICENSE](LICENSE) file for details.

---

<div align="center">

**Made with 🥝 by [derlocke-ng](https://github.com/derlocke-ng)**

*Simple • Powerful • Extensible*

[![GitHub Stars](https://img.shields.io/github/stars/derlocke-ng/kiwi-blog?style=social)](https://github.com/derlocke-ng/kiwi-blog)
[![GitHub Forks](https://img.shields.io/github/forks/derlocke-ng/kiwi-blog?style=social)](https://github.com/derlocke-ng/kiwi-blog/fork)

</div>