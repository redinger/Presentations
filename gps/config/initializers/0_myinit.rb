APP_CONFIG = YAML.load_file("#{RAILS_ROOT}/config/config.yml")[RAILS_ENV]
ActionMailer::Base.default_url_options[:host] = APP_CONFIG["default_url_host"]