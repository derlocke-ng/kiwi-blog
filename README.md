# 🥝 Kiwi Blog

A lightweight, modern static site generator for beautiful blogs, portfolios, and documentation sites. Write in Markdown, build with a simple bash script, deploy anywhere.

![Kiwi Blog](https://img.shields.io/badge/Kiwi-Blog-brightgreen)
![Static Site Generator](https://img.shields.io/badge/Static-Site%20Generator-blue)
![Markdown](https://img.shields.io/badge/Markdown-Powered-orange)
![MIT License](https://img.shields.io/badge/License-MIT-yellow)

## ✨ Features

- **💨 Lightweight & Fast**: No JavaScript frameworks, just pure HTML/CSS/JS
- **📱 Responsive Design**: Mobile-friendly layouts that work on all devices
- **🎨 Advanced Theming**: Dual-slider color customization with dark mode toggle
- **📊 Archive System**: Automatic yearly archives for your content
- **📌 Pinned Posts**: Feature important content at the top of your homepage
- **🧩 Custom Pages**: Create portfolios, project showcases, or documentation
- **🔄 Simple Workflow**: Write Markdown → Run build script → Deploy anywhere

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/yourusername/kiwi-blog.git
cd kiwi-blog

# Make the build script executable
chmod +x build.sh

# Build the site
./build.sh

# Open in browser
# On Linux:
xdg-open index.html
# On macOS:
open index.html
# On Windows:
start index.html
```

## 📁 Project Structure

```
kiwi-blog/
├── blogentries/          # Blog posts in Markdown format
│   ├── home.md           # Homepage content
│   ├── pinned.md         # Featured/pinned content
│   └── *.md              # Your blog posts
├── sample/               # Custom pages content
│   └── *.md              # Your custom pages
├── build.sh              # Build script
├── template.html         # Main page template
├── *-template.html       # Templates for different page types
├── style.css             # Main stylesheet
├── theme.js              # Theme controller
├── index.html            # Generated homepage
└── *.html                # Other generated pages
```

## 📝 Creating Content

### Blog Posts

Create a new Markdown file in the `blogentries/` directory with this required format:

```markdown
# Your Post Title

**Date:** YYYY-MM-DD  
**Author:** Your Name

Your content here...
```

> ⚠️ **IMPORTANT**: The `**Date:**` and `**Author:**` format is required for proper sorting and archiving!

### Custom Pages

Create a directory for your custom page type and add Markdown files:

```bash
mkdir portfolio
echo "# My Portfolio

**Date:** $(date +%Y-%m-%d)  
**Author:** Your Name

My amazing portfolio content..." > portfolio/portfolio.md

cp sample-template.html portfolio-template.html
```

Then build your site with `./build.sh`.

## 🎨 Markdown & Styling Guide

### Basic Formatting

```markdown
# Heading 1
## Heading 2
### Heading 3

**Bold text** and *italic text*

[Link text](https://example.com)

![Image alt text](image-url.jpg)

> Blockquote text

- Bullet point 1
- Bullet point 2

1. Numbered item 1
2. Numbered item 2

---

Code block:
```bash
echo "Hello, world!"
```
```

### Advanced Styling with HTML & CSS

You can mix HTML and CSS with your Markdown for advanced layouts:

```markdown
<div style="display: flex; gap: 1rem; flex-wrap: wrap;">
  <div style="flex: 1 1 300px; padding: 1rem; border-radius: 8px; background: var(--card-bg);">
    
    ## Card Title
    
    Card content with **Markdown** formatting
    
  </div>
  <div style="flex: 1 1 300px; padding: 1rem; border-radius: 8px; background: var(--card-bg);">
    
    ## Another Card
    
    More content here
    
  </div>
</div>
```

For image galleries, flexbox layouts work great:

```markdown
<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center;">
  <img src="image1.jpg" style="width: 300px; height: 200px; object-fit: cover; border-radius: 8px;">
  <img src="image2.jpg" style="width: 300px; height: 200px; object-fit: cover; border-radius: 8px;">
  <img src="image3.jpg" style="width: 300px; height: 200px; object-fit: cover; border-radius: 8px;">
</div>
```

## 🌐 Deployment Options

### GitHub Pages (Recommended)

1. Push your repository to GitHub
2. Go to your repository settings
3. Navigate to "Pages" section
4. Select "Deploy from a branch"
5. Choose "main" branch and "/" (root) folder
6. Your site will be live at `https://yourusername.github.io/kiwi-blog`

### Other Hosting Options

- **Netlify**: Connect your GitHub repo for automatic deployment
- **Vercel**: Similar to Netlify with automatic deployments
- **Amazon S3**: Host static files with optional CloudFront CDN
- **Any Web Server**: Upload files to any hosting service that supports static sites

## 🔧 Requirements

- **Pandoc**: For converting Markdown to HTML
  ```bash
  # Install on Ubuntu/Debian
  sudo apt-get install pandoc
  
  # Install on macOS
  brew install pandoc
  
  # Install on Windows
  choco install pandoc
  ```
- **Bash**: For running the build script (pre-installed on most systems)

## 🛠️ Customization

### Theming

The theme system uses CSS variables and can be customized in `style.css`:

```css
:root {
  --content-hue: 160;        /* Base hue for content area */
  --header-hue: 200;         /* Base hue for header/footer */
  --content-saturation: 30%; /* Saturation for content colors */
  --header-saturation: 40%;  /* Saturation for header/footer */
  /* ... other variables ... */
}
```

### Templates

Customize the page templates in `*-template.html` files. Look for placeholder tags like:

- `{{CONTENT}}`: Where page content is inserted
- `{{TITLE}}`: Page title
- `{{DATE}}`: Publication date
- `{{AUTHOR}}`: Content author

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📃 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- **Pandoc**: For the excellent Markdown conversion
- **GitHub**: For hosting and collaboration tools
- **Open Source Community**: For inspiration and resources

---

**Made with 🥝 by Kiwi Blog contributors**

*Need help? Check out the [Getting Started Guide](blogentries/getting-started.md) or create an issue on GitHub!*
