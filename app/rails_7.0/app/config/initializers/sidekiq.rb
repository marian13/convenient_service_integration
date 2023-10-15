##
# - https://github.com/sidekiq/sidekiq/wiki/Using-Redis#using-an-initializer
#
redis_config = {
  url: ENV.fetch("SIDEKIQ_REDIS_URL"),
  namespace: ENV.fetch("DATABASE_PREFIX")
}

Sidekiq.configure_server do |config|
  config.redis = redis_config
end

Sidekiq.configure_client do |config|
  config.redis = redis_config
end
