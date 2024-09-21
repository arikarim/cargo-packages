Marten.configure :development do |config|
  config.debug = true
  config.host = "127.0.0.1"
  config.port = 8000
  # config.log_level = Log::Severity::Error

  # Print sent emails to the standard output in development.
  # https://martenframework.com/docs/development/reference/settings#emailing-settings
  config.emailing.backend = Marten::Emailing::Backend::Development.new(print_emails: true)
end
