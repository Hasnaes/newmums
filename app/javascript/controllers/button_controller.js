import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="button"
export default class extends Controller {

  static targets = ["menu"]

  connect() {
    console.log('my btn')
  }

  slidemenu(){
    console.log("sidemenu")
    this.menuTarget.classList.toggle('d-none');
  }
}
