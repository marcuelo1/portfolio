class MainController < ApplicationController
    
    def home
        admin = Admin.first

        @about_me = admin.about_me

        @skills = admin.skills

        @languages = admin.languages

        @projects = ['Great Wall Builders', '1', '2', '3', '4', '5', '6']

        @email = admin.display_email

        @mobile_number = admin.mobile_number

        @address = admin.address
    end
end
