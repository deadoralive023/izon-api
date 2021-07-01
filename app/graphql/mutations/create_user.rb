class Mutations::CreateUser < Mutations::BaseMutation

    argument :email, String, required: true
    argument :name, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    # def allow?(params)
    #     true
    # end

    # def resolve(params)
    def resolve(email:, name:, password:)
        user = User.new(email: email, name: name, password: password);                        #this to Change later
       
        if user.save()
            { 
                user: user,
                errors: []
            }
        else
            { 
                user: nil,
                errors: item.errors.full_messages
            }
        end
    end
end