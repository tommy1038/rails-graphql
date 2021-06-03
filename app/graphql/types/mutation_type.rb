module Types
  class MutationType < Types::BaseObject
    field :delete_post, mutation: Mutations::DeletePost
    field :update_post, mutation: Mutations::UpdatePost
    field :create_post, mutation: Mutations::CreatePost
    field :create_posts, mutation: Mutations::CreatePosts
  end
end
