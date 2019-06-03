module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :user_name, String, null: false
    field :name, String, null: false
  end
end