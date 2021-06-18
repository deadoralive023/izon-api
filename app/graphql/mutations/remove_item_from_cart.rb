class Mutations::RemoveItemFromCart < Mutations::BaseMutation

        argument :item_id, ID, required: true

        field :item, Types::ItemType, null: true
        field :item_id, ID, null: true
    
        field :errors, [String], null: false
    
        # def allow?(params)
        #     true
        # end
    
        # def resolve(params)
        def resolve(item_id:)
    
            item = Item.find(item_id);
    
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
                errors: item.errors.full_messages
            }
            end
        end
    end