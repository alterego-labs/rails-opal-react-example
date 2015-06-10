require 'components/add_post_form_view'

class MainView
  include React::Component

  def render
    div do
      div(class_name: :'page-header') do
        h2 { 'Posts wall' }
      end
      present AddPostFormView
    end
  end
end
