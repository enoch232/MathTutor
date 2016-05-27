# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class AnnouncementChannel < ApplicationCable::Channel
  def subscribed
    stream_from "announcement_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	ActionCable.server.broadcast "announcement_channel", {title: data['title'], description: data['description'], path: data['path']}
  end
end
