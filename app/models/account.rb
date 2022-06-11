class Account < ApplicationRecord
    # has_many :transactions, class_name: "transaction", foreign_key: "reference_id"
    # belongs_to :user, class_name: "user", foreign_key: "user_id"
    belongs_to :user
    has_many :transacs
    validates :name, :account_type, presence: true
    
    
end
