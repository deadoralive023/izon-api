class Mutations::LoginUser < Mutations::BaseMutation

    argument :email, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: true
    field :token, String, null: true
    field :errors, [String], null: false

    # def allow?(params)
    #     true
    # end
    # def resolve(params)
    def resolve(email:, password:)
        user = User.find_by_email(email);      
        return {error: "Unauthorized"} unless user     
        return {error: "Unauthorized"} unless user.valid_password?(password)                  #this to Change later
                     
        encrypted_token = cryptor.encrypt_and_sign(user.id)

        {user: user, token: encrypted_token}
    end

    private

    def cryptor
    ActiveSupport::MessageEncryptor.new(Rails.application.secrets.secret_key_base.byteslice(0..31))
    end
end