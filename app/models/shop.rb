class Shop < ApplicationRecord
  
  belongs_to :user
  has_many_attached :images

  validates :shop_name,    presence: true
  validates :introduction, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shop_genre
  belongs_to :shop_city
  belongs_to :prefecture


  validates :shop_genre_id, numericality: { other_than: 1, message: "can't be blank" } 

end
