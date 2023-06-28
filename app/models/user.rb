# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :confirmable # , :registerable
  include UiBibz::Concerns::Models::Searchable
  # Scopes

  # Constants
  ADMIN = 'admin'
  USER = 'user'
  ROLES = [ADMIN, USER].freeze

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
