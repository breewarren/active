class Recovery < ApplicationRecord

    has_many :recovery_logs
    has_many :users, through: :recovery_logs

    # def self.recovery_quotes
    #     recovery_quotes = ["test quote 1", "test quote 2"]
    #     recovery_quote.sample
    # end

end