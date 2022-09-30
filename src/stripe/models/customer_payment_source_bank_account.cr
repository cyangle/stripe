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
  class CustomerPaymentSourceBankAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "account_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_number : String? = nil

    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil

    # Optional properties

    @[JSON::Field(key: "account_holder_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_holder_name : String? = nil

    @[JSON::Field(key: "account_holder_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_holder_type : String? = nil

    VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE = StaticArray["company", "individual"]

    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "object", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter object : String? = nil

    VALID_VALUES_FOR_OBJECT = StaticArray["bank_account"]

    @[JSON::Field(key: "routing_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter routing_number : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_number : String? = nil,
      @country : String? = nil,
      # Optional properties
      @account_holder_name : String? = nil,
      @account_holder_type : String? = nil,
      @currency : String? = nil,
      @object : String? = nil,
      @routing_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_number\" is required and cannot be null") if @account_number.nil?

      if _account_number = @account_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_number", _account_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      if _country = @country
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _account_holder_name = @account_holder_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_holder_name", _account_holder_name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _account_holder_type = @account_holder_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("account_holder_type", VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)) unless OpenApi::EnumValidator.valid?(_account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      end

      if _object = @object
        invalid_properties.push(OpenApi::EnumValidator.error_message("object", VALID_VALUES_FOR_OBJECT)) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      if _routing_number = @routing_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("routing_number", _routing_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_number.nil?
      if _account_number = @account_number
        return false if _account_number.to_s.size > 5000
      end

      return false if @country.nil?
      if _country = @country
        return false if _country.to_s.size > 5000
      end

      if _account_holder_name = @account_holder_name
        return false if _account_holder_name.to_s.size > 5000
      end

      if _account_holder_type = @account_holder_type
        return false unless OpenApi::EnumValidator.valid?(_account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      end

      if _object = @object
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      if _routing_number = @routing_number
        return false if _routing_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(account_number : String?)
      if account_number.nil?
        raise ArgumentError.new("\"account_number\" is required and cannot be null")
      end
      _account_number = account_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_number", _account_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @account_number = _account_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        raise ArgumentError.new("\"country\" is required and cannot be null")
      end
      _country = country.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_name Object to be assigned
    def account_holder_name=(account_holder_name : String?)
      if account_holder_name.nil?
        return @account_holder_name = nil
      end
      _account_holder_name = account_holder_name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_holder_name", _account_holder_name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @account_holder_name = _account_holder_name
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
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        return @currency = nil
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        return @object = nil
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_number Object to be assigned
    def routing_number=(routing_number : String?)
      if routing_number.nil?
        return @routing_number = nil
      end
      _routing_number = routing_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("routing_number", _routing_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @routing_number = _routing_number
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_number, @country, @account_holder_name, @account_holder_type, @currency, @object, @routing_number)
  end
end
