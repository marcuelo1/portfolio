import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    var docEl = document.documentElement
    var nav = this.element
    
    if (docEl.scrollTop > nav.clientHeight){
      nav.classList.add('show')
    }else{
      nav.classList.remove('show')
    }
  }

  nav_scroll(){
    var docEl = document.documentElement
    var nav = this.element
    
    if (docEl.scrollTop > nav.clientHeight){
      nav.classList.add('show')
    }else{
      nav.classList.remove('show')
    }
  }
}
