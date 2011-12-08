class EnrailsController < ApplicationController
  layout 'bootstrap'
  before_filter :set_locale
  def lightbox
    @sections=Section.all
  end
  def index
  @sections=Section.all
  @section=Section.first
  redirect_to enrails_section_path(:id=>@section)
  end
  def section
   @sections=Section.all
   @section=Section.find(params[:id])
   
  end
  def show
  @section=Section.first
    redirect_to enrails_section_path(:id=>@section)
  end
  def projects
  @projects=Project.all
  @sections=Section.all  
  end
  def project
   @projects=Project.all
  @project=Project.find(params[:id])
  @sections=Section.all  
  end
  def contact
  	 
  	 @sections=Section.all
   	 if params[:name]
   	 	ContactoMailer.contactar(params[:email],params[:name],params[:text]).deliver
   		redirect_to enrails_contact_path, notice: 'Recibido' 
   	 end
  end
end
