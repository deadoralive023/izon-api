module Types
  class MutationType < Types::BaseObject

    field :change_item_quantity, mutation: Mutations::ChangeItemQuantity

    field :remove_item_from_cart, mutation: Mutations::RemoveItemFromCart

    field :add_item_to_cart, mutation: Mutations::AddItemToCart

    field :create_user, mutation: Mutations::CreateUser
    field :login_user, mutation: Mutations::LoginUser


    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
  end
end


