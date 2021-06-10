module Types
    class ItemType < Types::BaseObject
      field :id, ID, null: false
      field :cart_id, ID, null: true
      field :product_id, ID, null: true

      field :product, Types::ProductType, null: true


      field :quantity, Integer, null: false
      field :price, Float, null: true

      # field :posts, [Types::PostType], null: true

      # field :image_url, String, null: true
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
  