import { Controller } from '@hotwired/stimulus'

const ACTIVE_TAB_CLASS = 'nav-tab__item--active'
const INACTIVE_TAB_CLASS = 'nav-tab__item--inactive'
const HIDDEN_PANEL_CLASS = 'hidden'

// Connects to data-controller="tabs"
export default class extends Controller {
  // https://github.com/excid3/tailwindcss-stimulus-components/blob/master/src/tabs.js

  static targets = ['tab', 'panel']

  connect() {
    this.tabTargets.forEach((tab) => {
      tab.setAttribute('data-action', 'click->tabs#change')
    })
  }

  change(event) {
    this.index = this.tabTargets.indexOf(event.currentTarget)

    // Dispatch a custom event to notify other components that the tab has changed
    // (in case anybody cares)
    window.dispatchEvent(new CustomEvent('stimulus-tab:tab-change'))
  }

  showTab() {
    this.tabTargets.forEach((tab, index) => {
      const panel = this.panelTargets[index]

      if (index === this.index) {
        panel.classList.remove(HIDDEN_PANEL_CLASS)
        tab.classList.remove(INACTIVE_TAB_CLASS)
        tab.classList.add(ACTIVE_TAB_CLASS)
      } else {
        panel.classList.add(HIDDEN_PANEL_CLASS)
        tab.classList.remove(ACTIVE_TAB_CLASS)
        tab.classList.add(INACTIVE_TAB_CLASS)
      }
    })
  }

  get index() {
    return parseInt(this.data.get('index') || 0, 10)
  }

  set index(value) {
    this.data.set('index', value >= 0 ? value : 0)
    this.showTab()
  }
}
