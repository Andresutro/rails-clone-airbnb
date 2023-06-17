class AddImageToHousing < ActiveRecord::Migration[7.0]
  def change
    add_column :housings, :photo, :string
  end
end
