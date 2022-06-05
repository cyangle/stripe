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
  # FinancialAddresses contain identifying information that resolves to a FinancialAccount.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class FundingInstructionsBankTransferFinancialAddress
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The type of financial address
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["iban", "zengin"])

    # Optional properties

    # The payment networks supported by this FinancialAddress
    @[JSON::Field(key: "supported_networks", type: Array(String)?, presence: true, ignore_serialize: supported_networks.nil? && !supported_networks_present?)]
    getter supported_networks : Array(String)?

    @[JSON::Field(ignore: true)]
    property? supported_networks_present : Bool = false

    ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS = EnumValidator.new("supported_networks", "String", ["sepa", "zengin"])

    @[JSON::Field(key: "zengin", type: FundingInstructionsBankTransferZenginRecord?, presence: true, ignore_serialize: zengin.nil? && !zengin_present?)]
    property zengin : FundingInstructionsBankTransferZenginRecord?

    @[JSON::Field(ignore: true)]
    property? zengin_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String,
      # Optional properties
      @supported_networks : Array(String)? = nil,
      @zengin : FundingInstructionsBankTransferZenginRecord? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.error_message) unless ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.all_valid?(@supported_networks)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false unless ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.all_valid?(@supported_networks)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_networks Object to be assigned
    def supported_networks=(supported_networks)
      ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.all_valid!(supported_networks)
      @supported_networks = supported_networks
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
    def_equals_and_hash(@_type, @supported_networks, @zengin)
  end
end
