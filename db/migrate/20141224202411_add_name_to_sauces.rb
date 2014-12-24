class AddNameToSauces < ActiveRecord::Migration
  def change
    add_column :sauces, :name, :string
  end
end
