class MainController < ApplicationController
    
    def home
        @about_me = current_admin.about_me

        @skills = ['Teamplayer', 'Initiative', 'Leader', 'Fun', 'Fast Learner']

        @languages = ['Ruby', 'Javascript', 'Jquery', 'Rails']

        @projects = ['Great Wall Builders', '1', '2', '3', '4', '5', '6']

        @email = "marcuelo1@gmail.com"

        @mobile_number = "09053536495"

        @address = "Canduman, Mandaue City, Cebu"
    end
end
