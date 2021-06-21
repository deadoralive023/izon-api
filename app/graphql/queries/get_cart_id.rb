module Queries
  class GetCartId < Queries::BaseQuery
    description "Get Cart ID by User"

    argument :user_id, ID, required: true
    type int, null: false

    def resolve(user_id:)
      ::Cart.find(user_id)
    end
  end
end
