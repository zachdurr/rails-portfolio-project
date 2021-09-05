class User < ApplicationRecord
    has_secure_password

    has_many :applications
    has_many :interviews, through: :applications
    has_many :job_offers, through: :interviews

end
