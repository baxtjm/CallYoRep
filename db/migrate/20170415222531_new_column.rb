class NewColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :readable_name, :string
  end
end
