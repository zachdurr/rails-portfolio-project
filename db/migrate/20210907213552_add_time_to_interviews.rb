class AddTimeToInterviews < ActiveRecord::Migration[6.1]
  def change
    add_column :interviews, :time, :datetime
  end
end
