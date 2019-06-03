require 'test_helper'

class Mutations::CreateCategoryTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateCategory.new(object: nil, context: {}).resolve(args)
  end

  test 'create a new link' do
    category = perform(
      name: 'sensitive',
      post: 'i have been up all night',
    )

    assert category.persisted?
    assert_equal category.name, 'sensitive'
    assert_equal category.post, 'i have been up all night'
  end
end