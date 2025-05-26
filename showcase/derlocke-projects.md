# 🤖 Weird Programming Tricks in Kiwi Blog

Let me show you some unconventional programming techniques and how to document them with Kiwi Blog.

## How I Document Code Tricks

Here's the Markdown I use to explain complex code:

````markdown
### One-Liner File Server
```bash
# Start a web server in any directory
python3 -m http.server 8000
```

**What this does**: Instantly serves current directory on `localhost:8000`  
**Why it's cool**: Zero configuration, works anywhere Python is installed  
**Use case**: Quick file sharing, testing static sites
````

## 🔥 Actual Weird Code

### One-Liner File Server
```bash
# Start a web server in any directory
python3 -m http.server 8000
```

**What this does**: Instantly serves current directory on `localhost:8000`  
**Why it's cool**: Zero configuration, works anywhere Python is installed  
**Use case**: Quick file sharing, testing static sites

---

### CSS-Only Toggle Switch
```css
/* No JavaScript needed! */
.toggle {
  appearance: none;
  width: 60px;
  height: 30px;
  background: #ccc;
  border-radius: 15px;
  position: relative;
  cursor: pointer;
}

.toggle:before {
  content: '';
  position: absolute;
  width: 26px;
  height: 26px;
  border-radius: 50%;
  background: white;
  top: 2px;
  left: 2px;
  transition: 0.3s;
}

.toggle:checked {
  background: #4CAF50;
}

.toggle:checked:before {
  transform: translateX(30px);
}
```

**What this does**: Creates an animated toggle without any JavaScript  
**Why it's weird**: Pure CSS handles the state change  
**How it works**: `:checked` pseudo-class + CSS transforms

---

### Bash Function Magic
```bash
# Create a function that remembers where you were
goto() {
  if [ "$1" = "back" ]; then
    cd "$OLDPWD"
  else
    GOTO_PREV="$PWD"
    cd "$1"
  fi
}

# Usage:
# goto /some/path
# goto back    # returns to where you were
```

**What this does**: Like browser back button for terminal  
**Why it's useful**: Quickly jump between directories  
**The trick**: Uses `$OLDPWD` and custom variable storage

---

### JavaScript Array Wizardry
```javascript
// Remove duplicates and sort in one line
const cleanArray = arr => [...new Set(arr)].sort();

// Group array by property
const groupBy = (arr, key) => 
  arr.reduce((groups, item) => ({
    ...groups,
    [item[key]]: [...(groups[item[key]] || []), item]
  }), {});

// Chunk array into smaller arrays
const chunk = (arr, size) => 
  Array.from({length: Math.ceil(arr.length / size)}, 
    (_, i) => arr.slice(i * size, i * size + size));
```

**What these do**: Common array operations in functional style  
**Why they're neat**: Readable one-liners that replace loops  
**When to use**: Data processing, API responses, list manipulation

## 📝 How to Document Your Own Tricks

### The Formula I Use

1. **Show the code first** - let people see it working
2. **Explain what it does** - in simple terms
3. **Why it's cool/weird** - what makes it special
4. **When to use it** - practical applications

### Markdown Template
```markdown
### Your Trick Name
```language
// Your code here
```

**What this does**: Brief explanation  
**Why it's cool**: What makes it special  
**Use case**: When you'd actually use this
```

This template works great in Kiwi Blog because:
- Code blocks get syntax highlighting
- Consistent structure is easy to scan
- No need for complex formatting

---
