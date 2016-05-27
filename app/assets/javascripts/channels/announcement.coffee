App.announcement = App.cable.subscriptions.create "AnnouncementChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $(".index-announcement-holder").prepend("<a href = '/announcements/#{data["path"]}'><div class = 'announcement'><span style = 'font-size:1rem;margin-left:1rem'>Posted just now. </span><br /><span style = 'margin-left:1rem'>#{data['title']}</span></div></a>")
   	$("#announcement-modal-title").text("Announcement: #{data['title']}")
   	$("#announcement-modal-body").text(data['description'])
   	$("#announcement-modal").modal({"backdrop" : "static","keyboard":"true"})
  speak: (title, description, path) ->
  	@perform 'speak', {title: title, description: description, path: path }

