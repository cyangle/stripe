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
  class CustomFieldParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 30

    @[JSON::Field(key: "value", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter value : String? = nil
    MAX_LENGTH_FOR_VALUE = 30

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String? = nil,
      @value : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"value\" is required and cannot be null") if @value.nil?

      unless (_value = @value).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("value", _value.to_s.size, MAX_LENGTH_FOR_VALUE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @name.nil?
      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      return false if @value.nil?
      unless (_value = @value).nil?
        return false if _value.to_s.size > MAX_LENGTH_FOR_VALUE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      _name = name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value Object to be assigned
    def value=(value : String?)
      if value.nil?
        raise ArgumentError.new("\"value\" is required and cannot be null")
      end
      _value = value.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("value", _value.to_s.size, MAX_LENGTH_FOR_VALUE)
      @value = _value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@name, @value)
  end
end
