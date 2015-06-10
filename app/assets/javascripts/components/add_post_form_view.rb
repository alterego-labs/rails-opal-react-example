class AddPostFormView
  include React::Component

  def handle_click
    puts 'Form click!'
    return false
  end

  def render
    form(class_name: 'form-inline') do
      div(class_name: 'form-group') do
        label(class_name: 'sr-only', htmlFor: 'user_name') { 'User name' }
        input(type: :text, class_name: 'form-control', id: 'user_name', name: 'user_name', placeholder: 'User name')
      end
      div(class_name: 'form-group') do
        label(class_name: 'sr-only', htmlFor: 'post_body') { 'Body' }
        input(type: :text, class_name: 'form-control', id: 'post_body', name: 'post_body', placeholder: 'Body')
      end
      submit_button = input(type: :submit, class_name: 'btn btn-default')

      submit_button.on :click do
        handle_click
      end
    end
  end
end
