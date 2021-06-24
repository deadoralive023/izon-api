class MessagesController < ApplicationController

  def create
    user = User.find_by(name: params['name'])
    message = Message.create(
      content: params['content'],
      to: 1,
      user_id: user.id
    )
    params.inspect
    if message.valid?   
      ActionCable.server.broadcast 'chat_channel_1', message.content
    else
      puts 'Not Valid'
    end
    render json: message
  end
end
