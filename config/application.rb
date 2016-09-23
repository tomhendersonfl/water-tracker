require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Thrive
  class Application < Rails::Application

    # config.web_console.whitelisted_ips = ['172.18.0.0/16','db-shared-us-east-1-derp-4471.aptible.in']
    config.web_console.development_only = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    config.less.compress = true

    config.web_console.whiny_requests = false

    # config.logger = ActiveSupportLogger.new(STDOUT)
    # config.logger = ActiveLogger.new(STDOUT)
    config.lograge.enabled = true
    config.lograge.formatter = Lograge::Formatters::Logstash.new

  end
end


require 'thrive'
