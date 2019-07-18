class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :farm, dependent: :destroy

  accepts_nested_attributes_for :farm

  validates :name_kanji, :post_code, :phone_number, presence: true
  validates :name_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\Z/ }
end
