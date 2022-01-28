#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#
# OpenAPI Generator version: 5.3.1

# Dependencies
require "crest"
require "log"
require "nason"
require "time"
require "uri"

# Project files
require "./stripe/ext/**"
require "./stripe/configuration.cr"
require "./stripe/api_error.cr"
require "./stripe/api_client.cr"
require "./stripe/models/**"
require "./stripe/api/**"

module Stripe
  Log = ::Log.for("Stripe") # => Log for Stripe source

  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}

  # Return the default `Configuration` object.
  def self.configure
    Configuration.default
  end

  # Customize default settings for the SDK using block.
  #
  # ```
  # Stripe.configure do |config|
  #   config.username = "xxx"
  #   config.password = "xxx"
  # end
  # ```
  def self.configure
    yield Configuration.default
  end
end
