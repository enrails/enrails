module ApplicationHelper
	def local
		I18n.locale.to_s
	end
	def alternaidioma
		if local=='es'
		  
	      return 'en'
		else 
		  return 'es'
		end
	end
	def marcado
		if @section==Section.find(params[:id]) && @listando=='false'
		 return 'active'
		end
	end
end
