import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flashes"
export default class extends Controller {
static targets = ["notification"]

  close() {
    this.notificationTarget.classList.add("hidden")
  }
  connect() {
  }
}
