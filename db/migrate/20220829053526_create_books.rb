class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :Bookname
      t.integer :Publicationyear
      t.string :Genre
      t.string :Blurb
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
