Rails.application.routes.draw do
  mount_graphql_devise_for User, at: 'graphql_auth'
  post "/graphql", to: "graphql#execute"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
end
