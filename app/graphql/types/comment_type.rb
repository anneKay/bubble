module Types 
  class CommentType < BaseObject
    field :id, ID, null: false
    field :description, String, null: false
    field :post, PostType, null: false
    field :user, UserType, null: true, method: :user
  end
end