class AddMaxPersonsToHousings < ActiveRecord::Migration[7.0]
  def change
    add_column :housings, :max_persons, :integer
  end
end
