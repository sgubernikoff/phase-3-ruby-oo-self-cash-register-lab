require 'pry'
class CashRegister


    attr_accessor :total, :discount, :items

def initialize  discount = 0
    @total = 0
    @discount = discount
    @items = []
end

def add_item title, price, quantity = 1
    self.total += (price * quantity)
    quantity.times do |i|
    @items << title
    end
end

def apply_discount
    if discount > 0
    @total =@total - ((discount / 100.0) * @total) 
    "After the discount, the total comes to $#{total.to_i}."
    else "There is no discount to apply."
    end
end    

end
