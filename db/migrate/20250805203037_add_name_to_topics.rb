class AddNameToTopics < ActiveRecord::Migration[7.2]
  def change
    add_column :topics, :name, :string
  end
end
