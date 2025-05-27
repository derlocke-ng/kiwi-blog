# Sample Custom Page


Welcome to the **Sample Page**! This demonstrates how Kiwi Blog's custom page system works.

## 🎯 What This Demonstrates

This page shows you how to:

- ✅ Create custom pages beyond the main blog
- ✅ Use template-based page generation
- ✅ Organize content in subfolders
- ✅ Get automatic navigation integration

## 🔧 How Custom Pages Work

### 1. The NAME Pattern
Kiwi Blog uses a simple three-part naming pattern:

- **Template File**: `NAME-template.html` (e.g., `sample-template.html`)
- **Content Folder**: `NAME/` directory (e.g., `sample/`)
- **Placeholder**: `<!--NAME-->` in template (e.g., `<!--SAMPLE-->` - always uppercase)

### 2. Template System
Each custom page needs two components:
- **Template**: `pagename-template.html` (defines the layout)
- **Content**: `pagename/` folder with `.md` files (your content)

### 3. Build Process
When you run `./build.sh`:
1. Scans for all `*-template.html` files
2. Finds matching content folders
3. Converts Markdown to HTML
4. Generates the final page
5. Updates navigation automatically

### 4. This Page Example
- **Template**: `sample-template.html`
- **Content**: `sample/sample.md` (this file!)
- **Placeholder**: `<!--SAMPLE-->` in the template
- **Output**: `sample.html`
- **Navigation**: Auto-added to menu

## 🚀 Creating Your Own Page

### Quick Setup
```bash
# 1. Copy the template
cp sample-template.html mypage-template.html

# 2. Create content folder
mkdir mypage

# 3. Add your content
echo "# My Custom Page
2025-05-26
Your amazing content here!" > mypage/mypage.md

# 4. Build the site
./build.sh
```

**Remember**: The build script will look for `<!--MYPAGE-->` placeholder in `mypage-template.html` and replace it with content from the `mypage/` folder.

### Page Ideas

- **Portfolio**: Showcase your projects
- **About**: Tell your story
- **Contact**: Share your contact info
- **Gallery**: Display photos or artwork
- **Documentation**: Technical guides
- **Resources**: Useful links and tools

## 📝 Content Tips

### Multiple Files
You can have multiple `.md` files in your content folder:
```
mypage/
├── intro.md
├── projects.md
└── contact.md
```

**Important**: Files are combined in **alphabetical order** by filename (unlike blog entries which are time-sorted by date).

All files will be combined into one page in alphabetical order.

### Markdown Features
Use all standard Markdown features:

- **Headers** for structure
- **Lists** for organization
- **Links** for navigation
- **Code blocks** for examples
- **Images** for visual content
- **Blockquotes** for emphasis

> **Pro Tip**: Keep your custom pages focused on specific topics for better user experience!

## 🎨 Customization

### Template Modification
Edit your `*-template.html` file to:

- Change the layout
- Add custom CSS
- Include JavaScript
- Modify the structure

### Styling
All pages inherit the main theme system:

- Dual-slider color customization
- Dark mode support
- Responsive design
- Consistent styling

## 🔗 Navigation Integration

Custom pages automatically appear in:

- **Main navigation menu** (top of every page)
- **Footer links** (bottom of every page)
- **Clean URLs** (e.g., `/sample.html`)

The navigation uses the filename as the title (e.g., `sample` becomes "Sample").

---

## ✨ Summary

This sample page demonstrates Kiwi Blog's powerful custom page system. You can create unlimited pages for any purpose while maintaining consistent design and automatic navigation.

**Ready to create your own custom page?** Follow the steps above and start building!

---

*Generated from `sample/sample.md` using the Kiwi Blog build system* 🥝
