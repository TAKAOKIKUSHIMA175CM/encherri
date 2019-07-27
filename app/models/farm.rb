class Farm < ApplicationRecord

	belongs_to :user, optional: true
	has_many :cherries, dependent: :destroy
	belongs_to :area, optional: true

	attachment :farm_image
	attachment :map_image

	validates :farm_name, :price, presence: true

end
