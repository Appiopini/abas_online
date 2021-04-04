class BrasilApi
  include HTTParty

  def self.banks

    HTTParty.get('https://brasilapi.com.br/api/banks/v1/#')

  end

  def self.bank(code fullname)

    HTTParty.get("https://brasilapi.com.br/api/banks/v1/#{code}")

  end

end
