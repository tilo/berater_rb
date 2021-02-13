require 'berater/version'


module Berater
  extend self

  class Overloaded < StandardError; end

  MODES = {}

  attr_accessor :redis

  def configure
    yield self
  end

  def new(mode, *args, **opts)
    klass = MODES[mode.to_sym]

    unless klass
      raise ArgumentError, "invalid mode: #{mode}"
    end

    klass.new(*args, **opts)
  end

  def register(mode, klass)
    MODES[mode.to_sym] = klass
  end

  def expunge
    redis.scan_each(match: "#{self.name}*") do |key|
      redis.del key
    end
  end

end

# load and register limiters
require 'berater/base_limiter'
require 'berater/concurrency_limiter'
require 'berater/inhibitor'
require 'berater/rate_limiter'
require 'berater/unlimiter'

Berater.register(:concurrency, Berater::ConcurrencyLimiter)
Berater.register(:inhibited, Berater::Inhibitor)
Berater.register(:rate, Berater::RateLimiter)
Berater.register(:unlimited, Berater::Unlimiter)
