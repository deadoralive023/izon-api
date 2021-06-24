Rails.application.routes.draw do
  resources :messages
  mount_graphql_devise_for User, at: 'graphql_auth'

  
  # ---------------------------------------------------------
  # mount_graphql_devise_for(
  #   User,
  #   at: 'api/v1',
  #   authenticatable_type: Types::MyCustomUserType,
  #   operations: {
  #     login: Mutations::Login
  #   },
  #   skip: [:register],
  #   additional_mutations: {
  #     # generates mutation { adminUserSignUp }
  #     admin_user_sign_up: Mutations::AdminUserSignUp
  #   },
  #   additional_queries: {
  #     # generates query { publicUserByUuid }
  #     public_user_by_uuid: Resolvers::UserByUuid
  #   }
  # )

  # # Providing options to a GraphqlDevise::ResourceLoader
  # GraphqlDevise::ResourceLoader.new(User, {})

  # ----------------------------------------------------------------------
  

  mount ActionCable.server => '/cable'
  post "/messages" => "messages#create"

  post "/graphql", to: "graphql#execute"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
end
