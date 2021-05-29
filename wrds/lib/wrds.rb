require 'highline/import'
require 'httparty'
require 'apicake'



require_relative './wrds/cli'
require_relative './wrds/api'


module Wrds
  VERSION="0.1.0"
  class StandardError; end
end
