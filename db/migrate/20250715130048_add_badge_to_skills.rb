class AddBadgeToSkills < ActiveRecord::Migration[7.2]
  def change
    add_column :skills, :badge, :text
  end
end
