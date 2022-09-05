class Prefecture < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '大阪府' },
  ]

  include ActiveHash::Associations
  has_many :shops

  end