Marten.configure do |config|
  # IMPORTANT: please ensure that the secret key value is kept secret!
  config.secret_key = "__insecure_796b2e0e6ee9b96a164d3ced7578e3a4d5b541e6bdb728bb5419205f8f6cb287__"

  # Installed applications
  # https://martenframework.com/docs/development/reference/settings#installed_apps
  config.installed_apps = [] of Marten::Apps::Config.class

  # Application middlewares
  # https://martenframework.com/docs/development/reference/settings#middleware
  # config.middleware = [
  #   Marten::Middleware::Session,
  #   Marten::Middleware::Flash,
  #   Marten::Middleware::GZip,
  #   Marten::Middleware::XFrameOptions,
  #   # Marten::Middleware::ReferrerPolicy,
  # ]

  config.method_override.allowed_methods = ["DELETE", "PATCH", "PUT", "GET", "POST"]
  # config.method_override.http_header_name = "X-Http-Method-Override"

  # Databases
  # https://martenframework.com/docs/development/reference/settings#database-settings
  config.database do |db|
    db.backend = :postgresql
    db.host = "localhost"
    db.name = "cargo_packages_dev"
    db.user = "postgres"
    db.password = "mysecretpassword"
  end

  config.csrf.protection_enabled = false


  # # Templates context producers
  # # https://martenframework.com/docs/development/reference/settings#context_producers
  # config.templates.context_producers = [
  #   Marten::Template::ContextProducer::Request,
  #   Marten::Template::ContextProducer::Flash,
  #   Marten::Template::ContextProducer::Debug,
  #   Marten::Template::ContextProducer::I18n,
  # ]
end
