module Types
  class UserType < Types::BaseObject
    description "Member of awesome service"

    field :name, String, "a user's name", null: true
    field :age, Integer, "a user's age", null: true
    field :posts, [Types::PostType], "a user's posts", null: true

    def name
      object.name
    end

    def age
      object.age
    end

    def posts
      object.posts
    end
  end
end
