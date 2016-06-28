class CreateAboutmes < ActiveRecord::Migration[5.0]
  def change
    create_table :aboutmes do |t|
      t.text :description

      t.timestamps
    end
  end
end
