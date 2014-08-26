jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

  alert();
  $("#registrations_search input").keyup ->
    console.log "dsd"
    $.get $("#registrations_search").attr("action"), $("#registrations_search").serialize(), null, "script"
    false

  return
