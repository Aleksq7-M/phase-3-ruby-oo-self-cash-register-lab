class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction


    def initialize (discount = 0, total = 0)
        @total = total
        @discount = discount  
        @items = []
        @last_transaction = 0
    end

    def add_item (item, price, quantity = 1)
        if quantity != nil
            self.total += price*quantity
            quantity.times {self.items << item}
            self.last_transaction = price*quantity
        else
            self.total += price
        end
    end

    def apply_discount
        if @discount != 0
            self.total -= (@total * @discount / 100)
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= @last_transaction

    end
end

