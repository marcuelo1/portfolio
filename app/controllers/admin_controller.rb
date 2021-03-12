class AdminController < ApplicationController
    before_action :authenticate_admin!

    def index
        admin = Admin.first 

        @about_me = admin.about_me

        @skills = admin.skills

        @languages = admin.languages

        @projects = ['Great Wall Builders', '1', '2', '3', '4', '5', '6']

        @email = admin.display_email

        @mobile_number = admin.mobile_number

        @address = admin.address
    end

    def update_about_me
        @admin = Admin.first 
        @admin.update(about_me: params[:about_me])
        redirect_to home_admin_path
    end
    
    def add_skills_languages
        admin = Admin.first 

        array = []
        additional = nil
        if params[:skill] 
            array = admin.skills

            array.push(params[:skill])
    
            admin.update(skills: array)
        elsif params[:language]
            array = admin.languages

            array.push(params[:language])
    
            admin.update(languages: array)
        else  
            return flash[:notice] = "Empty skills or language" 
        end

        redirect_to home_admin_path
    end
    
    def update_contact_details
        @admin = Admin.first 
        @admin.update(display_email: params[:display_email], mobile_number: params[:mobile_number], address: params[:address])
        redirect_to home_admin_path
    end

    def delete_skill
        admin = Admin.first 
        skill_array = admin.skills

        skill_array.delete(params[:skill])

        admin.update(skills: skill_array)

        redirect_to home_admin_path
    end

    def delete_language
        admin = Admin.first 
        language_array = admin.languages

        language_array.delete(params[:language])

        admin.update(languages: language_array)

        redirect_to home_admin_path
    end
    
end
