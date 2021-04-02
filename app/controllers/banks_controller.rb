class BanksController < ApplicationController
  def index
    @banks = Bank.all
  end

  def show
    @bank = Bank.find(params[:id])
    @account = Account.new
  end

  def new
    @bank = Bank.new
  end

  def create
    @bank = Bank.new(bank_params)
    if @bank.save
        redirect_to bank_path(@bank)
    else
      render :new
    end
  end

  def edit
    @bank = Bank.find(params[:id])
    redirect_to root_path, notice: 'Not Allowed to Edit !'
  end

  def update
    @bank = Bank.find(params[:id])
    # redirect_to root_path, notice: 'Not allowed to Update 😥'
    # authorize @bank
    if @bank.update(bank_params)
      redirect_to bank_path(@bank), notice: 'Bank updated!'
    else
      render :edit
    end
  end

  def destroy
    @bank = Bank.find(params[:id])
    # redirect_to root_path, notice: 'Not allowed to Delete 😠'
    # authorize @bank
    @bank.update(remove: true)
    redirect_to banks_path, notice: 'Bank destroyed!'
  end

  private

  def bank_params
      params.require(:bank).permit(:name, :code, :address)
  end

end
