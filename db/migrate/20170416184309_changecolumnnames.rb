class Changecolumnnames < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :call_id
  end
end
