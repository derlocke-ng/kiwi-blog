# 🎨 Gallery & Media Showcase

Create stunning galleries, embed videos, and build beautiful visual content with Kiwi Blog.

---

## 🖼️ Photo Gallery Examples

### Landscape Collection

<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center; margin: 2rem 0;">
  <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Mountain Vista">
  <img src="https://images.unsplash.com/photo-1541701494587-cb58502866ab?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Abstract Colors">
</div>

### Art & Architecture Grid

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; margin: 2rem 0;">
  <img src="https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=400&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Modern Architecture">
  <img src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=400&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Nature Abstract">
  <img src="https://images.unsplash.com/photo-1518837695005-2083093ee35b?w=400&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Ocean Waves">
  <img src="https://images.unsplash.com/photo-1551033406-611cf9a28f54?w=400&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Forest Path">
</div>

### Featured Image with Caption

<div style="text-align: center; margin: 2rem 0;">
  <img src="https://images.unsplash.com/photo-1469474968028-56623f02e42e?w=800&q=85" style="width: 100%; max-width: 600px; height: 400px; object-fit: cover; border-radius: 12px;" alt="Starry Night">
  <p style="margin-top: 1rem; font-style: italic; color: #666;">✨ <em>Starry Night Over the Lake</em> - A moment of perfect tranquility</p>
</div>

---

## 🎥 Video Integration

### YouTube Embed

<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; margin: 2rem 0;">
  <iframe src="https://www.youtube.com/embed/dQw4w9WgXcQ" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: none; border-radius: 8px;" allowfullscreen></iframe>
</div>

### Side-by-Side: Image + Video

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 2rem; margin: 2rem 0; align-items: center;">
  <div>
    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=500&q=80" style="width: 100%; height: 250px; object-fit: cover; border-radius: 8px;" alt="Mountain Landscape">
    <p style="margin-top: 0.5rem; text-align: center; font-size: 0.9em; color: #666;"><em>Majestic Peaks</em></p>
  </div>
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden;">
    <iframe src="https://www.youtube.com/embed/ZXsQAXx_ao0" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: none; border-radius: 8px;" allowfullscreen></iframe>
  </div>
</div>

---

## 📋 Copy This Code

**Photo Grid (3+ images):**
```html
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; margin: 2rem 0;">
  <img src="YOUR_IMAGE_URL?w=400&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
  <img src="YOUR_IMAGE_URL?w=400&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
  <img src="YOUR_IMAGE_URL?w=400&q=80" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
</div>
```

**Two Images Side-by-Side:**
```html
<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center; margin: 2rem 0;">
  <img src="YOUR_IMAGE_URL?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
  <img src="YOUR_IMAGE_URL?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
</div>
```

**Featured Image with Caption:**
```html
<div style="text-align: center; margin: 2rem 0;">
  <img src="YOUR_IMAGE_URL?w=800&q=85" style="width: 100%; max-width: 600px; height: 400px; object-fit: cover; border-radius: 12px;" alt="Your Alt Text">
  <p style="margin-top: 1rem; font-style: italic; color: #666;">✨ <em>Your Caption</em> - Your description</p>
</div>
```

**YouTube Video Embed:**
```html
<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; margin: 2rem 0;">
  <iframe src="https://www.youtube.com/embed/YOUR_VIDEO_ID" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: none; border-radius: 8px;" allowfullscreen></iframe>
</div>
```

**Image + Video Side-by-Side:**
```html
<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 2rem; margin: 2rem 0; align-items: center;">
  <div>
    <img src="YOUR_IMAGE_URL?w=500&q=80" style="width: 100%; height: 250px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
    <p style="margin-top: 0.5rem; text-align: center; font-size: 0.9em; color: #666;"><em>Your Caption</em></p>
  </div>
  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden;">
    <iframe src="https://www.youtube.com/embed/YOUR_VIDEO_ID" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: none; border-radius: 8px;" allowfullscreen></iframe>
  </div>
</div>
```

---

## 🎯 How to Use

**Get YouTube Video ID:**
1. Go to any YouTube video
2. Copy the URL: `https://www.youtube.com/watch?v=dQw4w9WgXcQ`
3. Extract the ID after `v=`: `dQw4w9WgXcQ`
4. Use in embed: `https://www.youtube.com/embed/dQw4w9WgXcQ`

**Image Sizing Tips:**
- **Small images**: `?w=300&q=80` (300px wide, 80% quality)
- **Medium images**: `?w=400&q=80` (400px wide, 80% quality)  
- **Large images**: `?w=800&q=85` (800px wide, 85% quality)
- **Grid heights**: Use fixed heights like `200px` for uniform rows
- **Responsive**: Use `width: 100%` with `max-width` for flexible sizing

**Pro Styling:**
- `object-fit: cover` crops images to fit without stretching
- `border-radius: 8px` adds modern rounded corners
- `gap: 1rem` creates consistent spacing between items
- `margin: 2rem 0` adds space above and below galleries
