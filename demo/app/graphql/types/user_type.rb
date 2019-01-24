module Types
  class UserType < Types::BaseObject
    description "Member of awesome service"

    field :name, String, "a user's name", null: false
    field :age, Integer, "a user's age", null: false
    field :posts, [Types::PostType], "a user's posts", null: false

    def name
      object.name
    end

    def age
      object.age
    end

    def posts
      AssociationLoader.for(User, :posts).load(object)
    end
  end
end
