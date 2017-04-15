class ChangeCallsToMessages < ActiveRecord::Migration[5.0]
  def change
    rename_table :calls, :messages
  end
end
