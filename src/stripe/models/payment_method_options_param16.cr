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
  class PaymentMethodOptionsParam16
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil

    ENUM_VALIDATOR_FOR_CAPTURE_METHOD = OpenApi::EnumValidator.new("capture_method", "String", ["", "manual"])

    @[JSON::Field(key: "reference", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reference : String? = nil

    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = OpenApi::EnumValidator.new("setup_future_usage", "String", ["none"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @capture_method : String? = nil,
      @reference : String? = nil,
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CAPTURE_METHOD.error_message) unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)
      if _reference = @reference
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, 128)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)
      if _reference = @reference
        return false if _reference.to_s.size > 128
      end
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method : String?)
      if capture_method.nil?
        return @capture_method = nil
      end
      _capture_method = capture_method.not_nil!
      ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid!(_capture_method)
      @capture_method = _capture_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(reference : String?)
      if reference.nil?
        return @reference = nil
      end
      _reference = reference.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, 128)
        raise ArgumentError.new(max_length_error)
      end

      @reference = _reference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      if setup_future_usage.nil?
        return @setup_future_usage = nil
      end
      _setup_future_usage = setup_future_usage.not_nil!
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(_setup_future_usage)
      @setup_future_usage = _setup_future_usage
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@capture_method, @reference, @setup_future_usage)
  end
end
