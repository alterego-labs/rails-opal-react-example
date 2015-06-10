require 'components/add_post_form_view'
require 'components/posts_list'

class MainView
  include React::Component

  define_state(:data) { [] }

  params do
    optional :posts, type: Array[Object], default: []
  end

  before_mount do
    self.data = params[:posts]
  end

  def handle_new_post(post)
    puts 'handle_new_post'
    posts = self.data
    posts.unshift post
    self.data = posts
    save_in_db(post)
  end

  def save_in_db(post)
    HTTP.post('/posts', payload: post)
  end

  def render
    div do
      div(class_name: :'page-header') do
        h2 { 'Posts wall' }
      end
      add_view = present(AddPostFormView)
      present PostsList, posts: self.data

      add_view.on(:new_post) { |post| handle_new_post(post) }
    end
  end
end
