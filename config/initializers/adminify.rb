# frozen_string_literal: true

module Adminify
  class Application
    NAME = 'Adminify'
    FULL_NAME = "#{NAME} - Manage your users"
    VERSION = File.read('VERSION').strip.freeze
    LAST_COMMIT_SHA = File.read('LAST_COMMIT_SHA').strip.freeze
    FULL_VERSION = "#{VERSION}-#{LAST_COMMIT_SHA}".freeze
  end
end
