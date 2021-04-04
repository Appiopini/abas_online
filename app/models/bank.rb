class Bank < ApplicationRecord
    validates :banco, :agencia, :conta, :code, presence: :true
    has_many :user
end
