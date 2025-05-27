# 🚀 GitHub Setup Instructions

## Quick Setup for GitHub

### 1. Initialize Git Repository
```bash
cd kiwi-blog
git init
git add .
git commit -m "feat: initial Kiwi Blog setup"
```

### 2. Create GitHub Repository
1. Go to [GitHub.com](https://github.com) and create a new repository
2. Name it `kiwi-blog` (or your preferred name)
3. Don't initialize with README (we already have one)
4. Copy the repository URL

### 3. Connect and Push
```bash
git remote add origin https://github.com/yourusername/kiwi-blog.git
git branch -M main
git push -u origin main
```

### 4. Enable GitHub Pages (Recommended for Demo)
1. Go to your repository settings
2. Navigate to "Pages" section
3. Select "Deploy from a branch"
4. Choose "main" branch and "/" (root) folder
5. Your site will be live at `https://yourusername.github.io/kiwi-blog`
6. ⭐ **Add this URL as your repository's website URL in the "About" section**

## Repository Structure

The repository includes:
- ✅ Complete source code and templates
- ✅ Example content and blog posts  
- ✅ Comprehensive README.md with live demo
- ✅ MIT License
- ✅ Generated HTML files (ready for deployment)
- ✅ Build script for easy regeneration

### Essential Files
- `build.sh` - Main build script
- `template.html` - Homepage template
- `style.css` - Responsive styling with dark/light themes
- `theme.js` - Theme switching functionality
- `blogentries/` - Blog posts in Markdown
- `sample/`, `showcase/` - Example custom pages

## 🌐 GitHub Pages Hosting

GitHub Pages provides free hosting for your Kiwi Blog:

### Automatic Deployment
- Every push to the `main` branch automatically updates your live site
- No build process needed on GitHub (HTML files are pre-generated)
- Custom domain support available

### Benefits
- ✅ Free hosting
- ✅ HTTPS by default
- ✅ Global CDN
- ✅ Perfect for portfolios and project demonstrations

## Recommended Repository Settings

### Description
```
A beautifully simple static site generator with infinite blog scrolling and effortless custom page creation
```

### Topics/Tags
```
static-site-generator, markdown, blog, infinite-scroll, responsive-design, bash, pandoc, github-pages
```

### Features to Enable
- ✅ Issues (for bug reports and feature requests)
- ✅ Wiki (for extended documentation)  
- ✅ Discussions (for community support)

## 🔧 Troubleshooting

### GitHub Pages Not Loading?
1. Check that `index.html` exists in your repository root
2. Ensure Pages is set to deploy from `main` branch `/` (root)
3. Wait 5-10 minutes for initial deployment
4. Check repository Settings > Pages for deployment status

### Build Issues?
1. Make sure `pandoc` is installed: `sudo apt-get install pandoc`
2. Check that `build.sh` has execute permissions: `chmod +x build.sh`
3. Run `./build.sh` locally to test before pushing

---

Your Kiwi Blog is now ready for the world! 🌍
