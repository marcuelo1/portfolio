class MainController < ApplicationController
    def home
        @about_me = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, nemo tempore? Est a odit, modi sed assumenda eius nihil, voluptates voluptatem, consequatur incidunt reiciendis velit laudantium reprehenderit ducimus quo facere?"

        @skills = ['Teamplayer', 'Initiative', 'Leader', 'Fun', 'Fast Learner']

        @languages = ['Ruby', 'Javascript', 'Jquery', 'Rails']

        @projects = ['Great Wall Builders', '1', '2', '3', '4', '5', '6']

        @email = "marcuelo1@gmail.com"

        @mobile_number = "09053536495"

        @address = "Canduman, Mandaue City, Cebu"
    end
end
