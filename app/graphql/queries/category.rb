module Queries
  class Category < Queries::BaseQuery
    description "Get Category by ID."

    argument :id, ID, required: true
    type Types::CategoryType, null: false

    def resolve(id:)
      ::Category.find(id)
    end
  end
end
