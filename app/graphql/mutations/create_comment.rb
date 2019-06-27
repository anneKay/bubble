module Mutations
  class CreateComment < BaseMutation

    # arguments passed in mutations
    argument :post_id, ID, required: true
    argument :description, String, required: true

    # return types from mutation
    type Types::CommentType

    def resolve(post_id: nil, description: nil)
      Comment.create!(
        post: Post.find(post_id),
        user: context[:current_user],
        description: description
      )
    end

  end
end