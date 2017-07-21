class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.boolean :adpoted

      t.timestamps
    end
  end
end