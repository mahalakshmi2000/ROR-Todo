class CreateForms < ActiveRecord::Migration[6.1]
  def change
    create_table :forms do |t|
      t.string :First_name
      t.string :Last_name
      t.string :Email
      t.integer :Age
      t.timestamps
    end
  end
end
