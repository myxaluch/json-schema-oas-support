# frozen_string_literal: true
require 'json-schema'

Dir[File.join(File.dirname(__FILE__), 'json-schema-oas-support/attributes/**/*.rb')].each {|file| require file }
Dir[File.join(File.dirname(__FILE__), 'json-schema-oas-support/validators/*.rb')].sort!.each {|file| require file }
