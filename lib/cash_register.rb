class CashRegister
    
    attr_accessor :discount, :total, :items, :title, :quantity, :last_transaction

    def initialize(*discount)
        @discount = discount[0]
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity=1)
        quantity.times {self.items << title} 
        @last_transaction = price * quantity
        self.total += price*quantity
    end

    def apply_discount  
        if self.discount
            self.total = (self.total.to_f - (self.total * discount / 100)).to_i
            "After the discount, the total comes to $#{total}."
        else "There is no discount to apply."
        end
    end
    
    def void_last_transaction
        self.total -= last_transaction
    end
end