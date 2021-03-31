class BankController < ApplicationController
    def index
        banks = Bank.where(user: current_user)

        @banks = banks.sort_by (name: :asc)
    end

    def show
        @bank = Bank.find(params[:id])
    end

    def new
        @bank = Bank.new
    end

    def create
        @bank = Bank.new(bank_params)
        @bank.user = current_user
        if @bank.save
            redirect_to bank_path(@bank), notice: 'Bank created'
        else
            render :new
        end
    end

    def edit
        @bank = Bank.find(params[:id])
        unless @bank.user == current_user
            redirect_to root_path, notice: 'Not Allowed to Edit !'
        end
    end

    def update
        @bank = Bank.find(params[:id])
        unless @bank.user == current_user
        redirect_to root_path, notice: 'Not allowed to Update 😥'
        end
        # authorize @bank
        if @bank.update(bank_params)
        redirect_to bank_path(@bank), notice: 'Bank updated!'
        else
        render :edit
        end
    end

    def destroy
        @bank = Bank.find(params[:id])
        unless @bank.user == current_user
            redirect_to root_path, notice: 'Not allowed to Delete 😠'
        end
        # authorize @bank
        @bank.update(remove: true)
        redirect_to banks_path, notice: 'Bank destroyed!'
    end

end
