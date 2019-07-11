class Farm < ApplicationRecord

	belongs_to :user, optional: true
	has_many :cherries, dependent: :destroy

	attachment :farm_image
	attachment :map

end
