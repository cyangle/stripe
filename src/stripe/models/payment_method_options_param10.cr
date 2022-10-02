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
  class PaymentMethodOptionsParam10
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "client", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter client : String? = nil
    ERROR_MESSAGE_FOR_CLIENT = "invalid value for \"client\", must be one of [android, ios, web]."
    VALID_VALUES_FOR_CLIENT  = StaticArray["android", "ios", "web"]

    # Optional properties

    @[JSON::Field(key: "app_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter app_id : String? = nil
    MAX_LENGTH_FOR_APP_ID = 5000

    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [none]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = StaticArray["none"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @client : String? = nil,
      # Optional properties
      @app_id : String? = nil,
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"client\" is required and cannot be null") if @client.nil?

      if _client = @client
        invalid_properties.push(ERROR_MESSAGE_FOR_CLIENT) unless OpenApi::EnumValidator.valid?(_client, VALID_VALUES_FOR_CLIENT)
      end
      if _app_id = @app_id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("app_id", _app_id.to_s.size, MAX_LENGTH_FOR_APP_ID)
          invalid_properties.push(max_length_error)
        end
      end
      if _setup_future_usage = @setup_future_usage
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @client.nil?
      if _client = @client
        return false unless OpenApi::EnumValidator.valid?(_client, VALID_VALUES_FOR_CLIENT)
      end

      if _app_id = @app_id
        return false if _app_id.to_s.size > MAX_LENGTH_FOR_APP_ID
      end

      if _setup_future_usage = @setup_future_usage
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client Object to be assigned
    def client=(client : String?)
      if client.nil?
        raise ArgumentError.new("\"client\" is required and cannot be null")
      end
      _client = client.not_nil!
      OpenApi::EnumValidator.validate("client", _client, VALID_VALUES_FOR_CLIENT)
      @client = _client
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] app_id Object to be assigned
    def app_id=(app_id : String?)
      if app_id.nil?
        return @app_id = nil
      end
      _app_id = app_id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("app_id", _app_id.to_s.size, MAX_LENGTH_FOR_APP_ID)
      @app_id = _app_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      if setup_future_usage.nil?
        return @setup_future_usage = nil
      end
      _setup_future_usage = setup_future_usage.not_nil!
      OpenApi::EnumValidator.validate("setup_future_usage", _setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      @setup_future_usage = _setup_future_usage
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@client, @app_id, @setup_future_usage)
  end
end
