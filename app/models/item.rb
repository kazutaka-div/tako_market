class Item < ApplicationRecord
  #以下、２行はaccepts_nested_attributes_forの記述
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

end
