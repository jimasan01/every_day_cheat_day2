class Price < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '~500円' },
    { id: 3, name: '500~1000円' },
    { id: 4, name: '1000~2000円' },
    { id: 5, name: '2000~3000円' },
    { id: 6, name: '3000円~' },
  ]

  include ActiveHash::Associations
  has_many :cheats
  
end
