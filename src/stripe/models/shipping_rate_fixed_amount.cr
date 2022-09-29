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
  class ShippingRateFixedAmount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # A non-negative integer in cents representing how much to charge.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Optional properties

    # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency_options", type: Hash(String, Stripe::ShippingRateCurrencyOption)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency_options : Hash(String, Stripe::ShippingRateCurrencyOption)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      # Optional properties
      @currency_options : Hash(String, Stripe::ShippingRateCurrencyOption)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      if _currency_options = @currency_options
        invalid_properties.concat(OpenApi::HashValidator.list_invalid_properties_for(key: "currency_options", hash: _currency_options)) if _currency_options.is_a?(Hash)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @currency.nil?

      if _currency_options = @currency_options
        return false if _currency_options.is_a?(Hash) && !OpenApi::HashValidator.valid?(hash: _currency_options)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency_options Object to be assigned
    def currency_options=(currency_options : Hash(String, Stripe::ShippingRateCurrencyOption)?)
      if currency_options.nil?
        return @currency_options = nil
      end
      _currency_options = currency_options.not_nil!
      OpenApi::HashValidator.validate(hash: _currency_options) if _currency_options.is_a?(Hash)
      @currency_options = _currency_options
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @currency_options)
  end
end
