class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.text :cover_letter
      t.text :resume
      t.text :additional_information
      t.integer :user_id

      t.timestamps
    end
  end
end
