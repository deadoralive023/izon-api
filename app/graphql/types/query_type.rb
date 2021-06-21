module Types
  class QueryType < Types::BaseObject
    field :categories, resolver: Queries::Categories
    field :category, resolver: Queries::Category
    field :products, resolver: Queries::Products
    field :product, resolver: Queries::Product
    field :users, resolver: Queries::Users
    field :user, resolver: Queries::User
    field :cart, resolver: Queries::Cart
    field :getCartId, resolver: Queries::Cart
  end
end
