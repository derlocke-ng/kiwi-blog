# 🥝 Mastering Kiwi Blog

Here's how to actually use Kiwi Blog like a pro, with real examples from this showcase.

## The Secret: Mix HTML + Markdown

Kiwi Blog's power comes from combining Markdown simplicity with HTML flexibility.

### Example: This Gallery Grid

**The Markdown:**
````markdown
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem;">

<div style="text-align: center; padding: 1rem; background: #f5f5f5; border-radius: 8px;">
**Feature 1**  
Simple Markdown inside HTML
</div>

<div style="text-align: center; padding: 1rem; background: #f5f5f5; border-radius: 8px;">
**Feature 2**  
Code blocks work too:
```bash
./build.sh
```
</div>

</div>
````

**The Result:**

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem;">

<div style="text-align: center; padding: 1rem; background: #f5f5f5; border-radius: 8px;">
**Feature 1**  
Simple Markdown inside HTML
</div>

<div style="text-align: center; padding: 1rem; background: #f5f5f5; border-radius: 8px;">
**Feature 2**  
Code blocks work too:
```bash
./build.sh
```
</div>

</div>

## Essential Kiwi Blog Techniques

### 1. Proper Image Sizing
```markdown
<!-- Bad: Huge images -->
![Big Image](https://images.unsplash.com/photo-123456789?w=1200)

<!-- Good: Controlled size -->
<img src="https://images.unsplash.com/photo-123456789?w=300&q=80" 
     style="width: 100%; max-width: 300px; height: auto;" 
     alt="Description">
```

### 2. Code Documentation Pattern
````markdown
### Your Feature

Here's how to use it:

```language
your code here
```

**What it does**: Brief explanation  
**Why use it**: The benefit  
**Pro tip**: Extra insight
````

### 3. Status Indicators
```markdown
**Status**: ✅ Complete | 🔄 In Progress | 🚧 Coming Soon | ❌ Deprecated
```

### 4. Multi-Column Layouts
```markdown
<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 2rem;">

<div>
**Left Column**
Your content here
</div>

<div>
**Right Column**  
More content here
</div>

</div>
```

## File Organization Best Practices

### Blog Structure
```
blogentries/
├── home.md              # Homepage content
├── pinned.md            # Important announcements
├── getting-started.md   # Tutorial posts
├── project-showcase.md  # Portfolio pieces
└── random-thoughts.md   # Personal posts
```

### Custom Pages
```
showcase/
├── showcase.md          # Main showcase page
├── gallery.md           # Photo galleries
├── projects.md          # Code projects
└── tutorials.md         # How-to guides
```

## Date Format Mastery

**Critical Rule**: Always use this exact format:

```markdown
# Your Post Title

**Date:** YYYY-MM-DD
**Author:** Your Name

Content starts here...
```

**Why this matters:**
- Archive page groups by year automatically
- Posts sort chronologically 
- Build script parses dates correctly

## Advanced Markdown Tricks

### Collapsible Sections
```markdown
<details>
<summary>Click to expand</summary>

Hidden content here! Works great for:
- Long code examples
- Optional reading
- FAQ answers

</details>
```

<details>
<summary>Click to expand</summary>

Hidden content here! Works great for:
- Long code examples
- Optional reading
- FAQ answers

</details>

### Highlight Boxes
```markdown
<div style="background: #e3f2fd; padding: 1rem; border-left: 4px solid #2196f3; margin: 1rem 0;">
💡 **Pro Tip**: This creates a highlighted info box
</div>
```

<div style="background: #e3f2fd; padding: 1rem; border-left: 4px solid #2196f3; margin: 1rem 0;">
💡 **Pro Tip**: This creates a highlighted info box
</div>

### Quick Reference Cards
```markdown
| Command | Purpose | Example |
|---------|---------|---------|
| `./build.sh` | Build site | `./build.sh` |
| `git add .` | Stage changes | `git add .` |
| `git push` | Deploy | `git push origin main` |
```

| Command | Purpose | Example |
|---------|---------|---------|
| `./build.sh` | Build site | `./build.sh` |
| `git add .` | Stage changes | `git add .` |
| `git push` | Deploy | `git push origin main` |

## The Kiwi Blog Workflow

1. **Write in Markdown** - Focus on content, not formatting
2. **Add HTML when needed** - For complex layouts
3. **Test locally** - Run `./build.sh` and check `index.html`
4. **Push to GitHub** - Automatic deployment with GitHub Pages

**Remember**: Kiwi Blog is about simplicity. Don't overthink it—just write! 🥝
