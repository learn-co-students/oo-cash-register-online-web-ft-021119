require 'pry'
class CashRegister
  attr_accessor :total, :discount, :new_total, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def add_item(item, price, quantity = 1)
      @new_total = self.total += price*quantity
      quantity.times { self.items << item}
      self.last_transaction = price
  end

  def apply_discount
    if self.discount > 0
      #binding.pry
      self.discount = (@discount/100.to_f)*@new_total
      self.total -= @discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction
    self.total -= @last_transaction
    self.total
  end

#binding.pry

end
