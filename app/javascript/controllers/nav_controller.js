import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    collapse: Number
  }
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
      if(this.collapseValue == 0){
        nav.classList.remove('show')
      }
    }
  }

  nav_collapse(){
    var collapse_menu = document.getElementById("collapse-navbar-menu-container")
    var nav = document.getElementById("nav-bar")
    var docEl = document.documentElement


    if(this.collapseValue == 0){
      collapse_menu.classList.add('show-collapse')
      nav.classList.remove('transition')
      nav.classList.add('show')
      setTimeout(function() {
        nav.classList.add('transition')
      }, 10)

      this.collapseValue = 1
    }else{
      collapse_menu.classList.remove('show-collapse')

      setTimeout(function() {
        if (docEl.scrollTop <= nav.clientHeight){
          nav.classList.remove('show')
        }
      }, 490)

      this.collapseValue = 0
    }
  }
}
