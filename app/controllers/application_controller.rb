class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resourse)
		if current_user.admin_flag == 1
			admin_farms_path
		else
			farms_path
		end
	end

	def after_sign_up_path_for(resourse)
		farms_path
	end
	# ログインしているかの確認、その中で管理者かファーム管理者かの分岐
	def admin_flag_check?
		if current_user == nil
			redirect_to "farms_path"
		else
			if current_user.admin_flag == 1
			else
			   redirect_to "farms_path"
			end
		end
	end

	# 退会状態のユーザーにアクセス制限をかける
	def resignation_flag_check?
		# ログインしているか否か
		if current_user == nil
			# 処理なし
		else
			# 退会状態でアクセスしたらトップファーム一覧にいく
			if current_user.regignation_flag == 1
				redirect_to "farms_path"
			else
				# 退会していない場合は通常です。処理なし。
			end
		end
	end

	def search
		# @farm = Farm.new
		# render "index"
	end


	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up,keys:[:name_kanji, :name_kana, :phone_number, :post_code, :address, ])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
	end

end
