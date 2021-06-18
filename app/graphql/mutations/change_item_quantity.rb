class Mutations::ChangeItemQuantity < Mutations::BaseMutation

    argument :item_id, ID, required: true
    argument :quantity, Integer, required: true
    # argument :change_item_quantity_input, [Types::Input::ChangeItemQuantityInputType], required: true

    field :item, Types::ItemType, null: true
    field :quantity, Integer, null: true


    # def resolve(params)
    def resolve(item_id:, quantity:)

        item = Item.find(item_id)

        if item.update({quantity:quantity})
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



#   class Mutations::CreateUser < Mutations::BaseMutation
#     argument :name, String, required: true
#     argument :email, String, required: true

#     field :user, Types::UserType, null: false
#     field :errors, [String], null: false

#     def resolve(name:, email:)
#         user = User.new(name: name, email: email)
#         if user.save
#          { 
#             user: user,
#             errors: []
#          }
#         else
#          { 
#             user: nil,
#             errors: user.errors.full_messages
#          }
#         end
#     end
# end