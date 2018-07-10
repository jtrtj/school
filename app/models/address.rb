class Address < ApplicationRecord
  validates :description, :street, :city, :state, :zip_code, presence: true

  belongs_to :student
end