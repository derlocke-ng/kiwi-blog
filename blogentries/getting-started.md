# Getting Started with Kiwi Blog
2025-05-26

Welcome to your new **Kiwi Blog**! This static site generator makes it easy to create and maintain a beautiful blog using simple Markdown files. Let's learn how to use Kiwi Blog and create amazing posts with Markdown.

## 🚀 How Kiwi Blog Works

Kiwi Blog converts your Markdown files into a beautiful website in 3 simple steps:

1. **Write**: Create `.md` files in the `blogentries/` folder
2. **Build**: Run `./build.sh` to generate your site  
3. **Deploy**: Upload the generated HTML files anywhere

## 📁 Your First Blog Post

Create a new file in `blogentries/` called `my-first-post.md`:

```markdown
# My Amazing First Post
2025-05-26

Welcome to my blog! This is my first post using **Kiwi Blog**.

I'm excited to start sharing my thoughts and ideas here.

## What I'll Write About

- Technology and coding
- My learning journey  
- Helpful tutorials
- Personal experiences

Stay tuned for more content!
```

Then run `./build.sh` and your post will appear on your blog!

## 📝 Text Formatting with Markdown

Here's how to format text in your posts:

### Bold and Italic Text
```markdown
**Bold text** using double asterisks
*Italic text* using single asterisks  
***Bold and italic*** using triple asterisks
~~Strikethrough~~ using double tildes
```

**Result:**

- **Bold text** using double asterisks
- *Italic text* using single asterisks  
- ***Bold and italic*** using triple asterisks
- ~~Strikethrough~~ using double tildes

### Links
```markdown
[Visit GitHub](https://github.com)
[Check out the sample page](sample.html)
```

**Result:**

- [Visit GitHub](https://github.com)
- [Check out the sample page](sample.html)

### Inline Code
```markdown
Use `backticks` for inline code like `./build.sh`
```

**Result:** 

Use `backticks` for inline code like `./build.sh`

## Lists and Organization

### Ordered Lists
```markdown
1. Write your content in Markdown
2. Run the build script  
3. Deploy to any web server
4. Enjoy your new blog!
```

**Result:**

1. Write your content in Markdown
2. Run the build script  
3. Deploy to any web server
4. Enjoy your new blog!

### Unordered Lists
```markdown
- 🚀 **Simple Setup**: Just write Markdown files and run the build script
- 🎨 **Advanced Theming**: Dual-slider color customization with dark mode
- 📱 **Mobile Friendly**: Responsive design that works everywhere
- ⚡ **Lightning Fast**: Static HTML with no server requirements
```

**Result:**

- 🚀 **Simple Setup**: Just write Markdown files and run the build script
- 🎨 **Advanced Theming**: Dual-slider color customization with dark mode  
- 📱 **Mobile Friendly**: Responsive design that works everywhere
- ⚡ **Lightning Fast**: Static HTML with no server requirements

### Task Lists
```markdown
- [x] Create blog content
- [x] Customize theme colors
- [ ] Add your own images
- [ ] Share with the world
```

**Result:**

- [x] Create blog content
- [x] Customize theme colors
- [ ] Add your own images
- [ ] Share with the world

## Tables

```markdown
| Feature | Description | Status |
|---------|-------------|--------|
| Markdown Support | Full CommonMark compatibility | ✅ |
| Theme System | Dual-slider color customization | ✅ |
| Dark Mode | Automatic dark/light toggle | ✅ |
| Mobile Design | Responsive layout | ✅ |
| Custom Pages | Template-based page system | ✅ |
```

**Result:**

| Feature | Description | Status |
|---------|-------------|--------|
| Markdown Support | Full CommonMark compatibility | ✅ |
| Theme System | Dual-slider color customization | ✅ |
| Dark Mode | Automatic dark/light toggle | ✅ |
| Mobile Design | Responsive layout | ✅ |
| Custom Pages | Template-based page system | ✅ |

## Code Blocks

### Inline Code
```markdown
Run `./build.sh` to build your site
```

**Result:** 

Run `./build.sh` to build your site

### Code Blocks with Syntax Highlighting
````markdown
```bash
#!/bin/bash
echo "Building your Kiwi Blog..."
./build.sh
echo "Done! Your blog is ready."
```
````

**Result:**

```bash
#!/bin/bash
echo "Building your Kiwi Blog..."
./build.sh
echo "Done! Your blog is ready."
```

## Images and Media

```markdown
![Kiwi fruit](https://example.com/kiwi.jpg)
```

For videos, you can use HTML directly in Markdown:

```html
<video controls width="100%">
    <source src="your-video.mp4" type="video/mp4">
    Your browser doesn't support video playback.
</video>
```

## Blockquotes

```markdown
> "The best blogs are those that share knowledge and inspire others."
> 
> — A wise blogger
```

**Result:**

> "The best blogs are those that share knowledge and inspire others."
> 
> — A wise blogger

## Headings

```markdown
# Main Title (H1)
## Section Heading (H2)  
### Subsection (H3)
#### Sub-subsection (H4)
```

**Result:**

# Main Title (H1)
## Section Heading (H2)  
### Subsection (H3)
#### Sub-subsection (H4)

## Horizontal Rules

```markdown
---
```

**Result:**

---

## 🔨 Building Your Blog

Once you've written your posts, build your blog:

```bash
./build.sh
```

This will:
- Convert all Markdown files in `blogentries/` to HTML
- Sort posts by date (newest first)
- Generate navigation menus
- Create the archive page
- Process any custom pages

## 📂 File Structure

Your Kiwi Blog should look like this:

```
kiwi-blog/
├── blogentries/           # Your blog posts (Markdown files)
│   ├── home.md           # Homepage content
│   ├── pinned.md         # Featured/pinned post
│   ├── getting-started.md # This guide
│   └── your-posts.md     # Your blog entries
├── build.sh              # Build script
├── template.html         # Main page template
├── style.css             # Styling
├── theme.js              # Theme system
└── index.html            # Generated homepage (after building)
```

## Your Next Steps

1. **Create Your First Post**: Add a new `.md` file in `blogentries/`
2. **Customize Theme Colors**: Use the sliders in the header to adjust colors
3. **Build Your Site**: Run `./build.sh` to generate HTML files
4. **Preview Your Blog**: Open `index.html` in your browser
5. **Deploy**: Upload files to any web host (no server needed!)

## 🎨 Special Features

### Pinned Posts
Edit `blogentries/pinned.md` to feature important content at the top of your blog.

### Archive System
Kiwi Blog automatically creates an archive page organizing your posts by date.

### Custom Pages
Want to create pages beyond your blog? Check out the [sample page](sample.html) to learn about the template system for custom pages.

## 📝 Content Tips

### Blog Entries vs Custom Pages

Kiwi Blog handles two types of content differently:

**📅 Blog Entries** (in `blogentries/`):

- Sorted by **DATE** (newest first)
- Require date on second line: `2025-05-26`
- Appear on homepage and archive
- Example: `my-post.md`, `travel-blog.md`

**📁 Custom Pages** (with `*-template.html`):

- Sorted **ALPHABETICALLY** by filename
- No date requirement
- Create separate pages
- Example: `about/`, `portfolio/`, `contact/`

### Multiple Files in Custom Pages

You can have multiple `.md` files in your custom page folder:

```
mypage/
├── intro.md         # Appears first (alphabetical)
├── projects.md      # Appears second
└── contact.md       # Appears third
```

All files will be combined into one page in **alphabetical order** by filename.

### Theme Customization
Use the color sliders in the header to customize your blog's appearance. Toggle dark mode with the moon button.

## 💡 Pro Tips

1. **Date Format**: Always use YYYY-MM-DD format for post dates
2. **File Names**: Use descriptive filenames like `my-coding-journey.md`
3. **Headings**: Use `#` for post titles, `##` for main sections
4. **Preview Often**: Build and preview your changes frequently
5. **Keep It Simple**: Markdown is powerful because it's simple

---

**Ready to start blogging?** Create your first post in `blogentries/` and run `./build.sh`!

Happy blogging! 🥝✨
