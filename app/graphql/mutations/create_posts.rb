module Mutations
  class CreatePosts < BaseMutation
    graphql_name 'CreatePosts'

    field :posts, String, null: true

    argument :posts, [Types::PostInputObject], required: false

    def resolve(**args)
      posts = args[:posts].each do |arg|
        post = Post.create(title: arg.title, description: arg.description)
      end
      {
        posts: posts
      }
    end
  end
end
