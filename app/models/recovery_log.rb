class RecoveryLog < ApplicationRecord
    belongs_to :user 
    belongs_to :recovery 

    validates :date, presence: true
end
