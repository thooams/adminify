# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { 'My first name' }
    last_name { 'My last name' }
    email
    role { User::USER }
    password { 'password12345' }
    confirmed_at { Time.zone.now }
  end

  trait :admin do
    role { User::ADMIN }
  end

  sequence :email do |_n|
    "#{SecureRandom.hex(10)}@test.fr"
  end
end
