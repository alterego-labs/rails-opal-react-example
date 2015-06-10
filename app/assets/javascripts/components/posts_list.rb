require 'components/post_item'

class PostsList
  include React::Component

  def render
    div do
      params[:posts].map do |post|
        present PostItem, post: post
      end
    end
  end
end
