require 'pry'

class CashRegister
  attr_accessor :discount, :total
  attr_reader :item, :price, :quantity
  # attr_writer :total
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    @item, @price, @quantity = item, price, quantity
    @total += @price * @quantity
    @quantity.times {@cart << item}
  end

  def apply_discount
    message = ""
    if @discount > 0
      @total -= (@discount/100.to_f)*@total
      message = "After the discount, the total comes to $#{@total.to_i}."
    else
      message = "There is no discount to apply."
    end
    message
  end #end of apply_discount Instance Method

  def items
    @cart
  end

  def void_last_transaction
    @total -= @price * @quantity
    @quantity.times {@cart.pop}
  end
end #end of Class Cash Register
