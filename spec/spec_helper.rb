require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'capybara/rspec'

require './lib/player'
require './lib/ship'
require './lib/board'