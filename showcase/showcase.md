# 🎨 Art & Picture Gallery Tutorial

Learn how to create beautiful image galleries in Kiwi Blog with proper sizing and responsive layouts.

---

## 🖼️ Working Examples

### Two Beautiful Images

<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center; margin: 2rem 0;">
  <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Mountain Vista">
  <img src="https://images.unsplash.com/photo-1541701494587-cb58502866ab?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Abstract Colors">
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

## 🎯 Pro Tips

- **Image sizing**: Use `?w=400&q=80` for crisp, fast-loading images
- **Responsive grids**: `minmax(250px, 1fr)` adapts to any screen size  
- **Consistent heights**: Fixed height like `250px` creates uniform galleries
- **Modern styling**: `border-radius: 8px` and `object-fit: cover` for polished look

Now you can create stunning photo galleries that work perfectly on desktop and mobile!
