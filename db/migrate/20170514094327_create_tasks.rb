class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :description, null: false
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
