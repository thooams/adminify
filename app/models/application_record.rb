# frozen_string_literal: true

# Always use the abstract class ApplicationRecord to inherit from ActiveRecord::Bae
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
