# frozen_string_literal: true

class UserDecorator < SimpleDelegator
  def user?
    role == User::USER
  end

  def admin?
    role == User::ADMIN
  end
end
