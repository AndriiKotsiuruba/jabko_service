import { Controller } from '@hotwired/stimulus';
import { THEME } from './modules/constants';
import Cookie from './modules/cookie';

export default class extends Controller {
  static targets = ['switchBsThemeIcon', 'document', 'logo'];

  connect() {
    this.logoPaths = {
      light: this.element.dataset.themeLogoLight,
      dark: this.element.dataset.themeLogoDark,
    };
  }

  switchTheme() {
    const nextTheme = this.isDarkTheme() ? THEME.LIGHT : THEME.DARK;

    Cookie.set(THEME.COOKIE_NAME, nextTheme, 7);

    this.setTheme(nextTheme, this.isDarkTheme());
  }

  setTheme(theme) {
    this.documentTarget.setAttribute('data-bs-theme', theme);

    this.updateSwitchBsThemeIcon();

    this.updateLogos(this.logoTargets);
  }

  updateLogos(logos) {
    logos.forEach(logo => {
      logo.setAttribute('src', this.logoPaths[this.theme()]);
    });
  }

  updateSwitchBsThemeIcon() {
    this.switchBsThemeIconTarget.classList.toggle('bi-moon-stars-fill', !this.isDarkTheme());
    this.switchBsThemeIconTarget.classList.toggle('bi-sun-fill', this.isDarkTheme());
  }

  isDarkTheme() {
    return this.theme() === THEME.DARK;
  }

  theme() {
    return Cookie.get(THEME.COOKIE_NAME) || THEME.DEFAULT;
  }
}
