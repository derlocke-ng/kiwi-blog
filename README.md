# 🥝 Kiwi Blog

A simple, fast static site generator for beautiful blogs and portfolios. Write in Markdown, build with Bash, deploy anywhere.

---

## 🚀 Quick Start

```bash
git clone https://github.com/derlocke-ng/kiwi-blog.git
cd kiwi-blog
chmod +x build.sh
./build.sh
```
Open `index.html` in your browser.

---

## 📁 Project Structure

```
kiwi-blog/
├── blogentries/      # Blog posts (Markdown)
├── showcase/         # Portfolio & how-to pages
├── style.css         # Main stylesheet
├── build.sh          # Build script
├── ...
```

---

## 📝 Writing Posts (CRITICAL FORMAT)

Every post **must** start like this:

```markdown
# My Post Title

**Date:** 2025-05-27
**Author:** derlocke-ng

Your content here...
```
- `**Date:** YYYY-MM-DD` and `**Author:** Name` are required for sorting/archives.

---

## 🎨 Custom Pages & Showcases

- Add Markdown files to `showcase/` for portfolio, tutorials, or how-to pages.
- Use HTML+Markdown for advanced layouts (see `showcase/showcase.md`).
- Example: Art gallery, project list, code tricks, markdown demos.

---

## 💡 Kiwi Blog Power Tips

- **Mix HTML & Markdown**: Use `<div style=...>` for grids, cards, galleries.
- **Image Sizing**: Use Unsplash with `w=300` for fast, responsive images.
- **Code Blocks**: Use triple backticks for commands, configs, code.
- **Collapsible Sections**: Use `<details><summary>...</summary>...</details>` for FAQs or long code.
- **Tables & Checklists**: Use Markdown tables and `- [x]` for tasks.

---

## ⚙️ Build & Deploy

- Run `./build.sh` to generate all HTML pages.
- Push to GitHub, enable GitHub Pages for instant hosting.
- All content is static, no server needed.

---

## 🛠️ Requirements

- **Pandoc** (for Markdown to HTML)
- **Bash** (for build script)

---

## 📚 Learn by Example

- See `showcase/showcase.md` for real, copy-pasteable demos.
- Explore other files in `showcase/` for more advanced tricks.
- The best way to learn: write, build, and experiment!

---

## 🤝 Contribute

- Fork, branch, PRs welcome!
- Ideas, bug reports, and improvements encouraged.

---

**Made with 🥝 by derlocke-ng and the Kiwi Blog community.**
