class Application < ApplicationRecord
    belongs_to :user
    has_many :interviews, through: :users

end
