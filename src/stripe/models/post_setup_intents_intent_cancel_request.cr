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
  class PostSetupIntentsIntentCancelRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Reason for canceling this SetupIntent. Possible values are `abandoned`, `requested_by_customer`, or `duplicate`
    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_reason : String? = nil

    VALID_VALUES_FOR_CANCELLATION_REASON = StaticArray["abandoned", "duplicate", "requested_by_customer"]

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @cancellation_reason : String? = nil,
      @expand : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _cancellation_reason = @cancellation_reason
        invalid_properties.push(OpenApi::EnumValidator.error_message("cancellation_reason", VALID_VALUES_FOR_CANCELLATION_REASON)) unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _cancellation_reason = @cancellation_reason
        return false unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(cancellation_reason : String?)
      if cancellation_reason.nil?
        return @cancellation_reason = nil
      end
      _cancellation_reason = cancellation_reason.not_nil!
      OpenApi::EnumValidator.validate("cancellation_reason", _cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      @cancellation_reason = _cancellation_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@cancellation_reason, @expand)
  end
end
