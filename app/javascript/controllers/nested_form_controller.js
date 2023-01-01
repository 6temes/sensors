import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['template', 'addButton']

  static values = {
    maxItems: Number,
  }

  connect() {
    this.checkMaxItems()
  }

  addAssociation() {
    const content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())

    this.addButtonTarget.insertAdjacentHTML('beforeBegin', content)

    this.checkMaxItems()
  }

  removeAssociation(event) {
    const wrapper = event.target.closest('.nested-field')

    // New records are simply removed from the page
    if (wrapper.dataset.newRecord === 'true') {
      wrapper.remove()

      // Existing records are hidden and flagged for deletion
    } else {
      wrapper.querySelector("input[name*='_destroy']").value = 1
      wrapper.style.display = 'none'
    }

    this.checkMaxItems()
  }

  checkMaxItems() {
    if (!this.hasMaxItemsValue) return

    const associationsCount = this.element.querySelectorAll(
      '.nested-field:not([style*="display: none"])',
    ).length

    if (associationsCount < this.maxItemsValue) {
      this.addButtonTarget.style.display = null
    } else {
      this.addButtonTarget.style.display = 'none'
    }
  }
}
