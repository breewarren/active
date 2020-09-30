class RecoveryLog < ApplicationRecord
    belongs_to :user 
    belongs_to :recovery 


    # def pretty_date
    #     date = self.date
    #     date.strftime("Test %m/%d/%Y")
    # end
end
