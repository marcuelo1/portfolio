class MainController < ApplicationController
    
    def home
        @about_me = current_admin.about_me

        @skills = current_admin.skills

        @languages = current_admin.languages

        @projects = ['Great Wall Builders', '1', '2', '3', '4', '5', '6']

        @email = current_admin.display_email

        @mobile_number = current_admin.mobile_number

        @address = current_admin.address
    end
end
