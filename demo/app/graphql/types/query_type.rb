module Types
  class QueryType < Types::BaseObject
    # field :users, [UserType], "returns all users", null: false
    field :users, UserType.connection_type, "returns all users", null: false

    def users
      User.all
    end
  end
end
