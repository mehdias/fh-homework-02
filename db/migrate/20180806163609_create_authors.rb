class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :First_name
      t.string :Last_name
      t.string :Age

      t.integer :author_id
      t.integer :book_id
      t.timestamps
    end
  end
end
