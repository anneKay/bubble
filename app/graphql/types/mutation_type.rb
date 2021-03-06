module Types
  class MutationType < Types::BaseObject
    field :create_category, mutation: Mutations::CreateCategory
    field :create_user, mutation: Mutations::CreateUser
    field :sign_in_user, mutation: Mutations::SignInUser
    field :create_post, mutation: Mutations::CreatePost
    field :create_comment, mutation: Mutations::CreateComment
  end
end
