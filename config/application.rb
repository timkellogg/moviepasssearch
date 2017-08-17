require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Moviepasssearch
  class Application < Rails::Application
    config.load_defaults 5.1
    config.cache_store = :redis_store, ENV['REDIS_URL'], { expires_in: 90.minutes }
  end
end
