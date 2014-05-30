class AddFirstNameAndLastNameToDetails < ActiveRecord::Migration
  def change
    add_column :details, :first_name, :string
    add_column :details, :last_name, :string
  end
end
