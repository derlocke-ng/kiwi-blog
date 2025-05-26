# 🎨 Art & Picture Gallery Tutorial

This page shows how to create beautiful image galleries in Kiwi Blog with proper sizing and layout.

---

## 🖼️ How to Size Images Properly

**The key**: Use `w=300&q=80` in Unsplash URLs and proper CSS for responsive layouts.

### Basic Grid Gallery

**Copy this code:**
```markdown
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1rem; margin: 2rem 0;">
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1541701494587-cb58502866ab?w=300&q=80" 
         style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" 
         alt="Abstract Art">
    <p><em>Abstract Colors</em><br>Digital Art, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=300&q=80" 
         style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" 
         alt="Mountain Landscape">
    <p><em>Mountain Vista</em><br>Photography, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=300&q=80" 
         style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" 
         alt="Architecture">
    <p><em>Urban Lines</em><br>Architecture, 2024</p>
  </div>
</div>
```

**Result:**
<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1rem; margin: 2rem 0;">
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1541701494587-cb58502866ab?w=300&q=80" 
         style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" 
         alt="Abstract Art">
    <p><em>Abstract Colors</em><br>Digital Art, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=300&q=80" 
         style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" 
         alt="Mountain Landscape">
    <p><em>Mountain Vista</em><br>Photography, 2024</p>
  </div>
  <div style="text-align: center;">
    <img src="https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=300&q=80" 
         style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;" 
         alt="Architecture">
    <p><em>Urban Lines</em><br>Architecture, 2024</p>
  </div>
</div>

### Simple Row Layout

**For fewer images:**
```markdown
<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center; margin: 2rem 0;">
  <img src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=300&q=80" 
       style="width: 280px; height: 200px; object-fit: cover; border-radius: 8px;" 
       alt="Nature">
  <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=300&q=80" 
       style="width: 280px; height: 200px; object-fit: cover; border-radius: 8px;" 
       alt="Mountains">
</div>
```

**Result:**
<div style="display: flex; gap: 1rem; flex-wrap: wrap; justify-content: center; margin: 2rem 0;">
  <img src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=300&q=80" 
       style="width: 280px; height: 200px; object-fit: cover; border-radius: 8px;" 
       alt="Nature">
  <img src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=300&q=80" 
       style="width: 280px; height: 200px; object-fit: cover; border-radius: 8px;" 
       alt="Mountains">
</div>

---

## 📏 Image Sizing Rules

1. **Unsplash URLs**: Always add `?w=300&q=80` for 300px width, 80% quality
2. **CSS width**: Use `width: 100%` for responsive or fixed `width: 280px` for consistent
3. **CSS height**: Set fixed height like `height: 200px` for uniform grids
4. **object-fit**: Use `object-fit: cover` to crop nicely without stretching
5. **border-radius**: Add `border-radius: 8px` for modern rounded corners

---

## 🎯 Quick Tips

- **Grid layout**: Best for 3+ images, automatically wraps to new rows
- **Flex layout**: Best for 1-2 images, simple horizontal arrangement  
- **minmax(250px, 1fr)**: Makes grid responsive - minimum 250px, grows to fill space
- **gap: 1rem**: Adds consistent spacing between images
- **margin: 2rem 0**: Adds space above and below the gallery

That's it! Copy the code, replace the image URLs with your own, and you have a beautiful gallery.
