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
  class PaymentMethodParam1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "account_holder_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_holder_type : String? = nil
    ERROR_MESSAGE_FOR_ACCOUNT_HOLDER_TYPE = "invalid value for \"account_holder_type\", must be one of [company, individual]."
    VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE  = String.static_array("company", "individual")

    @[JSON::Field(key: "account_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_number : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_NUMBER = 5000

    @[JSON::Field(key: "account_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_type : String? = nil
    ERROR_MESSAGE_FOR_ACCOUNT_TYPE = "invalid value for \"account_type\", must be one of [checking, savings]."
    VALID_VALUES_FOR_ACCOUNT_TYPE  = String.static_array("checking", "savings")

    @[JSON::Field(key: "financial_connections_account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter financial_connections_account : String? = nil
    MAX_LENGTH_FOR_FINANCIAL_CONNECTIONS_ACCOUNT = 5000

    @[JSON::Field(key: "routing_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter routing_number : String? = nil
    MAX_LENGTH_FOR_ROUTING_NUMBER = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_holder_type : String? = nil,
      @account_number : String? = nil,
      @account_type : String? = nil,
      @financial_connections_account : String? = nil,
      @routing_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_holder_type = @account_holder_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ACCOUNT_HOLDER_TYPE) unless OpenApi::EnumValidator.valid?(_account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      end
      unless (_account_number = @account_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_number", _account_number.to_s.size, MAX_LENGTH_FOR_ACCOUNT_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_account_type = @account_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ACCOUNT_TYPE) unless OpenApi::EnumValidator.valid?(_account_type, VALID_VALUES_FOR_ACCOUNT_TYPE)
      end
      unless (_financial_connections_account = @financial_connections_account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("financial_connections_account", _financial_connections_account.to_s.size, MAX_LENGTH_FOR_FINANCIAL_CONNECTIONS_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_routing_number = @routing_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("routing_number", _routing_number.to_s.size, MAX_LENGTH_FOR_ROUTING_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_holder_type = @account_holder_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      end

      unless (_account_number = @account_number).nil?
        return false if _account_number.to_s.size > MAX_LENGTH_FOR_ACCOUNT_NUMBER
      end

      unless (_account_type = @account_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_account_type, VALID_VALUES_FOR_ACCOUNT_TYPE)
      end

      unless (_financial_connections_account = @financial_connections_account).nil?
        return false if _financial_connections_account.to_s.size > MAX_LENGTH_FOR_FINANCIAL_CONNECTIONS_ACCOUNT
      end

      unless (_routing_number = @routing_number).nil?
        return false if _routing_number.to_s.size > MAX_LENGTH_FOR_ROUTING_NUMBER
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_type Object to be assigned
    def account_holder_type=(account_holder_type : String?)
      if account_holder_type.nil?
        return @account_holder_type = nil
      end
      _account_holder_type = account_holder_type.not_nil!
      OpenApi::EnumValidator.validate("account_holder_type", _account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      @account_holder_type = _account_holder_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(account_number : String?)
      if account_number.nil?
        return @account_number = nil
      end
      _account_number = account_number.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("account_number", _account_number.to_s.size, MAX_LENGTH_FOR_ACCOUNT_NUMBER)
      @account_number = _account_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type : String?)
      if account_type.nil?
        return @account_type = nil
      end
      _account_type = account_type.not_nil!
      OpenApi::EnumValidator.validate("account_type", _account_type, VALID_VALUES_FOR_ACCOUNT_TYPE)
      @account_type = _account_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_connections_account Object to be assigned
    def financial_connections_account=(financial_connections_account : String?)
      if financial_connections_account.nil?
        return @financial_connections_account = nil
      end
      _financial_connections_account = financial_connections_account.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("financial_connections_account", _financial_connections_account.to_s.size, MAX_LENGTH_FOR_FINANCIAL_CONNECTIONS_ACCOUNT)
      @financial_connections_account = _financial_connections_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_number Object to be assigned
    def routing_number=(routing_number : String?)
      if routing_number.nil?
        return @routing_number = nil
      end
      _routing_number = routing_number.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("routing_number", _routing_number.to_s.size, MAX_LENGTH_FOR_ROUTING_NUMBER)
      @routing_number = _routing_number
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_holder_type, @account_number, @account_type, @financial_connections_account, @routing_number)
  end
end
