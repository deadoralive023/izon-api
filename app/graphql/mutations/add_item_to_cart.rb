class Mutations::AddItemToCart < Mutations::BaseMutation

    argument :product_id, ID, required: true
    argument :cart_id, Integer, required: true
    argument :quantity, Integer, required: true

    field :item, Types::ItemType, null: true
    field :errors, [String], null: false

    # def allow?(params)
    #     true
    # end

    # def resolve(params)
    def resolve(cart_id:, product_id:, quantity:)

        cart = Cart.find(cart_id);                        #this to Change later
        product = Product.find(product_id);
        if(!cart)
            cart = Cart.create(user_id:1);        #user_id to Change later
        end

        item = Item.new(quantity: quantity, product_id: product_id, cart_id: cart.id, price: product.price);

        if item.save()
            { 
                item: item,
                errors: []
            }
        else
            { 
                item: nil,
                errors: item.errors.full_messages
            }
        end

    end
end