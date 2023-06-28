# frozen_string_literal: true

class PageStrategy
  attr_reader :controller_name, :action_name, :request

  def initialize(controller_name: nil, action_name: nil, request: nil)
    @controller_name = controller_name
    @action_name = action_name
    @request = request
  end

  def path_exists?(url)
    Rails.application.routes.recognize_path(url)
  end

  def id
    [controller_name, action_name].map(&:parameterize).join('-')
  end

  %w[edit new index show].each do |action|
    define_method "#{action}?" do  # def edit?
      action_name == action        #   action_name == "edit"
    end
  end
end
