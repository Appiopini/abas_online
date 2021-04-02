class Account < ApplicationRecord
  validates :name, :number, presence: :true
  belongs_to :user
  belongs_to :bank
end
