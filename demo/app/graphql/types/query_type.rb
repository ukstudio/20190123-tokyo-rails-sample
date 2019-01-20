module Types
  class QueryType < Types::BaseObject
    field :users, [UserType], "returns all users", null: false
    field :posts, [PostType], "returns all posts", null: false
  end
end
