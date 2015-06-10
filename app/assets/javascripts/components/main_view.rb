require 'components/add_post_form_view'

class MainView
  include React::Component

  define_state(:data) { [] }

  params do
    optional :posts, type: Array[Object], default: []
  end

  before_mount do
    self.data = params[:posts]
  end

  def render
    div do
      div(class_name: :'page-header') do
        h2 { 'Posts wall' }
      end
      present AddPostFormView
    end
  end
end
