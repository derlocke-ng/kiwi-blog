// Kiwi Blog Theme Controller
class ThemeController {
  constructor() {
    this.initializeElements();
    this.loadSavedThemes();
    this.setupEventListeners();
    this.addTooltips();
  }

  initializeElements() {
    console.log('Initializing elements...');
    this.contentSlider = document.getElementById('contentSlider');
    this.headerSlider = document.getElementById('headerSlider');
    this.darkModeToggle = document.getElementById('darkModeToggle');
    
    console.log('Content slider:', this.contentSlider);
    console.log('Header slider:', this.headerSlider);
    console.log('Dark mode toggle:', this.darkModeToggle);
  }

  addTooltips() {
    // Add tooltips to slider groups
    const contentGroup = this.contentSlider?.parentElement;
    const headerGroup = this.headerSlider?.parentElement;
    
    if (contentGroup) {
      contentGroup.setAttribute('data-tooltip', 'Content Colors');
    }
    if (headerGroup) {
      headerGroup.setAttribute('data-tooltip', 'Header/Footer Colors');
    }
  }

  loadSavedThemes() {
    // Load saved themes or use defaults
    const savedContentHue = localStorage.getItem('kiwi-blog-contentHue') || '100';
    const savedHeaderHue = localStorage.getItem('kiwi-blog-headerHue') || '210';
    const savedDarkMode = localStorage.getItem('kiwi-blog-darkMode') === 'true';

    // Apply slider values
    if (this.contentSlider) {
      this.contentSlider.value = savedContentHue;
    }
    if (this.headerSlider) {
      this.headerSlider.value = savedHeaderHue;
    }

    // Apply themes
    this.updateTheme('content', savedContentHue);
    this.updateTheme('header', savedHeaderHue);
    this.updateDarkMode(savedDarkMode);
    
    // Update toggle button text
    this.updateDarkModeButton(savedDarkMode);
  }

  setupEventListeners() {
    if (this.contentSlider) {
      this.contentSlider.addEventListener('input', (e) => {
        this.updateTheme('content', e.target.value);
        localStorage.setItem('kiwi-blog-contentHue', e.target.value);
      });
    }

    if (this.headerSlider) {
      this.headerSlider.addEventListener('input', (e) => {
        this.updateTheme('header', e.target.value);
        localStorage.setItem('kiwi-blog-headerHue', e.target.value);
      });
    }

    if (this.darkModeToggle) {
      this.darkModeToggle.addEventListener('click', () => {
        const currentMode = localStorage.getItem('kiwi-blog-darkMode') === 'true';
        const newMode = !currentMode;
        this.updateDarkMode(newMode);
        this.updateDarkModeButton(newMode);
        localStorage.setItem('kiwi-blog-darkMode', newMode.toString());
      });
    }
  }

  updateTheme(area, hue) {
    const root = document.documentElement;
    
    switch(area) {
      case 'content':
        root.style.setProperty('--content-hue', hue);
        break;
      case 'header':
        root.style.setProperty('--header-hue', hue);
        break;
    }
  }

  updateDarkMode(isDark) {
    const root = document.documentElement;
    root.style.setProperty('--dark-mode', isDark ? '1' : '0');
  }

  updateDarkModeButton(isDark) {
    if (this.darkModeToggle) {
      this.darkModeToggle.textContent = isDark ? '☀️ Light' : '🌙 Dark';
    }
  }

  // Static method to reset themes to defaults
  static resetToDefaults() {
    localStorage.removeItem('kiwi-blog-contentHue');
    localStorage.removeItem('kiwi-blog-headerHue');
    localStorage.removeItem('kiwi-blog-darkMode');
    location.reload();
  }
}

// Initialize theme controller when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
  console.log('DOM loaded, initializing ThemeController...');
  try {
    const controller = new ThemeController();
    console.log('ThemeController initialized successfully');
  } catch (error) {
    console.error('Error initializing ThemeController:', error);
  }
});
