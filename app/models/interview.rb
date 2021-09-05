class Interview < ApplicationRecord
    belongs_to :user
    belongs_to :application
    has_many :job_offers, through: :users
end
