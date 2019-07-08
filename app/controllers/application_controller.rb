class ApplicationController < ActionController::Base


	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up,keys:[:name_kanji, :name_kana, :phone_number, :post_code, :address, ])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
	end

end
