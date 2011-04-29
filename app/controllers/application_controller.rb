class ApplicationController < ActionController::Base
  	protect_from_forgery
  	before_filter :set_locale
  	
  	def set_locale
  		# if params[:locale] is nil then I18n.default_locale will be used
  		sessions[:locale] = params[:locale] if params[:locale]
  		I18n.locale = session[:locale]
	end
end
 