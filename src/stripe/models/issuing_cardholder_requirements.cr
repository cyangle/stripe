#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class IssuingCardholderRequirements
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # If `disabled_reason` is present, all cards will decline authorizations with `cardholder_verification_required` reason.
    @[JSON::Field(key: "disabled_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter disabled_reason : String? = nil
    ERROR_MESSAGE_FOR_DISABLED_REASON = "invalid value for \"disabled_reason\", must be one of [listed, rejected.listed, requirements.past_due, under_review]."
    VALID_VALUES_FOR_DISABLED_REASON  = String.static_array("listed", "rejected.listed", "requirements.past_due", "under_review")

    # Array of fields that need to be collected in order to verify and re-enable the cardholder.
    @[JSON::Field(key: "past_due", type: Array(String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter past_due : Array(String)? = nil
    ERROR_MESSAGE_FOR_PAST_DUE = "invalid value for \"past_due\", must be one of [company.tax_id, individual.card_issuing.user_terms_acceptance.date, individual.card_issuing.user_terms_acceptance.ip, individual.dob.day, individual.dob.month, individual.dob.year, individual.first_name, individual.last_name, individual.verification.document]."
    VALID_VALUES_FOR_PAST_DUE  = String.static_array("company.tax_id", "individual.card_issuing.user_terms_acceptance.date", "individual.card_issuing.user_terms_acceptance.ip", "individual.dob.day", "individual.dob.month", "individual.dob.year", "individual.first_name", "individual.last_name", "individual.verification.document")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @disabled_reason : String? = nil,
      @past_due : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_disabled_reason = @disabled_reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_DISABLED_REASON) unless OpenApi::EnumValidator.valid?(_disabled_reason, VALID_VALUES_FOR_DISABLED_REASON)
      end
      unless (_past_due = @past_due).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAST_DUE) unless OpenApi::EnumValidator.valid?(_past_due, VALID_VALUES_FOR_PAST_DUE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_disabled_reason = @disabled_reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_disabled_reason, VALID_VALUES_FOR_DISABLED_REASON)
      end

      unless (_past_due = @past_due).nil?
        return false unless OpenApi::EnumValidator.valid?(_past_due, VALID_VALUES_FOR_PAST_DUE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disabled_reason Object to be assigned
    def disabled_reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("disabled_reason", new_value, VALID_VALUES_FOR_DISABLED_REASON)
      end

      @disabled_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] past_due Object to be assigned
    def past_due=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("past_due", new_value, VALID_VALUES_FOR_PAST_DUE)
      end

      @past_due = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@disabled_reason, @past_due)
  end
end
