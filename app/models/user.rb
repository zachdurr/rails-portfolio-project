class User < ApplicationRecord
    has_secure_password

    has_many :interviews
    has_many :applications, through: :interviews
    has_many :job_offers, through: :interviews
    validates :username, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true

    def full_name
        self.first_name + " " + self.last_name
    end

end
