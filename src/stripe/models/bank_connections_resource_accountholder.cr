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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BankConnectionsResourceAccountholder
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Type of account holder that this account belongs to.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["account", "customer"])

    # Optional properties

    @[JSON::Field(key: "account", type: BankConnectionsResourceAccountholderAccount?, presence: true, ignore_serialize: account.nil? && !account_present?)]
    property account : BankConnectionsResourceAccountholderAccount?

    @[JSON::Field(ignore: true)]
    property? account_present : Bool = false

    @[JSON::Field(key: "customer", type: BankConnectionsResourceAccountholderCustomer?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    property customer : BankConnectionsResourceAccountholderCustomer?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String,
      # Optional properties
      @account : BankConnectionsResourceAccountholderAccount? = nil,
      @customer : BankConnectionsResourceAccountholderCustomer? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
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
    def_equals_and_hash(@_type, @account, @customer)
  end
end