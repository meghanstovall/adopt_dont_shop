class Pet < ApplicationRecord
  validates_presence_of :image, :name, :age, :sex, :name_of_shelter, :shelter_id
  belongs_to :shelter
end
