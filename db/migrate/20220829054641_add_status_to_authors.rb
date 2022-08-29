class AddStatusToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :status, :string
  end
end
