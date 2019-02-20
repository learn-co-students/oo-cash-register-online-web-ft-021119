class CashRegister
  attr_accessor :discount, :total, :price, :items
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount 
    @items = []
  end 
  
  def add_item(title, price, quantity=1)
    @price = price 
    @total += price*quantity
    
    i = 0
    while quantity > i
      @items << title
      i+=1
    end
  end 
  
  def apply_discount
    if @discount > 0 
      @total = @total*(1-@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total -= @price
  end 
  
end 