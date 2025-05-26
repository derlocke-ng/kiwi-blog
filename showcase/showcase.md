# 🎨 Art & Picture Gallery Tutorial

This page shows how to create beautiful image galleries in Kiwi Blog.

---

## 🖼️ Simple Gallery Examples

### Example 1: Grid Layout

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1rem; margin: 2rem 0;">
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1541701494587-cb58502866ab?w=300&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Abstract Art">
    <p><em>Abstract Colors</em><br>Digital Art, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=300&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Mountain Landscape">
    <p><em>Mountain Vista</em><br>Photography, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=300&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Architecture">
    <p><em>Urban Lines</em><br>Architecture, 2024</p>
  </div>
</div>

### Example 2: Simple Row

<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center; margin: 2rem 0;">
  <img src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=300&q=80" style="width: 280px; height: 200px; object-fit: cover; border-radius: 8px;" alt="Nature">
  <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=300&q=80" style="width: 280px; height: 200px; object-fit: cover; border-radius: 8px;" alt="Mountains">
</div>

---

## 📋 Copy This Code

**Grid Gallery (3+ images):**
```html
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1rem; margin: 2rem 0;">
  <div style="text-align: center;">
    <img src="YOUR_IMAGE_URL?w=300&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
    <p><em>Your Title</em><br>Your Description</p>
  </div>
</div>
```

**Simple Row (1-2 images):**
```html
<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center; margin: 2rem 0;">
  <img src="YOUR_IMAGE_URL?w=300&q=80" style="width: 280px; height: 200px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
</div>
```

---

## 🎯 Key Rules

1. **Image URLs**: Add `?w=300&q=80` for proper sizing
2. **Grid**: Use `minmax(250px, 1fr)` for responsive columns  
3. **Height**: Set fixed `height: 200px` for uniform rows
4. **object-fit**: Use `cover` to crop nicely without stretching
5. **Border**: Add `border-radius: 8px` for modern look

That's it! Replace the URLs and text with your own content.
