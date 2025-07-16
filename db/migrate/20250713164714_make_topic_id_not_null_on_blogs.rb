
class MakeTopicIdNotNullOnBlogs < ActiveRecord::Migration[7.2]
  def change

    change_column_null :blogs, :topic_id, false
  end
end

