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
  # The account holder to link accounts for.
  class AccountholderParams1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [account, customer]."
    VALID_VALUES_FOR__TYPE  = StaticArray["account", "customer"]

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account : String? = nil
    MAX_LENGTH_FOR_ACCOUNT = 5000

    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil
    MAX_LENGTH_FOR_CUSTOMER = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @account : String? = nil,
      @customer : String? = nil
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
      unless (_account = @account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account", _account.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_customer = @customer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
          invalid_properties.push(max_length_error)
        end
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

      unless (_account = @account).nil?
        return false if _account.to_s.size > MAX_LENGTH_FOR_ACCOUNT
      end

      unless (_customer = @customer).nil?
        return false if _customer.to_s.size > MAX_LENGTH_FOR_CUSTOMER
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
    # @param [Object] account Object to be assigned
    def account=(account : String?)
      if account.nil?
        return @account = nil
      end
      _account = account.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("account", _account.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
      @account = _account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
      @customer = _customer
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @account, @customer)
  end
end
