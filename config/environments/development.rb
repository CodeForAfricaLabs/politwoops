Politwoops::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  config.assets.debug = true
  config.assets.compile = true
  config.assets.digest = false


  config.eager_load = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  config.log_level = :debug

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  config.paperclip_defaults = {
    storage: :fog,
    fog_host: "http://localhost:8080",
    fog_credentials: { provider: "Local", local_root: "#{Rails.root}"},
    path: "/:attachment/:filename",
    interpolations: {
      base_path: "assets"
    }
  }
end
