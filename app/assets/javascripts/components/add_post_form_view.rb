class AddPostFormView
  include React::Component

  def handle_submit(event)
    puts 'handle_submit'
    event.prevent_default
    user_name = self.refs[:user_name].dom_node.value.strip
    post_body = self.refs[:post_body].dom_node.value.strip
    return if user_name.blank? || post_body.blank?
    self.emit(:new_post, {user_name: user_name, body: post_body})
    self.refs[:user_name].dom_node.value = ""
    self.refs[:post_body].dom_node.value = ""
  end

  def render
    add_form = form(class_name: 'form-inline') do
      div(class_name: 'form-group') do
        label(class_name: 'sr-only', htmlFor: 'user_name') { 'User name' }
        input(type: :text, class_name: 'form-control', id: 'user_name', name: 'user_name', placeholder: 'User name', ref: :user_name)
      end
      div(class_name: 'form-group') do
        label(class_name: 'sr-only', htmlFor: 'post_body') { 'Body' }
        input(type: :text, class_name: 'form-control', id: 'post_body', name: 'post_body', placeholder: 'Body', ref: :post_body)
      end
      input(type: :submit, class_name: 'btn btn-default')
    end

    add_form.on :submit do |event|
      handle_submit(event)
    end
  end
end
