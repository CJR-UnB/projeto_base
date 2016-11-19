#= require jquery
#= require jquery.turbolinks
#= require jquery_ujs
#= require bootstrap-sprockets
#= require bootstrap

#  Other scripts here

#= require turbolinks
#= require turbolinks-compatibility
#= require_tree .

$(document).ready ->
  $('.nav-tabs a').click ->
    $(this).tab 'show'