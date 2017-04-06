class RemoveTextAddZipCodeToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :text, :string
    add_column :users, :zip, :string
  end
end
