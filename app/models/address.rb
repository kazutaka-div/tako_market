class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :postal_code, :addres, presence: true
end
