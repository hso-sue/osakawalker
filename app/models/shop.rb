class Shop < ApplicationRecord
  belongs_to :user
  has_many :evaluation_comments, dependent: :destroy
  has_many_attached :images

  validates :images,       presence: true
  validates :shop_genre_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :shop_name,    presence: true, length: { minimum: 1, maximum: 30, allow_blank: true}
  validates :introduction, presence: true, length: { minimum: 1, maximum: 300, allow_blank: true}
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :shop_city_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :shop_address, length: { minimum: 1, maximum: 40, allow_blank: true}

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shop_genre
  belongs_to :shop_city
  belongs_to :prefecture




end
