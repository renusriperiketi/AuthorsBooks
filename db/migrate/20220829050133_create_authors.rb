class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :Name
      t.integer :Age
      t.string :City
      t.string :Country
      t.string :Qualification

      t.timestamps
    end
  end
end
