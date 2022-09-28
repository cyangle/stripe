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
  #
  class IssuingTransactionFuelData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # The units for `volume_decimal`. One of `us_gallon` or `liter`.
    @[JSON::Field(key: "unit", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter unit : String? = nil

    # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
    @[JSON::Field(key: "unit_cost_decimal", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter unit_cost_decimal : String? = nil

    # Optional properties

    # The volume of the fuel that was pumped, represented as a decimal string with at most 12 decimal places.
    @[JSON::Field(key: "volume_decimal", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: volume_decimal.nil? && !volume_decimal_present?)]
    getter volume_decimal : String? = nil

    @[JSON::Field(ignore: true)]
    property? volume_decimal_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      @unit : String? = nil,
      @unit_cost_decimal : String? = nil,
      # Optional properties
      @volume_decimal : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?
      if __type = @_type
        if __type.to_s.size > 5000
          invalid_properties.push("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"unit\" is required and cannot be null") if @unit.nil?
      if _unit = @unit
        if _unit.to_s.size > 5000
          invalid_properties.push("invalid value for \"unit\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"unit_cost_decimal\" is required and cannot be null") if @unit_cost_decimal.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      if __type = @_type
        return false if __type.to_s.size > 5000
      end
      return false if @unit.nil?
      if _unit = @unit
        return false if _unit.to_s.size > 5000
      end
      return false if @unit_cost_decimal.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      if __type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
      end

      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit Object to be assigned
    def unit=(unit : String?)
      if unit.nil?
        raise ArgumentError.new("\"unit\" is required and cannot be null")
      end
      _unit = unit.not_nil!
      if _unit.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"unit\", the character length must be smaller than or equal to 5000.")
      end

      @unit = _unit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_cost_decimal Object to be assigned
    def unit_cost_decimal=(unit_cost_decimal : String?)
      if unit_cost_decimal.nil?
        raise ArgumentError.new("\"unit_cost_decimal\" is required and cannot be null")
      end
      _unit_cost_decimal = unit_cost_decimal.not_nil!
      @unit_cost_decimal = _unit_cost_decimal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] volume_decimal Object to be assigned
    def volume_decimal=(volume_decimal : String?)
      if volume_decimal.nil?
        return @volume_decimal = nil
      end
      _volume_decimal = volume_decimal.not_nil!
      @volume_decimal = _volume_decimal
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @unit, @unit_cost_decimal, @volume_decimal, @volume_decimal_present)
  end
end
