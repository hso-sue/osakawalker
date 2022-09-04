class ShopGenre < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'Fashion' },
    { id: 2, name: 'Food' },
    { id: 3, name: 'Interior' },
  ]

  include ActiveHash::Associations
  has_many :shops

  end