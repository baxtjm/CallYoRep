class RenameCallTableToCall < ActiveRecord::Migration[5.0]
  def change
    rename_table :calls, :calls
  end
end
