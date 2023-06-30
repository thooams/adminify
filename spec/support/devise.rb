# frozen_string_literal: true

require 'devise'
require_relative 'controller_macros'

RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Devise::Test::IntegrationHelpers, type: :request

  config.extend ControllerMacros, type: :controller
  config.extend ControllerMacros, type: :request
  config.include Rails.application.routes.url_helpers
end
