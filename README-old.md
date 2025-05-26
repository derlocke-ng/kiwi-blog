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
Add Markdown files to the `blogentries/` folder:

```bash
# Create a new blog post
echo "# My New Post
This is my content..." > blogentries/my-new-post.md
```

### Custom Pages
1. Create a template: `yourpage-template.html`
2. Create content folder: `yourpage/`
3. Add content: `yourpage/yourpage.md`
4. Run `./build.sh`

### Pinned Posts
Edit `blogentries/pinned.md` to feature important content at the top of your homepage.

### Content Sorting

Kiwi Blog handles different content types with different sorting:

- **📅 Blog Entries** (`blogentries/`): Sorted by **DATE** (newest first)
  - Requires date on second line: `2025-05-26`
  - Appears on homepage and archive
  
- **📁 Custom Pages** (`*-template.html`): Sorted **ALPHABETICALLY** by filename
  - No date requirement
  - Creates separate pages
  - Multiple `.md` files combined in alphabetical order

## 🎨 Theme System

Kiwi Blog features an advanced theming system with three independent controls:

### Controls
- **🌙 Dark Mode Toggle**: Switch between light and dark themes
- **📄 Content Slider**: Customize colors for blog content and articles
- **🎨 Header/Footer Slider**: Adjust navigation and footer colors

### Features
- ✅ **Real-time Updates**: Changes apply instantly
- ✅ **Cross-page Persistence**: Settings saved in localStorage
- ✅ **Responsive Design**: Works on all devices
- ✅ **Accessibility**: Proper contrast ratios maintained
- ✅ **Kiwi-inspired Defaults**: Beautiful green and blue color scheme

## 🔧 Customization

### Adding New Templates
1. Create `newpage-template.html` following the existing template structure
2. Include the required placeholders: `{{NAVBAR}}`, `{{MAIN}}`, `{{FOOTER}}`
3. Create `newpage/` folder with `newpage.md` content
4. Run `./build.sh`

### Template Structure
```html
<!DOCTYPE html>
<html>
<head>
    <title>Your Page Title</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav>{{NAVBAR}}</nav>
    <main>{{MAIN}}</main>
    <footer>{{FOOTER}}</footer>
    <script src="theme.js"></script>
</body>
</html>
```

### CSS Variables
The theme system uses CSS custom properties for easy customization:

```css
:root {
  --content-hue: 100;        /* Content color hue (0-360) */
  --header-hue: 210;         /* Header/footer color hue (0-360) */
  --dark-mode: 0;            /* Dark mode state (0 or 1) */
}
```

## 📦 Build System

The `build.sh` script automatically:
- 🔍 Discovers all `*-template.html` files
- 📄 Generates corresponding HTML pages
- 🧭 Creates dynamic navigation menus
- 📰 Processes Markdown content
- 📌 Handles pinned posts
- 📅 Organizes blog entries by date (newest first)

### Build Process
1. Scans for template files
2. Converts Markdown to HTML
3. Injects content into templates
4. Generates navigation links
5. Creates final HTML pages

## 🌐 Deployment

### GitHub Pages
1. Push your repository to GitHub
2. Go to Settings → Pages
3. Select "Deploy from a branch"
4. Choose your main branch
5. Your site will be available at `https://yourusername.github.io/kiwi-blog`

### Manual Deployment
Simply upload the generated HTML files, CSS, and JS to any web server.

## 🎯 Browser Compatibility

- ✅ Chrome/Chromium 60+
- ✅ Firefox 55+
- ✅ Safari 12+
- ✅ Edge 79+

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

MIT License - feel free to use this project for personal or commercial purposes.

## 🐛 Issues & Support

Found a bug or need help? Please [open an issue](https://github.com/yourusername/kiwi-blog/issues) on GitHub.

---

**Made with 🥝 and ❤️**

*Kiwi Blog - A fresh take on static site generation*
