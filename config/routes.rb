Rails.application.routes.draw do
  resources :messages
  mount_graphql_devise_for User, at: 'graphql_auth'
  mount ActionCable.server => '/cable'
  post "/messages" => "messages#create"
  post "/graphql", to: "graphql#execute"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
end
