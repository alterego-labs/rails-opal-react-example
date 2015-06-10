class PostsController < ApplicationController
  def index
    gon.posts = Post.recent.map do |post|
      {user_name: post.user_name, body: post.body}
    end
  end

  def create
    Post.create post_create_params
    render nothing: true
  end

  private

  def post_create_params
    params.require(:post).permit(:user_name, :body)
  end
end
