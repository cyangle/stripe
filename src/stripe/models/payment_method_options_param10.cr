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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodOptionsParam10
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "client", type: String)]
    getter client : String

    ENUM_VALIDATOR_FOR_CLIENT = EnumValidator.new("client", "String", ["android", "ios", "web"])

    # Optional properties

    @[JSON::Field(key: "app_id", type: String?, presence: true, ignore_serialize: app_id.nil? && !app_id_present?)]
    getter app_id : String?

    @[JSON::Field(ignore: true)]
    property? app_id_present : Bool = false

    @[JSON::Field(key: "setup_future_usage", type: String?, presence: true, ignore_serialize: setup_future_usage.nil? && !setup_future_usage_present?)]
    getter setup_future_usage : String?

    @[JSON::Field(ignore: true)]
    property? setup_future_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["none"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @client : String,
      # Optional properties
      @app_id : String? = nil,
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CLIENT.error_message) unless ENUM_VALIDATOR_FOR_CLIENT.valid?(@client, false)

      if !@app_id.nil? && @app_id.to_s.size > 5000
        invalid_properties.push("invalid value for \"app_id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_CLIENT.valid?(@client, false)
      return false if !@app_id.nil? && @app_id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client Object to be assigned
    def client=(client)
      ENUM_VALIDATOR_FOR_CLIENT.valid!(client, false)
      @client = client
    end

    # Custom attribute writer method with validation
    # @param [Object] app_id Value to be assigned
    def app_id=(app_id)
      if !app_id.nil? && app_id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"app_id\", the character length must be smaller than or equal to 5000.")
      end

      @app_id = app_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage)
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(setup_future_usage)
      @setup_future_usage = setup_future_usage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@client, @app_id, @setup_future_usage)
  end
end
