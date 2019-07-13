class Cherry < ApplicationRecord
	#標準で親モデルとの関連をみているのでoptional: trueと書かないとエラーになる、関連を外している
	belongs_to :farm, optional: true

	def cherry_taste_convert(number)
		if number == 1
			return "控えめ"
		elsif number == 2
			return "普通"
		else
			return "強い"
		end
	end
	
end
