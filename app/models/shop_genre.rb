class ShopGenre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Fashion' },
    { id: 3, name: 'Food' },
    { id: 4, name: 'Interior' },
  ]

  include ActiveHash::Associations
  has_many :shops

  end