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
  # Settings that restrict the redemption of the promotion code.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class RestrictionsParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "first_time_transaction", type: Bool?, presence: true, ignore_serialize: first_time_transaction.nil? && !first_time_transaction_present?)]
    property first_time_transaction : Bool?

    @[JSON::Field(ignore: true)]
    property? first_time_transaction_present : Bool = false

    @[JSON::Field(key: "minimum_amount", type: Int64?, presence: true, ignore_serialize: minimum_amount.nil? && !minimum_amount_present?)]
    property minimum_amount : Int64?

    @[JSON::Field(ignore: true)]
    property? minimum_amount_present : Bool = false

    @[JSON::Field(key: "minimum_amount_currency", type: String?, presence: true, ignore_serialize: minimum_amount_currency.nil? && !minimum_amount_currency_present?)]
    property minimum_amount_currency : String?

    @[JSON::Field(ignore: true)]
    property? minimum_amount_currency_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @first_time_transaction : Bool? = nil,
      @minimum_amount : Int64? = nil,
      @minimum_amount_currency : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
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
    def_equals_and_hash(@first_time_transaction, @minimum_amount, @minimum_amount_currency)
  end
end
