class AddUserToApplication < ActiveRecord::Migration[6.1]
  def change
    add_reference :applications, :user, index: true, foreign_key: true
  end
end
