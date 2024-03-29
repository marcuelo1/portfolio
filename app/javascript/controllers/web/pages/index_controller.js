import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["contactName", "contactEmail", "contactMobile", "contactBody"]

  contact_submit(e){
    e.preventDefault()
    var name = this.contactNameTarget.value
    var email = this.contactEmailTarget.value
    var mobile = this.contactMobileTarget.value
    var body = this.contactBodyTarget.value

    fetch("/inquiries", {
      method: "POST",
      credentials: "same-origin",
      headers: {
        Accept: "text/json",
        "Content-Type": "application/json",
        "X-CSRF-Token": document.head.querySelector("[name='csrf-token']").content
      },
      body: JSON.stringify({
        name: name,
        email: email,
        mobile_number: mobile,
        body: body
      })
    })
      .then(response => response.json())
      .then(data => {
        console.log(data)

        // reset form
        this.contactNameTarget.value = ""
        this.contactEmailTarget.value = ""
        this.contactMobileTarget.value = ""
        this.contactBodyTarget.value = ""

        // show success alert
        document.getElementById("alert-container").innerHTML = data['partial']
      })
      .catch(error => {
        console.log(error)

        // show fail alert
        document.getElementById("alert-container").innerHTML = error['partial']
      })
  }

  close_nav_collapse(){
    var collapse_menu = document.getElementById("collapse-navbar-menu-container")
    var nav = document.getElementById("nav-bar")
    var docEl = document.documentElement

    if(nav.getAttribute("data-nav-collapse-value") == "1"){
      collapse_menu.classList.remove('show-collapse')

      setTimeout(function() {
        if (docEl.scrollTop <= nav.clientHeight){
          nav.classList.remove('show')
        }
      }, 490)

      nav.setAttribute("data-nav-collapse-value", 0)
    }
  }
}
