#encoding : utf-8
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Smartdrum::Application.initialize!

# Time and date helper
Time::DATE_FORMATS[:ru_datetime] = "%Y.%m.%d в %k:%M:%S"