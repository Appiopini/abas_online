class BankController < ApplicationController
    def index
        banks = Bank.where(user: current_user)
    end
end
