class PostItem
  include React::Component

  def user_name
    params[:post][:user_name]
  end

  def body
    params[:post][:body]
  end

  def render
    div(class_name: 'media') do
      div(class_name: 'media-body') do
        h4(class_name: 'media-heading') { user_name }
        span { body }
      end
    end
  end
end
