# 🥝 Kiwi Blog

A lightweight, elegant static site generator that transforms Markdown files into a beautiful blog with advanced theming and automatic archive generation.

## 🌐 Live Demo

**[🔗 View Live Demo](https://derlocke-ng.github.io/kiwi-blog/)**

## ✨ Key Features

- **📝 Markdown-Based**: Write posts in simple Markdown format
- **📅 Automatic Sorting**: Chronological blog posts with yearly archives
- **🎨 Advanced Theming**: Dual-slider color system with dark mode
- **📱 Responsive Design**: Works perfectly on all devices
- **⚡ Zero Dependencies**: Pure HTML, CSS, and vanilla JavaScript
- **🚀 Easy Deployment**: Perfect for GitHub Pages

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/derlocke-ng/kiwi-blog.git
cd kiwi-blog
```

### 2. Make Build Script Executable
```bash
chmod +x build.sh
```

### 3. Build Your Site
```bash
./build.sh
```

### 4. Open in Browser
Open `index.html` in your web browser to see your site!

## 📁 Project Structure

```
kiwi-blog/
├── 📂 blogentries/           # Your blog posts (Markdown files)
│   ├── home.md              # Homepage content
│   ├── pinned.md            # Pinned post (always appears first)
│   └── *.md                 # Your blog posts
├── 📂 showcase/             # Portfolio/showcase content
├── 📂 sample/               # Sample custom page content
├── 🎨 Templates
│   ├── template.html        # Main blog template
│   ├── archive-template.html # Archive page template
│   ├── showcase-template.html # Portfolio template
│   └── sample-template.html  # Custom page template
├── 🎯 Generated Files (auto-created by build.sh)
│   ├── index.html           # Main blog page
│   ├── archive.html         # Yearly archive page
│   ├── showcase.html        # Portfolio page
│   └── sample.html          # Sample page
├── 🎨 Styling & Scripts
│   ├── style.css            # Main stylesheet
│   └── theme.js             # Theme system
└── ⚙️ build.sh              # Build script
```

## 📝 Writing Blog Posts

### Required Format

**CRITICAL**: Every blog post MUST follow this exact format for proper sorting:

```markdown
# Your Post Title

**Date:** YYYY-MM-DD
**Author:** Your Name

Your content goes here...
```

### Example Blog Post

Create `blogentries/my-new-post.md`:

```markdown
# My Awesome Blog Post

**Date:** 2025-05-27
**Author:** derlocke-ng

Welcome to my blog! This post is written in **Markdown** and will be automatically sorted by date.

## Features I Love

- Automatic chronological sorting
- Beautiful responsive design
- Code syntax highlighting
- Easy Markdown writing

```python
def hello_kiwi():
    print("Hello from Kiwi Blog!")
```

That's it! Run `./build.sh` to update your site.
```

### Important Notes

- **Date Format**: Must be `**Date:** YYYY-MM-DD` (exactly as shown)
- **Author Format**: Must be `**Author:** Name` (exactly as shown)
- **Sorting**: Posts are sorted chronologically (newest first)
- **Archive**: Posts are automatically grouped by year in `/archive.html`

## 🎨 Theme System

Kiwi Blog features a powerful dual-slider theming system:

### Theme Controls
- **🌙 Dark Mode Toggle**: Switch between light and dark themes
- **📄 Content Slider**: Customize blog content colors (HSL hue 0-360)
- **🎨 Header/Footer Slider**: Adjust navigation and footer colors (HSL hue 0-360)

### Features
- ✅ **Real-time Preview**: Changes apply instantly
- ✅ **Persistent Settings**: Saved using localStorage
- ✅ **Mobile Friendly**: Touch-optimized sliders
- ✅ **Accessibility**: Maintains proper contrast ratios

## 🔧 Advanced Features

### Custom Pages
Create additional pages by:
1. Creating `newpage-template.html`
2. Adding content in `newpage/content.md`
3. Running `./build.sh`

### Pinned Posts
Edit `blogentries/pinned.md` to feature important content at the top of your blog.

### Portfolio/Showcase
The `showcase/` folder contains portfolio content that appears on `/showcase.html`.

## ⚙️ Build System

The `build.sh` script automatically:
1. Processes all Markdown files in `blogentries/`
2. Sorts posts chronologically by date
3. Groups posts by year for the archive
4. Generates navigation menus
5. Creates all HTML pages from templates
6. Adds syntax highlighting to code blocks

### Build Requirements
- **Pandoc**: For Markdown to HTML conversion
- **Bash**: For running the build script

### Installing Pandoc
```bash
# Ubuntu/Debian
sudo apt install pandoc

# macOS
brew install pandoc

# Windows (using Chocolatey)
choco install pandoc
```

## 🌐 Deployment

### GitHub Pages (Recommended)

1. **Push to GitHub**:
   ```bash
   git add .
   git commit -m "Update blog"
   git push origin main
   ```

2. **Enable GitHub Pages**:
   - Go to your repository's Settings → Pages
   - Select "Deploy from a branch"
   - Choose "main" branch and "/" (root) folder
   - Your site will be live at `https://yourusername.github.io/kiwi-blog`

### Other Hosting Options

Upload these files to any web hosting service:
- All `.html` files
- `style.css`
- `theme.js`
- Optional: `favicon.svg`

## 🛠️ Development Workflow

### Daily Workflow
1. **Create new post**: Add Markdown file to `blogentries/`
2. **Build**: Run `./build.sh`
3. **Preview**: Open `index.html` in browser
4. **Deploy**: Push to GitHub (if using GitHub Pages)

### Local Development
```bash
# Edit content
vim blogentries/my-new-post.md

# Rebuild site
./build.sh

# Test locally
open index.html
```

## 🐛 Troubleshooting

### Common Issues

**Build script fails**:
- Install Pandoc: `sudo apt install pandoc` (Ubuntu) or `brew install pandoc` (macOS)
- Make script executable: `chmod +x build.sh`

**Posts not sorting correctly**:
- Check date format is exactly: `**Date:** YYYY-MM-DD`
- Ensure there's a space after the colon
- Verify date is on the second line after the title

**Themes not saving**:
- Enable JavaScript in your browser
- Check browser localStorage support

## 💡 Tips & Best Practices

### Content Organization
- Use descriptive filenames: `fixing-css-bugs.md` instead of `post1.md`
- Keep consistent author names across posts
- Use proper Markdown formatting for better SEO

### Performance
- Optimize images before adding them to posts
- Keep individual posts under 5MB for fast loading
- Use relative links within your blog

## 📚 Resources

- **Markdown Guide**: [markdownguide.org](https://markdownguide.org)
- **Pandoc Documentation**: [pandoc.org](https://pandoc.org)
- **GitHub Pages**: [pages.github.com](https://pages.github.com)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes and test thoroughly
4. Submit a pull request with a clear description

## 📄 License

MIT License - see LICENSE file for details.

## 🔗 Links

- **[Live Demo](https://derlocke-ng.github.io/kiwi-blog/)**
- **[GitHub Repository](https://github.com/derlocke-ng/kiwi-blog)**
- **[Issues & Support](https://github.com/derlocke-ng/kiwi-blog/issues)**

---

**Made with 🥝 by the Kiwi Blog community**

*Simple, fast, and beautifully customizable static site generation.*
