class AddImageToHousing < ActiveRecord::Migration[7.0]
  def change
    add_column :housings, :images, :string
  end
end
