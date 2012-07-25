class SendTextControllerController < ApplicationController
  def index
  end

  def self.send_text_message(consult)
    #number_to_send_to = params[:number_to_send_to]

    twilio_sid = ENV['TWILIO_SID']
    twilio_token = ENV['TWILIO_TOKEN']
    twilio_phone_number = "(215) 352-5455"


    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    numbers = ['2154706093', '9178998247']

    numbers.each do |num|
      @twilio_client.account.sms.messages.create(
        :from => "+1#{twilio_phone_number}",
        :to => num,
        :body => "Hey Jason, Your team just got a new consult from #{Team.find_by_id(consult.consulting_team_id).name}. "
      )
    end


  end
end
