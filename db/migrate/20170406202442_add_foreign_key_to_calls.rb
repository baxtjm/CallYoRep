class AddForeignKeyToCalls < ActiveRecord::Migration[5.0]
  def change
      add_reference :calls, :issue, foreign_key: true
  end
end
