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
  # Optional parameters for the receiver flow. Can be set only if the source is a receiver (`flow` is `receiver`).
  class ReceiverParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "refund_attributes_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter refund_attributes_method : String? = nil
    MAX_LENGTH_FOR_REFUND_ATTRIBUTES_METHOD    = 5000
    ERROR_MESSAGE_FOR_REFUND_ATTRIBUTES_METHOD = "invalid value for \"refund_attributes_method\", must be one of [email, manual, none]."
    VALID_VALUES_FOR_REFUND_ATTRIBUTES_METHOD  = StaticArray["email", "manual", "none"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @refund_attributes_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _refund_attributes_method = @refund_attributes_method
        invalid_properties.push(ERROR_MESSAGE_FOR_REFUND_ATTRIBUTES_METHOD) unless OpenApi::EnumValidator.valid?(_refund_attributes_method, VALID_VALUES_FOR_REFUND_ATTRIBUTES_METHOD)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _refund_attributes_method = @refund_attributes_method
        return false unless OpenApi::EnumValidator.valid?(_refund_attributes_method, VALID_VALUES_FOR_REFUND_ATTRIBUTES_METHOD)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_attributes_method Object to be assigned
    def refund_attributes_method=(refund_attributes_method : String?)
      if refund_attributes_method.nil?
        return @refund_attributes_method = nil
      end
      _refund_attributes_method = refund_attributes_method.not_nil!
      OpenApi::EnumValidator.validate("refund_attributes_method", _refund_attributes_method, VALID_VALUES_FOR_REFUND_ATTRIBUTES_METHOD)
      @refund_attributes_method = _refund_attributes_method
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@refund_attributes_method)
  end
end
