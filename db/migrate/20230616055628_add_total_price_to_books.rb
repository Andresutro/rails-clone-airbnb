class AddTotalPriceToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :total_price, :integer
  end
end
