class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :Task
      t.date :Date
      t.boolean :Status

      t.timestamps 
      
    end
  end
end
