##
# @internal
#   NOTE: This is an Appraisal name getter.
#   NOTE: `normalize` is duplicated in `Appraisals`.
#   NOTE: Used by `task docker:start:ruby_*.*:rails_*.*:sidekiq_*` tasks.
#
normalize = -> (version) { version.to_s.split(/[\.-]/).take(2).join("_") }

appraisal_name =
  [
    RUBY_ENGINE,
    normalize[RUBY_VERSION],
    "sidekiq",
    normalize[ENV["SIDEKIQ_VERSION"]]
  ]
    .join("_")

print appraisal_name
