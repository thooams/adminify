# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Rails.logger.debug 'Create admin user'
User.find_or_create_by!(
  first_name: 'john',
  last_name: 'Doe',
  email: 'admin@adminify.com',
  role: User::ADMIN
) do |user|
  user.password = 'admin@adminify.com'
  user.password_confirmation = 'admin@adminify.com'
  user.confirmed_at = DateTime.now
end
