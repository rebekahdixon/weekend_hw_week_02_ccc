class Guest

  attr_reader :name

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def wallet_content
    return @wallet
  end

  def has_money?(price)
  return  @wallet >= price
end

def pay_money(price)
  if has_money?(price)
    @wallet -= price
    return true
  end
end


end
