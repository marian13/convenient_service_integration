# frozen_string_literal: true

##
# Copied from Convenient Service.
# - https://github.com/marian13/convenient_service/blob/v0.14.0/lib/convenient_service/support/version.rb#L7
#
class Version
  ##
  # @api private
  #
  # @internal
  #   - https://thoughtbot.com/blog/rails-refactoring-example-introduce-null-object
  #   - https://avdi.codes/null-objects-and-falsiness/
  #
  class NullVersion
    ##
    # @return [Boolean]
    #
    def null_version?
      true
    end

    ##
    # @return [nil]
    #
    def gem_version
      nil
    end

    ##
    # @param other [Object] Can be any type.
    # @return [nil]
    #
    def <=>(other)
      nil
    end

    ##
    # @param other [Object] Can be any type.
    # @return [nil]
    #
    def <(other)
      nil
    end

    ##
    # @param other [Object] Can be any type.
    # @return [nil]
    #
    def <=(other)
      nil
    end

    ##
    # @param other [Object] Can be any type.
    # @return [nil]
    #
    def ==(other)
      nil
    end

    ##
    # @param other [Object] Can be any type.
    # @return [nil]
    #
    def >(other)
      nil
    end

    ##
    # @param other [Object] Can be any type.
    # @return [nil]
    #
    def >=(other)
      nil
    end

    ##
    # @return [String]
    #
    def to_s
      ""
    end
  end

  include ::Comparable

  undef_method :between?

  undef_method :clamp

  ##
  # @param value [String]
  # @return [void]
  #
  def initialize(value)
    @value = value
  end

  class << self
    ##
    # @return [Version::NullVersion]
    #
    def null_version
      @null_version ||= Version::NullVersion.new
    end
  end

  ##
  # @return [Boolean]
  #
  def null_version?
    false
  end

  ##
  # @return [Gem::Version, nil]
  #
  def gem_version
    cast_gem_version(value)
  end

  ##
  # @param other [Object] Can be any type.
  # @return [Boolean, nil]
  #
  def <=>(other)
    gem_version <=> cast_gem_version(other)
  end

  ##
  # @return [String]
  #
  def to_s
    gem_version.to_s
  end

  private

  ##
  # @return [String]
  #
  attr_reader :value

  ##
  # @return [Gem::Version, nil]
  #
  def cast_gem_version(value)
    if ::Gem::Version.correct?(value.to_s)
      ::Gem::Version.create(value.to_s)
    else
      self.class.null_version
    end
  end
end
