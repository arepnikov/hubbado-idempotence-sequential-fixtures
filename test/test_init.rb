ENV["CONSOLE_DEVICE"] ||= "stdout"
ENV["LOG_LEVEL"] ||= "_min"

puts RUBY_DESCRIPTION

puts
puts "TEST_BENCH_DETAIL: #{ENV["TEST_BENCH_DETAIL"].inspect}"
puts

require_relative "../init.rb"
require 'entity_projection/fixtures/controls'
require "idempotence/sequential/fixtures/controls"

require "test_bench"; TestBench.activate

include Idempotence::Sequential::Fixtures
