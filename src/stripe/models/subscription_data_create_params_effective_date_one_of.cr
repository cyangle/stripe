#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class SubscriptionDataCreateParamsEffectiveDateOneOf
    include OpenApi::Validatable
    include OpenApi::Json

    property data : String

    ERROR_MESSAGE = %{invalid value for "subscription_data_create_params_effective_date_oneOf", must be one of ["current_period_end"].}

    VALID_VALUES = StaticArray["current_period_end"]

    delegate to_json_object_key, to: @data

    def self.from_json(value : JSON::PullParser) : SubscriptionDataCreateParamsEffectiveDateOneOf
      new(value)
    end

    def self.to_json(value : SubscriptionDataCreateParamsEffectiveDateOneOf, json : JSON::Builder) : Nil
      value.to_json(json)
    end

    def self.new(pull : JSON::PullParser)
      new(String.new(pull))
    end

    def self.from_json_object_key?(key : String)
      String.from_json_object_key?(key)
    end

    def self.new!(data : String)
      new(data).tap(&.validate)
    end

    def initialize(@data : String)
    end

    def error_message : String
      ERROR_MESSAGE
    end

    def list_invalid_properties : Array(String)
      errors = Array(String).new
      errors.push(error_message) unless valid?
      errors
    end

    def valid? : Bool
      OpenApi::EnumValidator.valid?(data, VALID_VALUES, false)
    end

    def validate : Nil
      OpenApi::EnumValidator.validate("subscription_data_create_params_effective_date_oneOf", data, VALID_VALUES, false)
    end

    def to_json(json : JSON::Builder) : Nil
      @data.to_json(json)
    end

    def_equals_and_hash(@data)
  end
end
