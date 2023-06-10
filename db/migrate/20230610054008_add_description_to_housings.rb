class AddDescriptionToHousings < ActiveRecord::Migration[7.0]
  def change
    add_column :housings, :description, :text
  end
end
