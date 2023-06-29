# frozen_string_literal: true

class UserViewObject
  attr_reader :record

  def initialize(record)
    @record = record
  end

  def status
    record.user? ? :primary : :danger
  end

  def translate(attribute)
    "#{User.human_attribute_name(attribute)}:"
  end

  def login_name
    "#{UserDecorator.new(record).full_name} (#{record.role})"
  end
end
