class AddAdoptedToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :adopted, :boolean
  end
end
