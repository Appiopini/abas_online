class Bank < ApplicationRecord
    has_many :user
    has_many :account
end
