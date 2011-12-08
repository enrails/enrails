class SessionsController < ApplicationController
	def new
		@sections=Section.all
	end
	
	def create 
  if params[:nombre]=='enrails' && params[:password]=='peyote'
       session[:logado]=true
     
       redirect_to root_path
   else
    flash.now.alert = t('revisardatos')
    render 'new'
   end 
  end
  def destroy
  session[:logado] = nil
  redirect_to login_path, :notice => t('desconectado')
  end
end
