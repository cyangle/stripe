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
  class GelatoSelfieReportError
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # A short machine-readable string giving the reason for the verification failure.
    @[JSON::Field(key: "code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: code.nil? && !code_present?)]
    getter code : String? = nil

    @[JSON::Field(ignore: true)]
    property? code_present : Bool = false

    ENUM_VALIDATOR_FOR_CODE = EnumValidator.new("code", "String", ["selfie_document_missing_photo", "selfie_face_mismatch", "selfie_manipulated", "selfie_unverified_other"])

    # A human-readable message giving the reason for the failure. These messages can be shown to your users.
    @[JSON::Field(key: "reason", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reason.nil? && !reason_present?)]
    getter reason : String? = nil

    @[JSON::Field(ignore: true)]
    property? reason_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @code : String? = nil,
      @reason : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CODE.error_message) unless ENUM_VALIDATOR_FOR_CODE.valid?(@code)
      if _reason = @reason
        if _reason.to_s.size > 5000
          invalid_properties.push("invalid value for \"reason\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_CODE.valid?(@code)
      if _reason = @reason
        return false if _reason.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      if code.nil?
        return @code = nil
      end
      _code = code.not_nil!
      ENUM_VALIDATOR_FOR_CODE.valid!(_code)
      @code = _code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      if reason.nil?
        return @reason = nil
      end
      _reason = reason.not_nil!
      if _reason.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reason\", the character length must be smaller than or equal to 5000.")
      end

      @reason = _reason
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@code, @code_present, @reason, @reason_present)
  end
end
