# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  def permitted_attributes
    %i[first_name last_name email role]
  end

  def admin?
    UserDecorator.new(user).admin?
  end

  # Only current user can edit his profile
  def edit?
    user == record
  end

  alias index? admin?
  alias show? admin?
  alias update? edit?
  alias destroy? admin?
end
