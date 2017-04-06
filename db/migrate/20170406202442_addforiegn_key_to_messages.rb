class AddforiegnKeyToMessages < ActiveRecord::Migration[5.0]
  def change
      add_reference :messages, :issue, index: true
  end
end
