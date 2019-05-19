class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :length
      t.string :color

      t.timestamps
    end
  end
end
