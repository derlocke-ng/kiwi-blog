# 🥝 Kiwi Blog

> *A beautifully simple, lightweight static site generator powered by Markdown with infinite blog post scrolling and effortless custom page creation.*

<div align="center">

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Powered By: Markdown](https://img.shields.io/badge/Powered%20By-Markdown-blue)
![Build System: Bash](https://img.shields.io/badge/Build%20System-Bash-green)

</div>

## 🌐 Live Demo

🎯 **Experience Kiwi Blog:** [https://derlocke-ng.github.io/kiwi-blog/](https://derlocke-ng.github.io/kiwi-blog/)

✨ **Features in action:**
- 📜 **Infinite scroll** through blog posts  
- 🎨 **Beautiful responsive design** with dark/light themes
- 🔧 **Custom pages** created with the simple naming pattern
- 📚 **Archive system** with time-sorted entries

## 🚀 Quick Start

Get your blog created in **under 30 seconds**:

```bash
git clone https://github.com/derlocke-ng/kiwi-blog.git
cd kiwi-blog
chmod +x build.sh
./build.sh
```

🎉 **That's it!** Now choose how to view your blog:

### 📁 **File System** (Simple)
Open `index.html` directly in your browser

### 🌐 **Local Web Server** (Recommended)
Host with Python's built-in server for full functionality:

```bash
# Python 3 (recommended)
python3 -m http.server 8000

# Python 2 (if needed)
python -m SimpleHTTPServer 8000
```

Then visit: **http://127.0.0.1:8000** 🚀

> **Why use a web server?** Ensures proper MIME types, enables AJAX features, and mimics real hosting conditions!

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

#### 2. Update the Placeholder
Edit the template to use the correct placeholder:
```bash
# Change <!--SAMPLE--> to <!--PROJECTS-->
sed -i 's/<!--SAMPLE-->/<!--PROJECTS-->/g' projects-template.html
```

#### 3. Content Folder: `NAME/`
Create a matching directory for markdown content:
```bash
mkdir projects
echo "# My Projects" > projects/projects.md
```

#### 4. Placeholder: `<!--NAME-->`
The build script automatically replaces `<!--NAME-->` (uppercase) in your template with the content from the `NAME/` directory.

**Note**: Multiple markdown files in a subsite folder are combined in **alphabetical order** by filename.

### 🎯 Example: Creating a "Portfolio" Subsite

<div align="center">

| Step | Action | Result |
|------|--------|--------|
| 1️⃣ | `cp sample-template.html portfolio-template.html` | Template ready |
| 2️⃣ | Edit `portfolio-template.html`: change `<!--SAMPLE-->` to `<!--PORTFOLIO-->` | Placeholder updated |
| 3️⃣ | `mkdir portfolio` | Content directory |
| 4️⃣ | `echo "# My Portfolio" > portfolio/portfolio.md` | Content file |
| 5️⃣ | `./build.sh` | ✨ `portfolio.html` + menu entry |

</div>

**Complete Example:**
```bash
# 1. Copy the sample template
cp sample-template.html portfolio-template.html

# 2. Update the placeholder inside the template
sed -i 's/<!--SAMPLE-->/<!--PORTFOLIO-->/g' portfolio-template.html

# 3. Create content directory and file
mkdir portfolio
echo "# My Portfolio

Welcome to my portfolio page!" > portfolio/portfolio.md

# 4. Build the site
./build.sh
```

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

> **Create engaging content with automatic time-sorting and infinite scroll!**

Add markdown files to `blogentries/` with this format:

```markdown
# Post Title

**Date:** 2025-05-27  
**Author:** Your Name

Content here...
```

**✨ Features:**
- 🔄 **Infinite scrolling** - Readers never hit a "load more" button
- ⏰ **Auto time-sorted** - Newest posts appear first automatically  
- 📱 **Mobile responsive** - Perfect reading experience on any device

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
├── 📄 LICENSE                     # MIT License
├── 📄 README.md                   # Project documentation
├── 📄 GITHUB-SETUP.md             # GitHub setup guide
├── 📄 PROJECT-SUMMARY.md          # Project summary
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

## 📋 Todo List

- [ ] **Table of Contents** - Automatic headline tree generation for long posts
- [ ] **Post Tags** - Categorize and organize blog entries with tags
- [ ] **Entry Search** - Full-text search functionality across all blog posts  
- [ ] **Tag Search** - Find posts by filtering specific tags
- [ ] **Enhanced Sorting** - Additional sorting options similar to archive page
- [ ] **Post and Subsite Generator** - Create blog posts and subsites via script

## License

MIT License - See [LICENSE](LICENSE) file for details.

---

<div align="center">

**Made with 🥝 by [derlocke-ng](https://github.com/derlocke-ng)**

*Simple • Powerful • Extensible*

[![GitHub Stars](https://img.shields.io/github/stars/derlocke-ng/kiwi-blog?style=social)](https://github.com/derlocke-ng/kiwi-blog)
[![GitHub Forks](https://img.shields.io/github/forks/derlocke-ng/kiwi-blog?style=social)](https://github.com/derlocke-ng/kiwi-blog/fork)

</div>