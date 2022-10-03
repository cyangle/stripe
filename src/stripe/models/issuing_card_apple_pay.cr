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
  #
  class IssuingCardApplePay
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Apple Pay Eligibility
    @[JSON::Field(key: "eligible", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter eligible : Bool? = nil

    # End of Required Properties

    # Optional Properties

    # Reason the card is ineligible for Apple Pay
    @[JSON::Field(key: "ineligible_reason", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: ineligible_reason.nil? && !ineligible_reason_present?)]
    getter ineligible_reason : String? = nil
    ERROR_MESSAGE_FOR_INELIGIBLE_REASON = "invalid value for \"ineligible_reason\", must be one of [missing_agreement, missing_cardholder_contact, unsupported_region]."
    VALID_VALUES_FOR_INELIGIBLE_REASON  = StaticArray["missing_agreement", "missing_cardholder_contact", "unsupported_region"]

    @[JSON::Field(ignore: true)]
    property? ineligible_reason_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @eligible : Bool? = nil,
      # Optional properties
      @ineligible_reason : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"eligible\" is required and cannot be null") if @eligible.nil?

      unless (_ineligible_reason = @ineligible_reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_INELIGIBLE_REASON) unless OpenApi::EnumValidator.valid?(_ineligible_reason, VALID_VALUES_FOR_INELIGIBLE_REASON)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @eligible.nil?

      unless (_ineligible_reason = @ineligible_reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_ineligible_reason, VALID_VALUES_FOR_INELIGIBLE_REASON)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eligible Object to be assigned
    def eligible=(eligible : Bool?)
      if eligible.nil?
        raise ArgumentError.new("\"eligible\" is required and cannot be null")
      end
      _eligible = eligible.not_nil!
      @eligible = _eligible
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ineligible_reason Object to be assigned
    def ineligible_reason=(ineligible_reason : String?)
      if ineligible_reason.nil?
        return @ineligible_reason = nil
      end
      _ineligible_reason = ineligible_reason.not_nil!
      OpenApi::EnumValidator.validate("ineligible_reason", _ineligible_reason, VALID_VALUES_FOR_INELIGIBLE_REASON)
      @ineligible_reason = _ineligible_reason
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@eligible, @ineligible_reason, @ineligible_reason_present)
  end
end
