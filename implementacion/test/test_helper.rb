require 'simplecov'
SimpleCov.start do
  add_group 'Controllers', 'app/controllers'
  add_group 'Helpers', 'app/helpers'
  add_group 'Mailers', 'app/mailers'
  add_group 'Lib', 'lib'
  add_group 'Models', 'app/models'
  add_group 'Long files' do |src_file|
    src_file.lines.count > 100
  end
end

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# rubocop:disable Style/ClassAndModuleChildren
# Clase que hace que ActiveSupport herede de TestCase
class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml
  # for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# Clase que hace que ActiveSupport herede de TestCase
class ActionController::TestCase
  include Devise::TestHelpers
end
# rubocop:enable Style/ClassAndModuleChildren
