class AddTopicColumnToIssues < ActiveRecord::Migration[5.0]
  def change
    add_column :issues, :topic, :string
  end
end
