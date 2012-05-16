class SendTextControllerController < ApplicationController
  def index
  end

  def send_text_message
    #number_to_send_to = params[:number_to_send_to]

    twilio_sid = ENV['twilio_sid']
    twilio_token = ENV['twilio_token']
    twilio_phone_number = "(215) 352-5455"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => '2154706093',
      :body => "Hey Jin this is Curbside - Just wanted to check in"
    )
    redirect_to root_path
  end
end
