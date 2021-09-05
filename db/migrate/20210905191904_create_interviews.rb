class CreateInterviews < ActiveRecord::Migration[6.1]
  def change
    create_table :interviews do |t|
      t.integer :user_id
      t.integer :application_id
      t.string :career
      t.string :title
      t.integer :salary

      t.timestamps
    end
  end
end
