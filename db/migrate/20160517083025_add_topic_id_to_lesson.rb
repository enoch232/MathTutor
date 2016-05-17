class AddTopicIdToLesson < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :topic_id, :integer
  end
end
