class CreateGerbils < ActiveRecord::Migration[7.1]
  def change
    create_table :gerbils do |t|
      t.integer :competition_id
      t.string :name
      t.string :color
      t.boolean :neutered
      t.float :age

      t.timestamps
    end
  end
end
