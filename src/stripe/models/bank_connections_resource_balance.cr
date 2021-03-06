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
  class BankConnectionsResourceBalance
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The time that the external institution calculated this balance. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "as_of", type: Int64)]
    property as_of : Int64

    # The balances owed to (or by) the account holder.  Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.  Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
    @[JSON::Field(key: "current", type: Hash(String, Int64))]
    property current : Hash(String, Int64)

    # The `type` of the balance. An additional hash is included on the balance with a name matching this value.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["cash", "credit"])

    # Optional properties

    @[JSON::Field(key: "cash", type: BankConnectionsResourceBalanceApiResourceCashBalance?, presence: true, ignore_serialize: cash.nil? && !cash_present?)]
    property cash : BankConnectionsResourceBalanceApiResourceCashBalance?

    @[JSON::Field(ignore: true)]
    property? cash_present : Bool = false

    @[JSON::Field(key: "credit", type: BankConnectionsResourceBalanceApiResourceCreditBalance?, presence: true, ignore_serialize: credit.nil? && !credit_present?)]
    property credit : BankConnectionsResourceBalanceApiResourceCreditBalance?

    @[JSON::Field(ignore: true)]
    property? credit_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @as_of : Int64,
      @current : Hash(String, Int64),
      @_type : String,
      # Optional properties
      @cash : BankConnectionsResourceBalanceApiResourceCashBalance? = nil,
      @credit : BankConnectionsResourceBalanceApiResourceCreditBalance? = nil
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
    def _type=(_type : String)
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
    def_equals_and_hash(@as_of, @current, @_type, @cash, @cash_present, @credit, @credit_present)
  end
end
