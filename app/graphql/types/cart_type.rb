module Types
    class CartType < Types::BaseObject
      field :id, ID, null: false
      field :user_id, ID, null: true

      field :items, [Types::ItemType], null: true

      # field :posts, [Types::PostType], null: true

    #   field :image_url, String, null: true
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
  