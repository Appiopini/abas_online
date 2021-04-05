

# puts response.body, response.code, response.message, response.headers.inspect

class BrasilsController < ApplicationController

  def new
    @brasil = Brasil.new
  end

  def index

    @bank_list = BrasilApi.banks
    # se o params existir vai bater na rota que tem o /{code}
    if params[:bank_code]
      @bank_list = [BrasilApi.bank(params[:bank_code])]
    end

  end

  def show
    @brasil = params[:code, :name]
    response = HTTParty.get('https://brasilapi.com.br/api/banks/v1')

    @responses = response.body

  end

end


