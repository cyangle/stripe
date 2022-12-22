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
  class PaymentMethodData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [financial_account, us_bank_account]."
    VALID_VALUES_FOR__TYPE  = String.static_array("financial_account", "us_bank_account")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "billing_details", type: Stripe::BillingDetailsInnerParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_details : Stripe::BillingDetailsInnerParams? = nil

    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter financial_account : String? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "us_bank_account", type: Stripe::PaymentMethodDataUsBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::PaymentMethodDataUsBankAccount? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @billing_details : Stripe::BillingDetailsInnerParams? = nil,
      @financial_account : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @us_bank_account : Stripe::PaymentMethodDataUsBankAccount? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_billing_details = @billing_details).nil?
        invalid_properties.concat(_billing_details.list_invalid_properties_for("billing_details")) if _billing_details.is_a?(OpenApi::Validatable)
      end

      unless (_us_bank_account = @us_bank_account).nil?
        invalid_properties.concat(_us_bank_account.list_invalid_properties_for("us_bank_account")) if _us_bank_account.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_billing_details = @billing_details).nil?
        return false if _billing_details.is_a?(OpenApi::Validatable) && !_billing_details.valid?
      end

      unless (_us_bank_account = @us_bank_account).nil?
        return false if _us_bank_account.is_a?(OpenApi::Validatable) && !_us_bank_account.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_details Object to be assigned
    def billing_details=(billing_details : Stripe::BillingDetailsInnerParams?)
      if billing_details.nil?
        return @billing_details = nil
      end
      _billing_details = billing_details.not_nil!
      _billing_details.validate if _billing_details.is_a?(OpenApi::Validatable)
      @billing_details = _billing_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_account Object to be assigned
    def financial_account=(financial_account : String?)
      if financial_account.nil?
        return @financial_account = nil
      end
      _financial_account = financial_account.not_nil!
      @financial_account = _financial_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(us_bank_account : Stripe::PaymentMethodDataUsBankAccount?)
      if us_bank_account.nil?
        return @us_bank_account = nil
      end
      _us_bank_account = us_bank_account.not_nil!
      _us_bank_account.validate if _us_bank_account.is_a?(OpenApi::Validatable)
      @us_bank_account = _us_bank_account
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @billing_details, @financial_account, @metadata, @us_bank_account)
  end
end
