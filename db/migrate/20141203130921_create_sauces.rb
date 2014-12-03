class CreateSauces < ActiveRecord::Migration
  def change
    create_table :sauces do |t|
      t.string :ingredients
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
