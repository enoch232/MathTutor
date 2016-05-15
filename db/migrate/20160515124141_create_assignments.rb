class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.string :duedate

      t.timestamps
    end
  end
end
