class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.references :housing, null: false, foreign_key: true
      t.date :start_date
      t.string :end_date
      t.integer :guests

      t.timestamps
    end
  end
end
