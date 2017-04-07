class ChangeColumnNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :messages, :text, :content
  end
end
