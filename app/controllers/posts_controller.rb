class PostsController < ApplicationController
  def index
    gon.posts = Post.recent.map do |post|
      {user_name: post.user_name, body: post.body}
    end.to_json
  end
end
