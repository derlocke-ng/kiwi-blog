# 🎨 Building an Art Gallery with Kiwi Blog

Let me show you how to create a stunning art gallery using Kiwi Blog's Markdown features.

## How This Gallery Works

Here's the actual Markdown that creates this gallery:

```markdown
## 🖼️ My Art Collection

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

## 🖼️ The Result

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

## 💡 Pro Tips for Galleries

**1. Control Image Sizes**: Use `w=300&q=80` in Unsplash URLs
**2. Responsive Grid**: `grid-template-columns: repeat(auto-fit, minmax(250px, 1fr))`
**3. Consistent Heights**: `height: 200px; object-fit: cover`
**4. Rounded Corners**: `border-radius: 8px` for modern look

---
