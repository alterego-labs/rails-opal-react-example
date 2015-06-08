require 'opal-react'
require 'components/hello_message'

Document.ready? do
  React.render React.create_element(HelloMessage), Element.find("#content")
end
