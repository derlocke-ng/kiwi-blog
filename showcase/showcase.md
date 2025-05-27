# 🎨 Gallery & Media Showcase

Learn to create beautiful galleries and embed videos in your Kiwi Blog.

---

## Example 1: Two Images Side-by-Side

<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center; margin: 2rem 0;"><img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Mountain Landscape"><img src="https://images.unsplash.com/photo-1541961017774-22349e4a1262?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Abstract Geometric Shapes"></div>

<p style="text-align: center; font-size: 0.85em; color: #888; margin-top: 0.5rem;">
  <em>Top: "Mountain Range" by Tobias Tullius</em> • <em>Bottom: "Geometric Abstract" by Milad Fakurian</em> <br>
  Images from <a href="https://unsplash.com" target="_blank" style="color: #666;">Unsplash</a>
</p>

**Copy this code:**
```html
<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center; margin: 2rem 0;">
  <img src="YOUR_IMAGE_URL?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
  <img src="YOUR_IMAGE_URL?w=400&q=80" style="width: 350px; height: 250px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
</div>
```

---

## Example 2: Single Featured Image

<div style="text-align: center; margin: 2rem 0;"><img src="https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=600&q=85" style="width: 100%; max-width: 500px; height: 350px; object-fit: cover; border-radius: 12px;" alt="Modern Architecture">  <p style="margin-top: 1rem; font-style: italic; color: #666;">🏛️ <em>Modern building by Scott Webb</em></p><p style="font-size: 0.85em; color: #888;">Photo from <a href="https://unsplash.com" target="_blank" style="color: #666;">Unsplash</a></p></div>

**Copy this code:**
```html
<div style="text-align: center; margin: 2rem 0;">
  <img src="YOUR_IMAGE_URL?w=600&q=85" style="width: 100%; max-width: 500px; height: 350px; object-fit: cover; border-radius: 12px;" alt="Your Alt Text">
  <p style="margin-top: 1rem; font-style: italic; color: #666;">🎨 <em>Your Title</em> - Your description</p>
</div>
```

---

## Example 3: YouTube Video Embed

<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; margin: 2rem 0;">
  <iframe src="https://www.youtube.com/embed/bex0UEoUMbU" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: none; border-radius: 8px;" allowfullscreen></iframe>
</div>

**Copy this code:**
```html
<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; margin: 2rem 0;">
  <iframe src="https://www.youtube.com/embed/YOUR_VIDEO_ID" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: none; border-radius: 8px;" allowfullscreen></iframe>
</div>
```

**Get YouTube Video ID:** Go to any YouTube video, copy URL like `https://www.youtube.com/watch?v=dQw4w9WgXcQ`, extract the ID after `v=` → `dQw4w9WgXcQ`

---

## Example 4: Three Images in a Row

<div style="display: flex; gap: 1rem; margin: 2rem 0; flex-wrap: wrap; justify-content: center;"><img src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=300&q=80" style="width: 180px; height: 180px; object-fit: cover; border-radius: 8px;" alt="Nature Abstract"><img src="https://images.unsplash.com/photo-1518837695005-2083093ee35b?w=300&q=80" style="width: 180px; height: 180px; object-fit: cover; border-radius: 8px;" alt="Ocean Waves"><img src="https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=300&q=80" style="width: 180px; height: 180px; object-fit: cover; border-radius: 8px;" alt="Forest Path"></div>

<p style="text-align: center; font-size: 0.85em; color: #888; margin-top: 0.5rem;">
  <em>Left: Abstract art by Pawel Czerwinski</em> • <em>Center: Ocean waves by Silas Baisch</em> • <em>Right: Forest landscape by Casey Horner</em> <br>
  Images from <a href="https://unsplash.com" target="_blank" style="color: #666;">Unsplash</a>
</p>

**Copy this code:**
```html
<div style="display: flex; gap: 1rem; margin: 2rem 0; flex-wrap: wrap; justify-content: center;">
  <img src="YOUR_IMAGE_URL?w=300&q=80" style="width: 180px; height: 180px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
  <img src="YOUR_IMAGE_URL?w=300&q=80" style="width: 180px; height: 180px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
  <img src="YOUR_IMAGE_URL?w=300&q=80" style="width: 180px; height: 180px; object-fit: cover; border-radius: 8px;" alt="Your Alt Text">
</div>
```

---

## Example 5: Large Hero Image

<div style="margin: 3rem 0;"><img src="https://images.unsplash.com/photo-1472214103451-9374bd1c798e?w=800&q=90" style="width: 100%; height: 400px; object-fit: cover; border-radius: 16px;" alt="Mountain Landscape Hero"></div>

<p style="text-align: center; font-size: 0.85em; color: #888; margin-top: 0.5rem;">
  <em>Mountain landscape by Daniel Seßler</em> <br>
  Photo from <a href="https://unsplash.com" target="_blank" style="color: #666;">Unsplash</a>
</p>

**Copy this code:**
```html
<div style="margin: 3rem 0;">
  <img src="YOUR_IMAGE_URL?w=800&q=90" style="width: 100%; height: 400px; object-fit: cover; border-radius: 16px;" alt="Your Alt Text">
</div>
```

---

## 🎯 Tips & Tricks

**Get YouTube Video ID:**
1. Go to any YouTube video  
2. Copy URL: `https://www.youtube.com/watch?v=dQw4w9WgXcQ`
3. Extract ID after `v=`: `dQw4w9WgXcQ`
4. Use: `https://www.youtube.com/embed/dQw4w9WgXcQ`

**Image Sizing:**
- Small: `?w=300&q=80` (300px, 80% quality)
- Medium: `?w=400&q=80` (400px, 80% quality)  
- Large: `?w=800&q=85` (800px, 85% quality)

**Pro CSS:**
- `object-fit: cover` = no stretching
- `border-radius: 8px` = rounded corners  
- `gap: 1rem` = consistent spacing
- `margin: 2rem 0` = vertical spacing
