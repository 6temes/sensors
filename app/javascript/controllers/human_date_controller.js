import { Controller } from '@hotwired/stimulus'
import formatDistanceToNow from 'formatDistanceToNow'

// Connects to data-controller="human-date"
export default class extends Controller {
  connect() {
    this.interval = setInterval(() => this.format(), 30 * 1000)
    this.format()
  }

  disconnect() {
    clearInterval(this.interval)
  }

  format() {
    const date = Date.parse(this.element.dateTime)
    const formatted = formatDistanceToNow(date, { addSuffix: true })

    this.element.textContent = formatted
  }
}
