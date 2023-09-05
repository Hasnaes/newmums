import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-map"
export default class extends Controller {
  static targets = ["map"]

  connect() {
  }

  maptoggle() {
    this.mapTarget.classList.toggle('d-none');
  }
}
