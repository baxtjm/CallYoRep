class AddforiegnKeyToMessages < ActiveRecord::Migration[5.0]
  def change
      add_reference :messages, :issue, foreign_key: true
  end
end
