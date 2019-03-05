require 'pry'
                        # Note that a discount is calculated as a percentage off of the total cash register price
                        # (e.g. a discount of 20 means the customer receives 20% off of their total price).

                        # Hint #1: Keep in mind that to call an instance method inside another instance method, we use the self
                        # keyword to refer to the instance on which we are operating.

                        # Hint #2: The apply_discount requires some knowledge about working with an Integer versus a Float in Ruby.
                        # Note that 100.class returns Integer while 100.0.class returns Float. Ruby provides methods for changing an object of type Integer to a Float and vice versa.

                        # Hint #3: The void_last_transaction method will remove the last transaction from the total.
                        # You'll need to make an additional attribute accessor and keep track of that last transaction amount somehow.
                        # In what method of the class are you working with an individual item?

class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def cash_register_with_discount
    self.discount = 20
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total = self.total + (price * quantity)
    self.total
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if discount != 0
      self.total = self.total - (self.total * 0.2)
      "After the discount, the total comes to $#{(self.total).to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.total
  end

end
