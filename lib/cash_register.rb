require "pry"

class CashRegister
  attr_accessor :total, :cash_register, :cash_register_with_discount, :all_items, :all_transactions
  
  def initialize(employee_discount = nil)
    @total = 0 
    
    @employee_discount = employee_discount
    
    @all_items = []
    
    @all_transactions = []
    
    if @employee_discount == nil 
      @cash_register = self
    elsif @employee_discount > 0
      @cash_register_with_discount = self
    end
    
    def discount 
        @employee_discount
    end 
    
  end 
  
  def add_item(title, price, quantity = nil)
    if quantity == nil 
      @total += price
      @all_items << title
      @all_transactions << price 
    else 
      @total += price*quantity
      quantity.times {@all_items << title}
      @all_transactions << price*quantity 
    end 
    @total 
  end 
  
  def apply_discount
    if discount == nil 
      "There is no discount to apply."
    else 
      percent_off = @cash_register_with_discount.discount*0.01 
      @total = @total - @total*percent_off
      "After the discount, the total comes to $#{@total.round}."
    end 
  end 
  
  def items 
    @all_items 
  end 
  
  def void_last_transaction
    @total = @total - @all_transactions.last
    @total 
  end 
  
end 
