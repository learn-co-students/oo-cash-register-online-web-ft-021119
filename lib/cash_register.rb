
require 'pry'
class CashRegister
   attr_accessor :total, :discount, :cart

   def initialize(discount = 0)
     @total = 0
     @discount = discount
     @cart = []
     @last_transaction = 0
   end

   def add_item(item, price, quantity = 1)
       @total += price * quantity
       quantity.times do
         @cart << item
       end
       @last_transaction = price * quantity
   end


   def apply_discount
    #  @total = @total - (@total * (@discount/100.00))
    #  return "After the discount, the total comes to $#{total.to_i}."
     if @discount > 0
       @total -= @total * @discount / 100
       return "After the discount, the total comes to $#{@total}."

      else
        "There is no discount to apply."
     end
   end


    #  def reduces_total
    #    @total = @total.reduce
    #  end

  def items
     return @cart
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
