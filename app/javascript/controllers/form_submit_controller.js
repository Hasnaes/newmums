import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-submit"
export default class extends Controller {

  connect() {
    console.log('helgggggggglo')
  }


  submit() {
    console.log('helgggggggglo')
    this.element.submit();
  }
}
