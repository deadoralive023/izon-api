module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :price, Float, null: true
    field :stock, Integer, null: true
    field :image_url, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
