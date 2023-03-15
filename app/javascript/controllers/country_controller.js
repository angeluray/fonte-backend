import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    console.log("Hello baby")
  }

  initialize() {
    this.element.setAttribute("data-action", "change->country#loadCountryStates")
  }

  loadCountryStates() {
    // alert("Selected baby!!")
    const selectedCountry = this.element.options[this.element.selectedIndex].value
    // alert(selectedCountry);
    this.url = `/users/fetch_country_states?country=${selectedCountry}`
    // this.url = `/users/fetch_country_states?country=${":" + selectedCountry}`
    fetch(this.url, {
      headers: {
        Accept: "text/vnd.turbo-stream.html"
      }
    })
    .then(response => response.text())
    .then(html=> Turbo.renderStreamMessage(html))
  }
}
