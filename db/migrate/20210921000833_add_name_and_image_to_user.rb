class AddNameAndImageToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :image, :string
    add_column :users, :name, :string
  end
end
