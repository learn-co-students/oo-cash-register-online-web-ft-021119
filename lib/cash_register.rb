class CashRegister
  
  attr_accessor :total, :item, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = [] 
  end 
  
  def discount
    @discount
  end
  
  def total
    @total
  end 
  
  def add_item(item, price, quantity = 1)
    @last_item_price = price
    @item = item 
    @quantity = quantity
    @cart.concat([item] * quantity)
    @total += price * quantity
  end 
  
  def apply_discount 
    @total -= @total * @discount / 100
    if @discount > 0 
      "After the discount, the total comes to $#{@total}."
    else "There is no discount to apply."
    end
  end 
  
  def items
    @cart
  end 
  
  def void_last_transaction
    @total -= @last_item_price
  end 
  
end
