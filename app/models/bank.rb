class Bank < ApplicationRecord
    validates :name, :address, :code, presence: :true
    has_many :user
    has_many :account
end
