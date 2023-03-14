import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cities"
export default class extends Controller {

  connect() {
    console.log("hello mai beibe")
  }

  initialize() {
    this.element.setAttribute("data-action", "change->cities#loadCityStates")
  }

  loadCityStates(event) {
    // console.log(event.target.id)
    let selectedF = document.querySelector('#countries-generated');
    // let selectedS = document.querySelector('#user_state');

    let myCountry = selectedF.options[selectedF.selectedIndex].value;
    // let myState = selectedS.options[selectedS.selectedIndex].value;
    // console.log(selectedS.options.include());
    let myState;
    // const target = this.stateSelectTarget.id
    
    if (event.target.id === "user_state") myState = event.target.selectedOptions[0].value;
 
    // console.log(`after la vaina ${myCountry} and ${myState}`)

    if(myState !== undefined) {
        this.url = `/users/cities?state=${myState}&country=${myCountry}`
    
        fetch(this.url, {
          headers: {
            Accept: "text/vnd.turbo-stream.html"
          }
        })
        .then(response => response.text())
        .then(html=> Turbo.renderStreamMessage(html))
    }
  }
}
