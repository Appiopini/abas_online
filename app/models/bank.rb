class Bank < ApplicationRecord
    validates :banco, :agencia, :conta, presence: :true
    has_many :user
end
