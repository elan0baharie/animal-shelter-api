class DropColumnAdpotedFromAnimals < ActiveRecord::Migration[5.1]
  def change
    remove_column :animals, :adpoted
  end
end
