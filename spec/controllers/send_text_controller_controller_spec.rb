require 'spec_helper'

describe SendTextControllerController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'send_text_message'" do
    it "returns http success" do
      get 'send_text_message'
      response.should be_success
    end
  end

end
