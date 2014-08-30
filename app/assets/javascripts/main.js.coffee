jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

ready = ->
  $("#registrations").on "click", ".pagination a", ->
    $.getScript @href
    false

  $("#search-field").on "keyup", ->
    $.get $("#registrations_search").attr("action"), $("#registrations_search").serialize(), null, "script"
    false

  return
$(document).ready ready
$(document).on "page:load", ready