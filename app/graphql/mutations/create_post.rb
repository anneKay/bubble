module Mutations
  class CreatePost < Mutations::BaseMutation
    # arguments passed to the `resolved` method
    argument :description, String, required: true

    # return type from the mutation
    type Types::PostType

    def resolve(description: nil)
      Post.create!(
       description: description,
       user: context[:current_user]
      )
    end
  end
end