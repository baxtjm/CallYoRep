class AddCallToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :call, foreign_key: true
  end
end
