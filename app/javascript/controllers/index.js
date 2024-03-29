// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import NavController from "./nav_controller"
application.register("nav", NavController)

import WebPagesIndexController from "./web/pages/index_controller"
application.register("web_pages_index", WebPagesIndexController)
