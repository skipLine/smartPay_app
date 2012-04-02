class TextSenderController < ApplicationController
  def index
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]
    message = params[:sms_message]
    if message.nil?
      message = "Sample message"
    end

    twilio_sid = "AC6af14e7852bc4facac6db7714ae6f802"
    twilio_token = "8c8f85ece993a117d4aa19be079bb5bc"
    twilio_phone_number = "415-599-2671"
    twilio_pin = "4584-0413"

    begin
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => twilio_pin +"sent to #{number_to_send_to}" + message
    )
    rescue StandardError => bang
      redirect_to :action => '.', 'msg' => "Error #{bang}"
      return
    end
      redirect_to :action => '', 'msg' => "Calling #{params['number']}..."
  end
end


