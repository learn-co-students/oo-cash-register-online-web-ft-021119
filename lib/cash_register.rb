class CashRegister

  attr_accessor :total, :discount, :previous_total, :price

  def initialize
    @CashRegister = CashRegister.new
    @previous_total = 0
    @total = 0
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity=0)
    @total = @previous_total + (price*quantity)
    @total
  end

end
