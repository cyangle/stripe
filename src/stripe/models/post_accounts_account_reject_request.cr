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
  class PostAccountsAccountRejectRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The reason for rejecting the account. Can be `fraud`, `terms_of_service`, or `other`.
    @[JSON::Field(key: "reason", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reason : String? = nil
    MAX_LENGTH_FOR_REASON = 5000

    # End of Required Properties

    # Optional Properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @reason : String? = nil,
      # Optional properties
      @expand : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"reason\" is required and cannot be null") if @reason.nil?

      unless (_reason = @reason).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reason", _reason.to_s.size, MAX_LENGTH_FOR_REASON)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @reason.nil?
      unless (_reason = @reason).nil?
        return false if _reason.to_s.size > MAX_LENGTH_FOR_REASON
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      if reason.nil?
        raise ArgumentError.new("\"reason\" is required and cannot be null")
      end
      _reason = reason.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("reason", _reason.to_s.size, MAX_LENGTH_FOR_REASON)
      @reason = _reason
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
    def_equals_and_hash(@reason, @expand)
  end
end
