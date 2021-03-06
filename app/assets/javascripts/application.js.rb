# frozen_string_literal: true

require 'opal'
require 'rails-ujs'
require 'activestorage'
require 'turbolinks'
require_tree '.'
require 'jquery3'
require 'semantic-ui'
require 'semantic-ui/accordion'
require 'semantic-ui/transition'
require 'semantic-ui/dropdown'
require 'jszip'
require 'datatables'

`document.addEventListener("DOMContentLoaded", function() {#{Document.new};})`

`$('.ui.checkbox')
  .checkbox()
;
$(document).ready(function(){
  $('.ui.accordion').accordion();
});`
