#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Additional parameters for `bank_transfer` funding types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BankTransferParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["jp_bank_transfer"])

    # Optional properties

    @[JSON::Field(key: "requested_address_types", type: Array(String)?, presence: true, ignore_serialize: requested_address_types.nil? && !requested_address_types_present?)]
    getter requested_address_types : Array(String)?

    @[JSON::Field(ignore: true)]
    property? requested_address_types_present : Bool = false

    ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES = EnumValidator.new("requested_address_types", "String", ["zengin"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String,
      # Optional properties
      @requested_address_types : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES.error_message) unless ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES.all_valid?(@requested_address_types)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false unless ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES.all_valid?(@requested_address_types)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requested_address_types Object to be assigned
    def requested_address_types=(requested_address_types)
      ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES.all_valid!(requested_address_types)
      @requested_address_types = requested_address_types
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
    def_equals_and_hash(@_type, @requested_address_types)
  end
end
