class CreateCookingStyles < ActiveRecord::Migration
  def change
    create_table :cooking_styles do |t|
      t.string :name
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
