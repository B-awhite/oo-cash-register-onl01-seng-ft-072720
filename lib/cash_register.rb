class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
    @last_transaction
  end 
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
     items << item 
    end 
    self.last_transaction = price - quantity
  end
   
  def apply_discount
     if @discount != 0
       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
       return "After the discount, the total comes to $#{total}."
      else
       return "There is no discount to apply."
    end 
  end  
  
  def void_last_transaction
    @total -= @price
  end
 
end 

