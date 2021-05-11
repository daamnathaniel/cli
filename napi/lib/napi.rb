require 'highline'
require 'httparty'
require 'blanket'


require_relative './napi/cli'
require_relative './napi/api'
require_relative './napi/process'




module Napi
  VERSION = "0.1.0"
  class StandardError: end
end

