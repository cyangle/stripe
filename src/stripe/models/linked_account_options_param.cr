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
  class LinkedAccountOptionsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "permissions", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter permissions : Array(String)? = nil

    ENUM_VALIDATOR_FOR_PERMISSIONS = OpenApi::EnumValidator.new("permissions", "Array(String)", ["balances", "ownership", "payment_method", "transactions"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @permissions : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_PERMISSIONS.error_message) unless ENUM_VALIDATOR_FOR_PERMISSIONS.all_valid?(@permissions)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_PERMISSIONS.all_valid?(@permissions)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] permissions Object to be assigned
    def permissions=(permissions : Array(String)?)
      if permissions.nil?
        return @permissions = nil
      end
      _permissions = permissions.not_nil!
      ENUM_VALIDATOR_FOR_PERMISSIONS.all_valid!(_permissions)
      @permissions = _permissions
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@permissions)
  end
end
