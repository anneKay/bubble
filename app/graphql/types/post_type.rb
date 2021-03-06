module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :description, String, null: false
    field :user, UserType, null: true, method: :user
  end
end