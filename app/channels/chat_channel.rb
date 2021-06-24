class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel_#{params[:room_id]}"
    #ActionCable.server.broadcast "chat_channel_1", "Yahooo!!!!"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
