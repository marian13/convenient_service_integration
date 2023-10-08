##
# IMPORTANT: Should be set after `require "bundler/setup"` invocation.
#
ruby_version = RUBY_VERSION.gsub(".", "-")
rails_version = Gem.loaded_specs["rails"].version.to_s.gsub(".", "-")

ENV["DATABASE_PREFIX"] ||= "ruby_#{ruby_version}_rails_#{rails_version}"
