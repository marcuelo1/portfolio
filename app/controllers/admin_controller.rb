class AdminController < ApplicationController
    before_action :authenticate_admin!

    def index
        @about_me = current_admin.about_me

        @skills = current_admin.skills

        @languages = current_admin.languages

        @projects = ['Great Wall Builders', '1', '2', '3', '4', '5', '6']

        @email = "marcuelo1@gmail.com"

        @mobile_number = "09053536495"

        @address = "Canduman, Mandaue City, Cebu"
    end

    def update_about_me
        @admin = current_admin
        @admin.update(about_me: params[:about_me])
        redirect_to home_admin_path
    end
    
    def add_skills_languages
        array = []
        additional = nil
        if params[:skill] 
            array = current_admin.skills

            array.push(params[:skill])
    
            current_admin.update(skills: array)
        elsif params[:language]
            array = current_admin.languages

            array.push(params[:language])
    
            current_admin.update(languages: array)
        else  
            return flash[:notice] = "Empty skills or language" 
        end

        redirect_to home_admin_path
    end
    
    
end
