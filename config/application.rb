require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FonteBackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    ENV["MAPBOX_ACCESS_TOKEN"] = "pk.eyJ1IjoiYW5nZWx1cmF5IiwiYSI6ImNsZnU0djJmbzAwOHYzZGxob2czd2Q4azEifQ.QZG7Oj3hGMSjvpdfXSzZuQ"
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
