class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :position
      t.text :text
      t.references :issue, foreign_key: true

      t.timestamps
    end
  end
end
