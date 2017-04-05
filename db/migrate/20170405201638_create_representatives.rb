class CreateRepresentatives < ActiveRecord::Migration[5.0]
  def change
    create_table :representatives do |t|
      t.string :state
      t.string :name
      t.string :phone_number
      t.text :text

      t.timestamps
    end
  end
end
