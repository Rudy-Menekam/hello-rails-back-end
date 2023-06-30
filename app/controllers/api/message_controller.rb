class Api::MessageController < ApplicationController
  def random_greeting
    random_message = Message.order('RANDOM()').first
    if random_message
      render json: { greeting: random_message.greeting }
    else
      render json: { greeting: 'No greeting found' }
    end
  end
end
