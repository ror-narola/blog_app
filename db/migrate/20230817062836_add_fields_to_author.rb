class AddFieldsToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :first_name, :string
    add_column :authors, :last_name, :string
    add_column :authors, :description, :text
    add_column :authors, :active_author, :integer, default: 0
  end
end
