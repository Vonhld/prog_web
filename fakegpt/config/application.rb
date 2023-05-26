require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fakegpt
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.to_prepare do
      Devise::SessionsController.layout 'welcome'
      Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : "welcome" }
      Devise::ConfirmationsController.layout 'welcome'
      Devise::UnlocksController.layout 'welcome'
      Devise::PasswordsController.layout 'welcome'
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.time_zone = 'America/Sao_Paulo'
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.default_locale = "pt-BR"
  end
end
