# frozen_string_literal: true

class UserViewObject
  attr_reader :record

  def initialize(record)
    @record = record
  end

  def status
    record.user? ? :primary : :danger
  end
end
