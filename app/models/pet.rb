class Pet < ApplicationRecord
  validates_presence_of :image, :name, :age, :sex, :description, :status
  belongs_to :shelter
end
