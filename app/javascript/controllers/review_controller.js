import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="review"
export default class extends Controller {
  connect() {
    const form = this.element;
    console.log(`this is my form girl ${form}`)
    form.addEventListener("submit", this.onSubmit.bind(this));
  }

  onSubmit(event) {
    const userNameField = this.element.querySelector('[name="review[user_name]"]');
    userNameField.removeAttribute("name");
  }
}

