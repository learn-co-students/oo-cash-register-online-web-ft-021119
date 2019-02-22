
require 'pry'
class CashRegister
attr_accessor :total, :discount


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
                   @last_transaction = price *quantity

				end
                  

                  		def apply_discount
                  			if @discount >0
                  			@total = @total - @total * (@discount/100.00)
                  			@total
                  			 "After the discount, the total comes to $#{@total.to_i}."
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
