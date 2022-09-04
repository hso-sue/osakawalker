class Shop < ApplicationRecord
  
  belongs_to :user
  has_many_attached :shops

  validates :shop_name,    presence: true
  validates :introduction, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shop_genre

  validates :genre_id, numericality: { other_than: 0, message: "can't be blank" } 

end
