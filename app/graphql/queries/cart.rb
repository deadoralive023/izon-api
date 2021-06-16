module Queries
    class Cart < Queries::BaseQuery
        description "Get Cart by User ID."
        argument :user_id, ID, required: true
        type Types::CartType, null: false

        def resolve(user_id:)
            ::Cart.find_by({user_id: user_id})
            # Cart.find_by(user_id)
        end

        # field :user, Types::UserType, null: false do
        #     argument :id, ID, required: true
        # end
       
        
    end
end

