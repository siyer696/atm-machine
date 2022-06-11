class Account < ApplicationRecord
    # has_many :transactions, class_name: "transaction", foreign_key: "reference_id"
    has_many :transacs
    validates :name, :account_type, presence: true
    
    
end
