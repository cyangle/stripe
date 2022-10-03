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
  class BalanceSettingsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "reconciliation_mode", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reconciliation_mode : String? = nil
    ERROR_MESSAGE_FOR_RECONCILIATION_MODE = "invalid value for \"reconciliation_mode\", must be one of [automatic, manual]."
    VALID_VALUES_FOR_RECONCILIATION_MODE  = StaticArray["automatic", "manual"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @reconciliation_mode : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_reconciliation_mode = @reconciliation_mode).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_RECONCILIATION_MODE) unless OpenApi::EnumValidator.valid?(_reconciliation_mode, VALID_VALUES_FOR_RECONCILIATION_MODE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_reconciliation_mode = @reconciliation_mode).nil?
        return false unless OpenApi::EnumValidator.valid?(_reconciliation_mode, VALID_VALUES_FOR_RECONCILIATION_MODE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reconciliation_mode Object to be assigned
    def reconciliation_mode=(reconciliation_mode : String?)
      if reconciliation_mode.nil?
        return @reconciliation_mode = nil
      end
      _reconciliation_mode = reconciliation_mode.not_nil!
      OpenApi::EnumValidator.validate("reconciliation_mode", _reconciliation_mode, VALID_VALUES_FOR_RECONCILIATION_MODE)
      @reconciliation_mode = _reconciliation_mode
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@reconciliation_mode)
  end
end
