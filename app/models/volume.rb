class Volume < ActiveHash::Base
  self.data = [
    { id: 1, name: 'あなたの感覚で！！' },
    { id: 2, name: '🍚(1kg~)' },
    { id: 3, name: '🍚🍚(2kg~)' },
    { id: 4, name: '🍚🍚🍚(3kg~)' },
    { id: 5, name: '🍚🍚🍚🍚(4kg~)' },
    { id: 6, name: '🍚🍚🍚🍚🍚(5kg~)' },
  ]

  include ActiveHash::Associations
  has_many :cheats
  
end
