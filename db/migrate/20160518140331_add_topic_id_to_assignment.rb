class AddTopicIdToAssignment < ActiveRecord::Migration[5.0]
  def change
    add_column :assignments, :topic_id, :integer
  end
end
