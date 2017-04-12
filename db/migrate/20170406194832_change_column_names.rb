class ChangeColumnNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :calls, :text, :content
  end
end
