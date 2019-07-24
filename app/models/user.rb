class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :farm, dependent: :destroy

  accepts_nested_attributes_for :farm

  validates :name_kanji, :phone_number, :address, presence: true
  validates :name_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\Z/ }
  validates :phone_number, presence: true, length: { in: 8..11 }, format: { with: /\A[0-9]+\Z/ }
  validates :post_code, presence: true, length: { is: 7 }, format: { with: /\A[0-9]+\Z/ }
end
