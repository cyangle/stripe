#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class AccountRequirementsError
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The code for the type of error.
    @[JSON::Field(key: "code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter code : String? = nil
    ERROR_MESSAGE_FOR_CODE = "invalid value for \"code\", must be one of [invalid_address_city_state_postal_code, invalid_dob_age_under_18, invalid_representative_country, invalid_street_address, invalid_tos_acceptance, invalid_value_other, verification_document_address_mismatch, verification_document_address_missing, verification_document_corrupt, verification_document_country_not_supported, verification_document_dob_mismatch, verification_document_duplicate_type, verification_document_expired, verification_document_failed_copy, verification_document_failed_greyscale, verification_document_failed_other, verification_document_failed_test_mode, verification_document_fraudulent, verification_document_id_number_mismatch, verification_document_id_number_missing, verification_document_incomplete, verification_document_invalid, verification_document_issue_or_expiry_date_missing, verification_document_manipulated, verification_document_missing_back, verification_document_missing_front, verification_document_name_mismatch, verification_document_name_missing, verification_document_nationality_mismatch, verification_document_not_readable, verification_document_not_signed, verification_document_not_uploaded, verification_document_photo_mismatch, verification_document_too_large, verification_document_type_not_supported, verification_failed_address_match, verification_failed_business_iec_number, verification_failed_document_match, verification_failed_id_number_match, verification_failed_keyed_identity, verification_failed_keyed_match, verification_failed_name_match, verification_failed_other, verification_failed_residential_address, verification_failed_tax_id_match, verification_failed_tax_id_not_issued, verification_missing_executives, verification_missing_owners, verification_requires_additional_memorandum_of_associations]."
    VALID_VALUES_FOR_CODE  = String.static_array("invalid_address_city_state_postal_code", "invalid_dob_age_under_18", "invalid_representative_country", "invalid_street_address", "invalid_tos_acceptance", "invalid_value_other", "verification_document_address_mismatch", "verification_document_address_missing", "verification_document_corrupt", "verification_document_country_not_supported", "verification_document_dob_mismatch", "verification_document_duplicate_type", "verification_document_expired", "verification_document_failed_copy", "verification_document_failed_greyscale", "verification_document_failed_other", "verification_document_failed_test_mode", "verification_document_fraudulent", "verification_document_id_number_mismatch", "verification_document_id_number_missing", "verification_document_incomplete", "verification_document_invalid", "verification_document_issue_or_expiry_date_missing", "verification_document_manipulated", "verification_document_missing_back", "verification_document_missing_front", "verification_document_name_mismatch", "verification_document_name_missing", "verification_document_nationality_mismatch", "verification_document_not_readable", "verification_document_not_signed", "verification_document_not_uploaded", "verification_document_photo_mismatch", "verification_document_too_large", "verification_document_type_not_supported", "verification_failed_address_match", "verification_failed_business_iec_number", "verification_failed_document_match", "verification_failed_id_number_match", "verification_failed_keyed_identity", "verification_failed_keyed_match", "verification_failed_name_match", "verification_failed_other", "verification_failed_residential_address", "verification_failed_tax_id_match", "verification_failed_tax_id_not_issued", "verification_missing_executives", "verification_missing_owners", "verification_requires_additional_memorandum_of_associations")

    # An informative message that indicates the error type and provides additional details about the error.
    @[JSON::Field(key: "reason", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reason : String? = nil
    MAX_LENGTH_FOR_REASON = 5000

    # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
    @[JSON::Field(key: "requirement", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter requirement : String? = nil
    MAX_LENGTH_FOR_REQUIREMENT = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @code : String? = nil,
      @reason : String? = nil,
      @requirement : String? = nil
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
      invalid_properties.push("\"requirement\" is required and cannot be null") if @requirement.nil?

      unless (_requirement = @requirement).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("requirement", _requirement.to_s.size, MAX_LENGTH_FOR_REQUIREMENT)
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

      return false if @requirement.nil?
      unless (_requirement = @requirement).nil?
        return false if _requirement.to_s.size > MAX_LENGTH_FOR_REQUIREMENT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      @code = code
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
    # @param [Object] requirement Object to be assigned
    def requirement=(requirement : String?)
      if requirement.nil?
        raise ArgumentError.new("\"requirement\" is required and cannot be null")
      end
      _requirement = requirement.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("requirement", _requirement.to_s.size, MAX_LENGTH_FOR_REQUIREMENT)
      @requirement = _requirement
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@code, @reason, @requirement)
  end
end
