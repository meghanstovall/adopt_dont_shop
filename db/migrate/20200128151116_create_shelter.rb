class CreateShelter < ActiveRecord::Migration[5.1]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
    end
  end


  # def change
  #   create_table :tasks do |t|
  #     t.string :title
  #     t.string :description
  #   end
  # end

end