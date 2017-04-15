class AddColumnToMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :audio_link, :string
  end
end
