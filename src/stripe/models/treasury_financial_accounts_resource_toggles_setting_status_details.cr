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
  # Additional details on the FinancialAccount Features information.
  class TreasuryFinancialAccountsResourceTogglesSettingStatusDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Represents the reason why the status is `pending` or `restricted`.
    @[JSON::Field(key: "code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter code : String? = nil
    ERROR_MESSAGE_FOR_CODE = "invalid value for \"code\", must be one of [activating, capability_not_requested, financial_account_closed, rejected_other, rejected_unsupported_business, requirements_past_due, requirements_pending_verification, restricted_by_platform, restricted_other]."
    VALID_VALUES_FOR_CODE  = String.static_array("activating", "capability_not_requested", "financial_account_closed", "rejected_other", "rejected_unsupported_business", "requirements_past_due", "requirements_pending_verification", "restricted_by_platform", "restricted_other")

    # End of Required Properties

    # Optional Properties

    # Represents what the user should do, if anything, to activate the Feature.
    @[JSON::Field(key: "resolution", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: resolution.nil? && !resolution_present?)]
    getter resolution : String? = nil
    ERROR_MESSAGE_FOR_RESOLUTION = "invalid value for \"resolution\", must be one of [contact_stripe, provide_information, remove_restriction]."
    VALID_VALUES_FOR_RESOLUTION  = String.static_array("contact_stripe", "provide_information", "remove_restriction")

    @[JSON::Field(ignore: true)]
    property? resolution_present : Bool = false

    # The `platform_restrictions` that are restricting this Feature.
    @[JSON::Field(key: "restriction", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter restriction : String? = nil
    ERROR_MESSAGE_FOR_RESTRICTION = "invalid value for \"restriction\", must be one of [inbound_flows, outbound_flows]."
    VALID_VALUES_FOR_RESTRICTION  = String.static_array("inbound_flows", "outbound_flows")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @code : String? = nil,
      # Optional properties
      @resolution : String? = nil,
      @restriction : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_restriction = @restriction).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_RESTRICTION) unless OpenApi::EnumValidator.valid?(_restriction, VALID_VALUES_FOR_RESTRICTION)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_restriction = @restriction).nil?
        return false unless OpenApi::EnumValidator.valid?(_restriction, VALID_VALUES_FOR_RESTRICTION)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(new_value : String?)
      @code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resolution Object to be assigned
    def resolution=(new_value : String?)
      @resolution = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] restriction Object to be assigned
    def restriction=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("restriction", new_value, VALID_VALUES_FOR_RESTRICTION)
      end

      @restriction = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@code, @resolution, @resolution_present, @restriction)
  end
end
