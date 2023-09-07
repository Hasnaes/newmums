import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slidemenu"
export default class extends Controller {
  static targets = ["items"]

  connect() {
    console.log('heymum')
  }

  slide() {
    console.log('work or not?')
    this.itemsTarget.classList.toggle('d-none');
  }
}
