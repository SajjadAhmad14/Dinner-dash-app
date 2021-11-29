require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module RestaurantaApp
  class Application < Rails::Application
    config.load_defaults 6.1
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.test_framework :rspec,
        :fixtures => true,
        :view_specs => false,
        :helper_specs => false,
        :routing_specs => false,
        :controller_specs => true,
        :request_specs => true
      g.fixture_replacement :factory_bot, :dir => "spec/factories"
    end
  end
end
