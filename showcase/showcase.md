# 🥝 Kiwi Blog Showcase: Real Examples & How-Tos

Welcome! This page is a living demo of what you can do with Kiwi Blog. Each section shows:
- The actual Markdown/HTML used
- The real result as rendered by Kiwi Blog
- Tips for making your own content

---

## 🎨 1. Build an Art Gallery (with Markdown+HTML)

**How to do it:**
```markdown
## 🖼️ My Art Collection
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 1rem; margin: 2rem 0;">
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1541701494587-cb58502866ab?w=300&q=80" style="width: 100%; height: 160px; object-fit: cover; border-radius: 8px;" alt="Abstract Art">
    <p><em>Abstract Colors</em><br>Digital Art, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=300&q=80" style="width: 100%; height: 160px; object-fit: cover; border-radius: 8px;" alt="Mountain Landscape">
    <p><em>Mountain Vista</em><br>Photography, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=300&q=80" style="width: 100%; height: 160px; object-fit: cover; border-radius: 8px;" alt="Architecture">
    <p><em>Urban Lines</em><br>Architecture, 2024</p>
  </div>
</div>
```

**Result:**
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 1rem; margin: 2rem 0;">
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1541701494587-cb58502866ab?w=300&q=80" style="width: 100%; height: 160px; object-fit: cover; border-radius: 8px;" alt="Abstract Art">
    <p><em>Abstract Colors</em><br>Digital Art, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=300&q=80" style="width: 100%; height: 160px; object-fit: cover; border-radius: 8px;" alt="Mountain Landscape">
    <p><em>Mountain Vista</em><br>Photography, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=300&q=80" style="width: 100%; height: 160px; object-fit: cover; border-radius: 8px;" alt="Architecture">
    <p><em>Urban Lines</em><br>Architecture, 2024</p>
  </div>
</div>

**Tips:**
- Use Unsplash or your own images, keep them ~300px wide
- Use a grid for responsive layout
- Mix Markdown and HTML for best results

---

## 🚀 2. Project/Portfolio Showcase (with code snippets)

**How to do it:**
```markdown
### Kiwi Blog
**Tech**: Bash, HTML, CSS, JS  
**Status**: ✅ Live

```bash
git clone https://github.com/derlocke-ng/kiwi-blog.git
cd kiwi-blog
chmod +x build.sh
./build.sh
```
[🔗 Repo](https://github.com/derlocke-ng/kiwi-blog) | [🌐 Demo](https://derlocke-ng.github.io/kiwi-blog/)
```

**Result:**
### Kiwi Blog
**Tech**: Bash, HTML, CSS, JS  
**Status**: ✅ Live

```bash
git clone https://github.com/derlocke-ng/kiwi-blog.git
cd kiwi-blog
chmod +x build.sh
./build.sh
```
[🔗 Repo](https://github.com/derlocke-ng/kiwi-blog) | [🌐 Demo](https://derlocke-ng.github.io/kiwi-blog/)

---

## 🤖 3. Weird Programming Tricks (and how to explain them)

**How to do it:**
````markdown
### One-Liner File Server
```bash
python3 -m http.server 8000
```
**What**: Serves current dir on localhost:8000  
**Why**: Fast, no config  
**Use**: Share/test static files
````

**Result:**
### One-Liner File Server
```bash
python3 -m http.server 8000
```
**What**: Serves current dir on localhost:8000  
**Why**: Fast, no config  
**Use**: Share/test static files

---

## 📝 4. Markdown Mastery (Kiwi Blog power user tips)

- Use `<div style=...>` for custom layouts
- Always use `**Date:** YYYY-MM-DD` and `**Author:** Name` at the top of posts
- Use code blocks for commands, configs, and code
- Use tables, checklists, and collapsible sections for advanced docs

**Example collapsible:**
```markdown
<details>
<summary>Click to expand</summary>

Hidden content here!

</details>
```
<details>
<summary>Click to expand</summary>

Hidden content here!

</details>

---

**Want more?**
- See the README for a full guide
- Explore the other showcase pages for more advanced tricks
