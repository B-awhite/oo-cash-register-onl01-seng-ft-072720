class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end 
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
     items << item 
    end 
        i += 1
      end
    else
      @items << item
    end
  end
   
  def apply_discount
     if @discount > 0
       @employee_discount = (price * discount)/100
      @total -= @employee_discount
       return "After the discount, the total comes to $#{total}."
      else
       return "There is no discount to apply."
    end 
  end  
  
  def void_last_transaction
    @total -= @price 
  end
  
end 

