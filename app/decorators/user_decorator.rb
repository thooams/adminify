# frozen_string_literal: true

class UserDecorator < SimpleDelegator
  def user?
    role == User::USER
  end

  def admin?
    role == User::ADMIN
  end

  def login_name
    "#{first_name} #{last_name}"
  end
end
