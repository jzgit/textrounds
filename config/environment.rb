# Load the rails application
require File.expand_path('../application', __FILE__)

# Load twilio vars from local file
twilio_env = File.join(Rails.root, 'config', 'twilio_env.rb')
load(twilio_env) if File.exists?(twilio_env)

# Initialize the rails application
Textrounds::Application.initialize!
