class Item < ApplicationRecord

    belongs_to :product
    belongs_to :cart
  
    # LOGIC
    def total_price
        self.quantity * self.price
    end

end