#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./completed_sessions_params"
require "./currency_option"
require "./restrictions_params"

module Stripe
  # Settings that restrict the usage of a payment link.
  class PostPaymentLinksPaymentLinkRequestRestrictions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "completed_sessions", type: Stripe::CompletedSessionsParams?, default: nil, required: true, nullable: false, emit_null: false)]
    property completed_sessions : Stripe::CompletedSessionsParams? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "currency_options", type: Hash(String, Stripe::CurrencyOption)?, default: nil, required: false, nullable: false, emit_null: false)]
    property currency_options : Hash(String, Stripe::CurrencyOption)? = nil

    # A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
    @[JSON::Field(key: "first_time_transaction", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    property first_time_transaction : Bool? = nil

    # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
    @[JSON::Field(key: "minimum_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    property minimum_amount : Int64? = nil

    # Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
    @[JSON::Field(key: "minimum_amount_currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property minimum_amount_currency : String? = nil

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::RestrictionsParams,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @completed_sessions : Stripe::CompletedSessionsParams? = nil,
      # Optional properties
      @currency_options : Hash(String, Stripe::CurrencyOption)? = nil,
      @first_time_transaction : Bool? = nil,
      @minimum_amount : Int64? = nil,
      @minimum_amount_currency : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@completed_sessions, @currency_options, @first_time_transaction, @minimum_amount, @minimum_amount_currency)
  end
end