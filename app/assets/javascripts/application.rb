require 'opal'
require 'opal_ujs'
require "json"
require 'react'
require 'hello_message'

alert "Hello from jquery + opal"

Document.ready? do
  React.render React.create_element(HelloMessage), `document.getElementById('content')`
  puts 'In document ready!'
end
