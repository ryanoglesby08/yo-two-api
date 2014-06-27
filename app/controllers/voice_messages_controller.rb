class VoiceMessagesController < ApplicationController
  def index
    my_params = my_voice_messages_params
    @voice_messages = VoiceMessage.where(to: my_params['for'])
  end

  def show
    @voice_message = VoiceMessage.find(params[:id])
  end

  def create
    @voice_message = VoiceMessage.new(voice_message_params)

    if @voice_message.save
      render :show, status: :created, location: @voice_message
    else
      render_errors :unprocessable_entity, @voice_message.errors.full_messages
    end
  end

  private
    def voice_message_params
      params.require(:voice_message).permit(:location, :from, :to)
    end

    def my_voice_messages_params
      params.require(:for)
    end

end
