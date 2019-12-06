class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :gender
      t.string :size
      t.string :age
      t.string :image
      t.text :bio
      t.boolean :at_risk
      t.string :breed
      t.string :location
      t.string :color
      t.timestamps
    end
  end
end
