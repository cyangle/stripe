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

module Stripe
  class RestrictionsParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "completed_sessions", type: Stripe::CompletedSessionsParams?, default: nil, required: true, nullable: false, emit_null: false)]
    getter completed_sessions : Stripe::CompletedSessionsParams? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "currency_options", type: Hash(String, Stripe::CurrencyOption)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency_options : Hash(String, Stripe::CurrencyOption)? = nil

    # A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
    @[JSON::Field(key: "first_time_transaction", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_time_transaction : Bool? = nil

    # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
    @[JSON::Field(key: "minimum_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter minimum_amount : Int64? = nil

    # Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
    @[JSON::Field(key: "minimum_amount_currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter minimum_amount_currency : String? = nil

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

      invalid_properties.push("\"completed_sessions\" is required and cannot be null") if @completed_sessions.nil?

      unless (_completed_sessions = @completed_sessions).nil?
        invalid_properties.concat(_completed_sessions.list_invalid_properties_for("completed_sessions")) if _completed_sessions.is_a?(OpenApi::Validatable)
      end
      unless (_currency_options = @currency_options).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "currency_options", container: _currency_options)) if _currency_options.is_a?(Hash)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @completed_sessions.nil?
      unless (_completed_sessions = @completed_sessions).nil?
        return false if _completed_sessions.is_a?(OpenApi::Validatable) && !_completed_sessions.valid?
      end

      unless (_currency_options = @currency_options).nil?
        return false if _currency_options.is_a?(Hash) && !OpenApi::ContainerValidator.valid?(container: _currency_options)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] completed_sessions Object to be assigned
    def completed_sessions=(new_value : Stripe::CompletedSessionsParams?)
      raise ArgumentError.new("\"completed_sessions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @completed_sessions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency_options Object to be assigned
    def currency_options=(new_value : Hash(String, Stripe::CurrencyOption)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Hash)
      end

      @currency_options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_time_transaction Object to be assigned
    def first_time_transaction=(new_value : Bool?)
      @first_time_transaction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minimum_amount Object to be assigned
    def minimum_amount=(new_value : Int64?)
      @minimum_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minimum_amount_currency Object to be assigned
    def minimum_amount_currency=(new_value : String?)
      @minimum_amount_currency = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@completed_sessions, @currency_options, @first_time_transaction, @minimum_amount, @minimum_amount_currency)
  end
end
