class Shop < ApplicationRecord
  belongs_to :user

  validates :shop_name,         presence: true
  validates :introduction,      presence: true
end
