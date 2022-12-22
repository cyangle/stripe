#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class PromotionCodesResourceRestrictions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
    @[JSON::Field(key: "first_time_transaction", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter first_time_transaction : Bool? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "currency_options", type: Hash(String, Stripe::PromotionCodeCurrencyOption)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency_options : Hash(String, Stripe::PromotionCodeCurrencyOption)? = nil

    # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
    @[JSON::Field(key: "minimum_amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: minimum_amount.nil? && !minimum_amount_present?)]
    getter minimum_amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? minimum_amount_present : Bool = false

    # Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
    @[JSON::Field(key: "minimum_amount_currency", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: minimum_amount_currency.nil? && !minimum_amount_currency_present?)]
    getter minimum_amount_currency : String? = nil
    MAX_LENGTH_FOR_MINIMUM_AMOUNT_CURRENCY = 5000

    @[JSON::Field(ignore: true)]
    property? minimum_amount_currency_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @first_time_transaction : Bool? = nil,
      # Optional properties
      @currency_options : Hash(String, Stripe::PromotionCodeCurrencyOption)? = nil,
      @minimum_amount : Int64? = nil,
      @minimum_amount_currency : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"first_time_transaction\" is required and cannot be null") if @first_time_transaction.nil?

      unless (_currency_options = @currency_options).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "currency_options", container: _currency_options)) if _currency_options.is_a?(Hash)
      end

      unless (_minimum_amount_currency = @minimum_amount_currency).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("minimum_amount_currency", _minimum_amount_currency.to_s.size, MAX_LENGTH_FOR_MINIMUM_AMOUNT_CURRENCY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @first_time_transaction.nil?

      unless (_currency_options = @currency_options).nil?
        return false if _currency_options.is_a?(Hash) && !OpenApi::ContainerValidator.valid?(container: _currency_options)
      end

      unless (_minimum_amount_currency = @minimum_amount_currency).nil?
        return false if _minimum_amount_currency.to_s.size > MAX_LENGTH_FOR_MINIMUM_AMOUNT_CURRENCY
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_time_transaction Object to be assigned
    def first_time_transaction=(first_time_transaction : Bool?)
      if first_time_transaction.nil?
        raise ArgumentError.new("\"first_time_transaction\" is required and cannot be null")
      end
      _first_time_transaction = first_time_transaction.not_nil!
      @first_time_transaction = _first_time_transaction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency_options Object to be assigned
    def currency_options=(currency_options : Hash(String, Stripe::PromotionCodeCurrencyOption)?)
      if currency_options.nil?
        return @currency_options = nil
      end
      _currency_options = currency_options.not_nil!
      OpenApi::ContainerValidator.validate(container: _currency_options) if _currency_options.is_a?(Hash)
      @currency_options = _currency_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minimum_amount Object to be assigned
    def minimum_amount=(minimum_amount : Int64?)
      if minimum_amount.nil?
        return @minimum_amount = nil
      end
      _minimum_amount = minimum_amount.not_nil!
      @minimum_amount = _minimum_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minimum_amount_currency Object to be assigned
    def minimum_amount_currency=(minimum_amount_currency : String?)
      if minimum_amount_currency.nil?
        return @minimum_amount_currency = nil
      end
      _minimum_amount_currency = minimum_amount_currency.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("minimum_amount_currency", _minimum_amount_currency.to_s.size, MAX_LENGTH_FOR_MINIMUM_AMOUNT_CURRENCY)
      @minimum_amount_currency = _minimum_amount_currency
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@first_time_transaction, @currency_options, @minimum_amount, @minimum_amount_present, @minimum_amount_currency, @minimum_amount_currency_present)
  end
end
