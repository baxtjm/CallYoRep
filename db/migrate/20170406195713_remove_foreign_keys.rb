class RemoveForeignKeys < ActiveRecord::Migration[5.0]
  def change
    remove_column :calls, :issue_id, :string
  end
end
