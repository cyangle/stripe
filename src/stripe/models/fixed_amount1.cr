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
  # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
  class FixedAmount1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Optional properties

    @[JSON::Field(key: "currency_options", type: Hash(String, Stripe::FixedAmountCurrencyOptionsValue)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency_options : Hash(String, Stripe::FixedAmountCurrencyOptionsValue)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      # Optional properties
      @currency_options : Hash(String, Stripe::FixedAmountCurrencyOptionsValue)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      if _currency_options = @currency_options
        if _currency_options.is_a?(Hash)
          _currency_options.each do |_key, value|
            if value.is_a?(OpenApi::Validatable)
              invalid_properties.concat(value.list_invalid_properties_for("currency_options"))
            end
          end
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @currency.nil?

      if _currency_options = @currency_options
        if _currency_options.is_a?(Hash)
          _currency_options.each do |_key, value|
            if value.is_a?(OpenApi::Validatable)
              return false unless value.valid?
            end
          end
        end
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
    def currency_options=(currency_options : Hash(String, Stripe::FixedAmountCurrencyOptionsValue)?)
      if currency_options.nil?
        return @currency_options = nil
      end
      _currency_options = currency_options.not_nil!
      if _currency_options.is_a?(Hash)
        _currency_options.each do |_key, value|
          if value.is_a?(OpenApi::Validatable)
            value.validate
          end
        end
      end
      @currency_options = _currency_options
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @currency_options)
  end
end
