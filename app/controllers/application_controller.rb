class ApplicationController < ActionController::Base
  layout 'bootstrap'
  protect_from_forgery
  before_filter :set_locale
  #rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
 
  def requirelogado
	 	if session[:logado]!=true
	  		redirect_to root_path
	  	end
	 end
 
  def set_locale
		# I18n.locale = extract_locale_from_accept_language_header
		if params[:local]
	 		 I18n.default_locale = params[:locale]
	 	end
	end 
  private
  private
def extract_locale_from_accept_language_header
  request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
end
 
  def record_not_found
  
    redirect_to enrails_path
  end
end
