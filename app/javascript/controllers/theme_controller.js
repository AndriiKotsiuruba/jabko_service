import { Controller } from '@hotwired/stimulus'
import { THEME } from './modules/constants';
import Cookie from './modules/cookie';

export default class extends Controller {
  static targets = [ 'switchBsThemeIcon', 'document', 'logo' ];

  switchTheme() {
    let nextTheme = this.isDarkTheme() ? THEME.LIGHT : THEME.DARK;

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
      logo.setAttribute('src', "/assets/logo-" + this.theme() + ".svg");
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
