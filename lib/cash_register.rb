require 'pry'

class CashRegister
  attr_accessor :total, :items, :discount, :price
  attr_reader :cart, :previous_total

  def initialize(discount=nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity=1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
    @total
  end

  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      @total = (100 - @discount) * 0.01.to_f * @total
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total =  @total - @price
    @total
  end


end
