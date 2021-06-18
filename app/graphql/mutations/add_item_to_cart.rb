class Mutations::AddItemToCart < Mutations::BaseMutation

    argument :product_id, ID, required: true

    field :item, Types::ItemType, null: true
    field :errors, [String], null: false

    # def allow?(params)
    #     true
    # end

    # def resolve(params)
    def resolve(product_id:)

        cart = Cart.find(1);                        #this to Change later
        product = Product.find(product_id);
        if(!cart)
            cart = Cart.create(user_id:1);        #user_id to Change later
        end

        item = Item.new(quantity: 1, product_id: product_id, cart_id: cart.id, price: product.price);

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