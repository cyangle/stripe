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
  # A customer's `Cash balance` represents real funds. Customers can add funds to their cash balance by sending a bank transfer. These funds can be used for payment and can eventually be paid out to your bank account.
  class CashBalance
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The ID of the customer whose cash balance this object represents.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["cash_balance"])

    @[JSON::Field(key: "settings", type: Stripe::CustomerBalanceCustomerBalanceSettings?, default: nil, required: true, nullable: false, emit_null: false)]
    getter settings : Stripe::CustomerBalanceCustomerBalanceSettings? = nil

    # Optional properties

    # A hash of all cash balances available to this customer. You cannot delete a customer with any cash balances, even if the balance is 0. Amounts are represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "available", type: Hash(String, Int64)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: available.nil? && !available_present?)]
    getter available : Hash(String, Int64)? = nil

    @[JSON::Field(ignore: true)]
    property? available_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @customer : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @settings : Stripe::CustomerBalanceCustomerBalanceSettings? = nil,
      # Optional properties
      @available : Hash(String, Int64)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"customer\" is required and cannot be null") if @customer.nil?
      if _customer = @customer
        if _customer.to_s.size > 5000
          invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"settings\" is required and cannot be null") if @settings.nil?
      if _settings = @settings
        if _settings.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_settings.list_invalid_properties_for("settings"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @customer.nil?
      if _customer = @customer
        return false if _customer.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @settings.nil?
      if _settings = @settings
        if _settings.is_a?(OpenApi::Validatable)
          return false unless _settings.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        raise ArgumentError.new("\"customer\" is required and cannot be null")
      end
      _customer = customer.not_nil!
      if _customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] settings Object to be assigned
    def settings=(settings : Stripe::CustomerBalanceCustomerBalanceSettings?)
      if settings.nil?
        raise ArgumentError.new("\"settings\" is required and cannot be null")
      end
      _settings = settings.not_nil!
      if _settings.is_a?(OpenApi::Validatable)
        _settings.validate
      end
      @settings = _settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] available Object to be assigned
    def available=(available : Hash(String, Int64)?)
      if available.nil?
        return @available = nil
      end
      _available = available.not_nil!
      @available = _available
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@customer, @livemode, @object, @settings, @available, @available_present)
  end
end
