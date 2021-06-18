
class Mutations::RemoveItemFromCart < Mutations::BaseMutation
    # module Mutations
        # class ChangeItemQuantity < Mutations::BaseMutation
        # class ChangeItemQuantity < BaseMutation
    
        # arguments passed to the resolve method
        argument :item_id, ID, required: true
        # argument :quantity, Integer, required: true
        # argument :change_item_quantity_input, [Types::Input::ChangeItemQuantityInputType], required: true
    
        field :item, Types::ItemType, null: true
        field :item_id, ID, null: true

        # field :quantity, Integer, null: true
    
        field :errors, [String], null: false
    
        # def allow?(params)
        #     true
        # end
    
        # def resolve(params)
        def resolve(item_id:)
    
            # ::Item.find(item_id)
            item = Item.find(item_id);
            # cart = item.cart;
    
            if item.destroy
            {
                item: item,
                item_id: item.id,
                errors: []
            }
            else
            {  
                item: nil,
                item_id: nil,
                errors: user.errors.full_messages
            }
            end
        end
    end