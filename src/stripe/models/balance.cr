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
  # This is an object representing your Stripe balance. You can retrieve it to see the balance currently on your Stripe account.  You can also retrieve the balance history, which contains a list of [transactions](https://stripe.com/docs/reporting/balance-transaction-types) that contributed to the balance (charges, payouts, and so forth).  The available and pending amounts for each currency are broken down further by payment source types.  Related guide: [Understanding Connect Account Balances](https://stripe.com/docs/connect/account-balances).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Balance
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Funds that are available to be transferred or paid out, whether automatically by Stripe or explicitly via the [Transfers API](https://stripe.com/docs/api#transfers) or [Payouts API](https://stripe.com/docs/api#payouts). The available balance for each currency and payment type can be found in the `source_types` property.
    @[JSON::Field(key: "available", type: Array(BalanceAmount))]
    property available : Array(BalanceAmount)

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["balance"])

    # Funds that are not yet available in the balance, due to the 7-day rolling pay cycle. The pending balance for each currency, and for each payment type, can be found in the `source_types` property.
    @[JSON::Field(key: "pending", type: Array(BalanceAmount))]
    property pending : Array(BalanceAmount)

    # Optional properties

    # Funds held due to negative balances on connected Custom accounts. The connect reserve balance for each currency and payment type can be found in the `source_types` property.
    @[JSON::Field(key: "connect_reserved", type: Array(BalanceAmount)?, presence: true, ignore_serialize: connect_reserved.nil? && !connect_reserved_present?)]
    property connect_reserved : Array(BalanceAmount)?

    @[JSON::Field(ignore: true)]
    property? connect_reserved_present : Bool = false

    # Funds that can be paid out using Instant Payouts.
    @[JSON::Field(key: "instant_available", type: Array(BalanceAmount)?, presence: true, ignore_serialize: instant_available.nil? && !instant_available_present?)]
    property instant_available : Array(BalanceAmount)?

    @[JSON::Field(ignore: true)]
    property? instant_available_present : Bool = false

    @[JSON::Field(key: "issuing", type: BalanceDetail?, presence: true, ignore_serialize: issuing.nil? && !issuing_present?)]
    property issuing : BalanceDetail?

    @[JSON::Field(ignore: true)]
    property? issuing_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @available : Array(BalanceAmount),
      @livemode : Bool,
      @object : String,
      @pending : Array(BalanceAmount),
      # Optional properties
      @connect_reserved : Array(BalanceAmount)? = nil,
      @instant_available : Array(BalanceAmount)? = nil,
      @issuing : BalanceDetail? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
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
    def_equals_and_hash(@available, @livemode, @object, @pending, @connect_reserved, @instant_available, @issuing)
  end
end
