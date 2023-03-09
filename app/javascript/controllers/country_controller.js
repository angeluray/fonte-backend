import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  change(event) {
    let country = event.target.selectedOptions[0].value

    get(`/addresses/states?country=${country}`, {
      responseKind: "turbo-stream"
    })
  }
}
