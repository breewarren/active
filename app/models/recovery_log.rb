class RecoveryLog < ApplicationRecord
    belongs_to :user 
    belongs_to :recovery 

end
