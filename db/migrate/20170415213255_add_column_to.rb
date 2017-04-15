class AddColumnTo < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :stance, :string
  end
end
