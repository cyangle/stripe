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
  # Additional details on the FinancialAccount Features information.
  class TreasuryFinancialAccountsResourceTogglesSettingStatusDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Represents the reason why the status is `pending` or `restricted`.
    @[JSON::Field(key: "code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter code : String? = nil

    ENUM_VALIDATOR_FOR_CODE = EnumValidator.new("code", "String", ["activating", "capability_not_requested", "financial_account_closed", "rejected_other", "rejected_unsupported_business", "requirements_past_due", "requirements_pending_verification", "restricted_by_platform", "restricted_other"])

    # Optional properties

    # Represents what the user should do, if anything, to activate the Feature.
    @[JSON::Field(key: "resolution", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: resolution.nil? && !resolution_present?)]
    getter resolution : String? = nil

    @[JSON::Field(ignore: true)]
    property? resolution_present : Bool = false

    ENUM_VALIDATOR_FOR_RESOLUTION = EnumValidator.new("resolution", "String", ["contact_stripe", "provide_information", "remove_restriction"])

    # The `platform_restrictions` that are restricting this Feature.
    @[JSON::Field(key: "restriction", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter restriction : String? = nil

    ENUM_VALIDATOR_FOR_RESTRICTION = EnumValidator.new("restriction", "String", ["inbound_flows", "outbound_flows"])

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
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CODE.error_message) unless ENUM_VALIDATOR_FOR_CODE.valid?(@code, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_RESOLUTION.error_message) unless ENUM_VALIDATOR_FOR_RESOLUTION.valid?(@resolution)

      invalid_properties.push(ENUM_VALIDATOR_FOR_RESTRICTION.error_message) unless ENUM_VALIDATOR_FOR_RESTRICTION.valid?(@restriction)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_CODE.valid?(@code, false)
      return false unless ENUM_VALIDATOR_FOR_RESOLUTION.valid?(@resolution)
      return false unless ENUM_VALIDATOR_FOR_RESTRICTION.valid?(@restriction)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      if code.nil?
        raise ArgumentError.new("\"code\" is required and cannot be null")
      end
      _code = code.not_nil!
      ENUM_VALIDATOR_FOR_CODE.valid!(_code)
      @code = code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resolution Object to be assigned
    def resolution=(resolution : String?)
      if resolution.nil?
        return @resolution = nil
      end
      _resolution = resolution.not_nil!
      ENUM_VALIDATOR_FOR_RESOLUTION.valid!(_resolution)
      @resolution = resolution
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] restriction Object to be assigned
    def restriction=(restriction : String?)
      if restriction.nil?
        return @restriction = nil
      end
      _restriction = restriction.not_nil!
      ENUM_VALIDATOR_FOR_RESTRICTION.valid!(_restriction)
      @restriction = restriction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@code, @resolution, @resolution_present, @restriction)
  end
end