# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { 'My first name' }
    last_name { 'My last name' }
    email
    role { User::USER }
  end

  factory :admin do
    first_name { 'My admin first name' }
    last_name { 'My admin last name' }
    email
    role { User::ADMIN }
  end

  sequence :email do |_n|
    "#{SecureRandom.hex(10)}@test.fr"
  end
end
