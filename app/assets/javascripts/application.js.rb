require 'opal'
require 'rails-ujs'
require 'activestorage'
require 'turbolinks'
require_tree '.'
require 'jquery3'
require 'bootstrap'
require 'datatables'

# Test if this is a modern browser before attempting to start the application
`if (window.opener !== undefined || /Edge\/16/.test(window.navigator.userAgent)) {
  document.addEventListener("DOMContentLoaded", function() {#{Document.new};})
}`
