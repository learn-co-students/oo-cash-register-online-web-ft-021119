class CashRegister
  attr_accessor :total, :discount, :items, :cart, :last_transaction
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @cart = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @cart << items
  end
  
  def apply_discount
    if @discount > 0
      @total -= @total * @discount / 100
      # @total -= @total 
      return "After the discount, the total comes to $#{@total}."
    else
     "There is no discount to apply."
    end
  end
  
  def items
    @cart 
  end
  
  def void_last_transaction
   @total -= @last_transaction
  end
end

