# frozen_string_literal: true

class User < ApplicationRecord
  include UiBibz::Concerns::Models::Searchable
  # Scopes

  # Constants
  ADMIN = 'admin'
  USER = 'user'

  # Callbacks

  # Attr_accessors
  searchable_attributes :id, :first_name, :last_name, :email, :role

  # Associations

  # Enums

  # Validations
  validates :email, presence: true, uniqueness: true
  validates :role, presence: true, inclusion: { in: [ADMIN, USER] }

  # Delegations

  # Methods
end