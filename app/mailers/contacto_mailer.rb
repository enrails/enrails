class ContactoMailer < ActionMailer::Base
  default from: "sitio@enrails.com"
  def contactar(email,nombre,mensaje)
 	 @mensaje=mensaje
 	 mail(:to=>email,:subject => nombre)
  end
end
