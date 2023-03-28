import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    preview(event) {
      console.log("it's working")
      const input = event.target
      const reader = new FileReader()
      reader.onload = (e) => {
        document.querySelector('.before-preview').style.display = "none"
        const preview = document.getElementById("image-preview")
        preview.src = e.target.result
        preview.style.display = "block"
      }
      reader.readAsDataURL(input.files[0])
    }
}