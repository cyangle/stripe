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
  # Shows last VerificationSession error
  class GelatoSessionLastError
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A short machine-readable string giving the reason for the verification or user-session failure.
    @[JSON::Field(key: "code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: code.nil? && !code_present?)]
    getter code : String? = nil
    ERROR_MESSAGE_FOR_CODE = "invalid value for \"code\", must be one of [abandoned, consent_declined, country_not_supported, device_not_supported, document_expired, document_type_not_supported, document_unverified_other, id_number_insufficient_document_data, id_number_mismatch, id_number_unverified_other, selfie_document_missing_photo, selfie_face_mismatch, selfie_manipulated, selfie_unverified_other, under_supported_age]."
    VALID_VALUES_FOR_CODE  = StaticArray["abandoned", "consent_declined", "country_not_supported", "device_not_supported", "document_expired", "document_type_not_supported", "document_unverified_other", "id_number_insufficient_document_data", "id_number_mismatch", "id_number_unverified_other", "selfie_document_missing_photo", "selfie_face_mismatch", "selfie_manipulated", "selfie_unverified_other", "under_supported_age"]

    @[JSON::Field(ignore: true)]
    property? code_present : Bool = false

    # A message that explains the reason for verification or user-session failure.
    @[JSON::Field(key: "reason", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reason.nil? && !reason_present?)]
    getter reason : String? = nil
    MAX_LENGTH_FOR_REASON = 5000

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

      unless (_code = @code).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CODE) unless OpenApi::EnumValidator.valid?(_code, VALID_VALUES_FOR_CODE)
      end
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
      unless (_code = @code).nil?
        return false unless OpenApi::EnumValidator.valid?(_code, VALID_VALUES_FOR_CODE)
      end

      unless (_reason = @reason).nil?
        return false if _reason.to_s.size > MAX_LENGTH_FOR_REASON
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
      OpenApi::EnumValidator.validate("code", _code, VALID_VALUES_FOR_CODE)
      @code = _code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      if reason.nil?
        return @reason = nil
      end
      _reason = reason.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("reason", _reason.to_s.size, MAX_LENGTH_FOR_REASON)
      @reason = _reason
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@code, @code_present, @reason, @reason_present)
  end
end
