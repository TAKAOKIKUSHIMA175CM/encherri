class Cherry < ApplicationRecord
	#標準で親モデルとの関連をみているのでoptional: trueと書かないとエラーになる、関連を外している
	belongs_to :farm, optional: true
	
end
