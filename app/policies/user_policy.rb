# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  attr_reader :user, :current_user

  def initialize(user, _record)
    super
    @user = user
  end

  def permitted_attributes
    %i[first_name last_name email role]
  end

  def admin?
    UserDecorator.new(user).admin?
  end

  alias index? admin?
  alias show? admin?
  alias update? admin?
  alias create? admin?
  alias destroy? admin?
end
