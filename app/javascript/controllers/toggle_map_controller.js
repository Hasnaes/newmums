import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-map"
export default class extends Controller {
  static targets = ["map"]

  connect() {
    console.log("hello")
  }

  maptoggle() {
    console.log("hey")
    this.mapTarget.classList.toggle('d-none');
  }
}
