class Recovery < ApplicationRecord
    has_many :recovery_logs
    has_many :users, through: :recovery_logs
end
