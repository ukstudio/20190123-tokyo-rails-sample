module Types
  class QueryType < Types::BaseObject
    field :users, [UserType], "returns all users", null: false
    field :posts, [PostType], "returns all posts", null: false

    def users
      User.all
    end
  end
end
