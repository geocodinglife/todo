class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :position
      t.string :priority
      t.string :state
      t.integer :task_id
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
