module Types
  class PostType < Types::BaseObject
    field :title, String, null: true
    field :content, String, null: true
    field :author, Types::UserType, null: true
  end
end
