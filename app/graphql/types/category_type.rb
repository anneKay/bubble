module Types
  class CategoryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :post, String, null: false
  end
end