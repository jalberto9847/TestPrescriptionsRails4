ENV['RAILS_ENV'] ||= 'test'

require_relative '../config/environment'
#require File.expand_path('../config/environment',__dir__)
require 'rails/test_help'
#require "minitest/rails/capybara"
#require 'mocha/mini_test'

class ActiveSupport::TestCase
  parallelize(workers: :number_of_processors)
  fixtures :all
end
