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
  # `Exchange Rate` objects allow you to determine the rates that Stripe is currently using to convert from one currency to another. Since this number is variable throughout the day, there are various reasons why you might want to know the current rate (for example, to dynamically price an item for a user with a default payment in a foreign currency).  If you want a guarantee that the charge is made with a certain exchange rate you expect is current, you can pass in `exchange_rate` to charges endpoints. If the value is no longer up to date, the charge won't go through. Please refer to our [Exchange Rates API](https://stripe.com/docs/exchange-rates) guide for more details.
  class ExchangeRate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Unique identifier for the object. Represented as the three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) in lowercase.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = OpenApi::EnumValidator.new("object", "String", ["exchange_rate"])

    # Hash where the keys are supported currencies and the values are the exchange rate at which the base id currency converts to the key currency.
    @[JSON::Field(key: "rates", type: Hash(String, Float64)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter rates : Hash(String, Float64)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @object : String? = nil,
      @rates : Hash(String, Float64)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"rates\" is required and cannot be null") if @rates.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @rates.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @id = _id
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
    # @param [Object] rates Object to be assigned
    def rates=(rates : Hash(String, Float64)?)
      if rates.nil?
        raise ArgumentError.new("\"rates\" is required and cannot be null")
      end
      _rates = rates.not_nil!
      @rates = _rates
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @object, @rates)
  end
end
