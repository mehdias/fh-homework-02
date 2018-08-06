class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :sub_title
      t.string :genre
      t.string :classification
      t.string :catagory
      t.integer :year

      t.timestamps
    end
  end
end
