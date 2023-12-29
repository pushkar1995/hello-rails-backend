class Api::V1::MessagesController < ApplicationController
  def index
    render json: { success: true, message: Message.order('RANDOM()').first }
  end
end
