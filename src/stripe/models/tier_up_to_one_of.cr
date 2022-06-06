#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class TierUpToOneOf
    property data : String

    ENUM_VALIDATOR = EnumValidator.new("tier_up_to_oneOf", "String", ["inf"])

    delegate to_json_object_key, to: @data
    delegate error_message, to: ENUM_VALIDATOR

    def self.from_json(value : JSON::PullParser) : TierUpToOneOf
      new(value)
    end

    def self.to_json(value : TierUpToOneOf, json : JSON::Builder) : Nil
      value.to_json(json)
    end

    def self.new(pull : JSON::PullParser)
      new(String.new(pull))
    end

    def self.from_json_object_key?(key : String)
      String.from_json_object_key?(key)
    end

    def self.new!(data : String)
      new(data).tap(&.valid!)
    end

    def initialize(@data : String)
    end

    def valid?
      ENUM_VALIDATOR.valid?(@data, false)
    end

    def valid!
      ENUM_VALIDATOR.valid!(@data, false)
    end

    def to_json(json : JSON::Builder) : Nil
      @data.to_json(json)
    end

    def_equals_and_hash(@data)
  end
end
