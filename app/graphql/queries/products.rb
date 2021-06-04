module Queries
  class Products < Queries::BaseQuery
    description "Get all Products"
    type [Types::ProductType], null: false

    def resolve
      ::Product.all
    end

  end
end
