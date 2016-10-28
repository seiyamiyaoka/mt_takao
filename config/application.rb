require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module MtTakao
  class Application < Rails::Application
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.active_record.default_timezone = :local
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
      g.assets false
      g.helper false
    end
  end
end
