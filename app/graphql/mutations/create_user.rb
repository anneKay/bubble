module Mutations
  class CreateUser < Mutations::BaseMutation
    # input types for specific mutations
    class AuthProviderSignupData < Types::BaseInputObject
      argument :email, Types::AuthProviderEmailInput, required: true
    end
    
    # arguments passed to the resolved method
    argument :name, String, required: true
    argument :user_name, String, required: true
    argument :auth_provider, AuthProviderSignupData, required: true

    # return type from mutation
    type Types::UserType

    def resolve(name:nil, user_name:nil, auth_provider:nil)
      User.create!(
        name: name,
        user_name: user_name,
        email: auth_provider&.email&.email,
        password: auth_provider&.email&.password
      )
    end
  end
end