class AddLessonIdToAssignment < ActiveRecord::Migration[5.0]
  def change
    add_column :assignments, :lesson_id, :integer
  end
end
