class CreateJobOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :job_offers do |t|
      t.integer :interview_id
      t.integer :user_id
      t.string :career
      t.string :title
      t.integer :salary

      t.timestamps
    end
  end
end
