module Queries
  class Product < Queries::BaseQuery
    description "Get Product by id"
    type Types::ProductType, null: false
    argument :id, Integer, required: true

    def resolve(id:)
        ::Product.find_by({id: id})
    end

  end
end
