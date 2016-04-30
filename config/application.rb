require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Stuff for sprockets-es6
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"
require 'sprockets/es6'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsEs6Demo
  class Application < Rails::Application
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

    config.assets.configure do |env|
      # If you are using Sprockets 4, use `Sprockets::BabelProcessor`
      # instead of `Sprockets::ES6`.
      es6amd = Sprockets::ES6.new('modules' => 'system', 'moduleIds' => true)
      # Replace the default transformer to transpile each `.es6` file with `define`
      # and `require` from the AMD spec.
      # Just be sure to add `almond.js` to the application and
      # require it before requiring other assets on `application.js`
      env.register_transformer 'text/ecmascript-6', 'application/javascript', es6amd
    end
  end
end
