class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :position
      t.integer :priority
      t.boolean :state
      t.string :type

      t.timestamps
    end
  end
end
