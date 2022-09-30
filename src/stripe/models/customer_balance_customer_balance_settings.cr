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
  class CustomerBalanceCustomerBalanceSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The configuration for how funds that land in the customer cash balance are reconciled.
    @[JSON::Field(key: "reconciliation_mode", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reconciliation_mode : String? = nil

    VALID_VALUES_FOR_RECONCILIATION_MODE = StaticArray["automatic", "manual"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @reconciliation_mode : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"reconciliation_mode\" is required and cannot be null") if @reconciliation_mode.nil?

      if _reconciliation_mode = @reconciliation_mode
        invalid_properties.push(OpenApi::EnumValidator.error_message("reconciliation_mode", VALID_VALUES_FOR_RECONCILIATION_MODE)) unless OpenApi::EnumValidator.valid?(_reconciliation_mode, VALID_VALUES_FOR_RECONCILIATION_MODE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @reconciliation_mode.nil?
      if _reconciliation_mode = @reconciliation_mode
        return false unless OpenApi::EnumValidator.valid?(_reconciliation_mode, VALID_VALUES_FOR_RECONCILIATION_MODE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reconciliation_mode Object to be assigned
    def reconciliation_mode=(reconciliation_mode : String?)
      if reconciliation_mode.nil?
        raise ArgumentError.new("\"reconciliation_mode\" is required and cannot be null")
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
