module Mutations
  class CreateCategory < Mutations::BaseMutation
    # arguments passed to the `resolved` method
    argument :name, String, required: true
    argument :post, String, required: true

    # return type from the mutation
    type Types::CategoryType

    def resolve(name: nil, post: nil)
      Category.create!(
        name: name,
        post: post,
      )
    end
  end
end