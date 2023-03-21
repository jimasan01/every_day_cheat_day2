class Cheat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :explanation, presence: true
  
  #ActiveHashのアソシエーション
  belongs_to :category
  belongs_to :area
  belongs_to :volume
  belongs_to :price


  belongs_to :user
  has_one_attached :image

  #ジャンルの選択が「---」の時は保存できないようにする
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"} 
end
