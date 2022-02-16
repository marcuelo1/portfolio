class Web::InquiriesController < ApplicationController
  def create
    inquiry = Inquiry.new(inquiry_params)

    if inquiry.save!
      @flash_success = "Successfully Sent! Thank You!"

      render json: {
        partial: render_to_string('web/partials/_alerts', layout: false),
        message: "Successfully Sent!",
        success: true
      }, status: 200
    else
      @flash_error = "Oops! Message Failed to Send"

      render json: {
        partial: render_to_string('web/partials/_alerts', layout: false),
        error: inquiry.errors.full_messages
      }, status: 500
    end
  end

  private 
    def inquiry_params
      params.permit(:name, :email, :mobile_number, :body)
    end
    
end