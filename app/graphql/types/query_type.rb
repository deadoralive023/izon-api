module Types
  class QueryType < Types::BaseObject
    field :categories, resolver: Queries::Categories
    field :category, resolver: Queries::Category
    field :products, resolver: Queries::Products
  end
end
