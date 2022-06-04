#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Description of the SKU's inventory.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class InventoryCreateSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["bucket", "finite", "infinite"])

    # Optional properties

    @[JSON::Field(key: "quantity", type: Int64?, presence: true, ignore_serialize: quantity.nil? && !quantity_present?)]
    property quantity : Int64?

    @[JSON::Field(ignore: true)]
    property? quantity_present : Bool = false

    @[JSON::Field(key: "value", type: String?, presence: true, ignore_serialize: value.nil? && !value_present?)]
    getter value : String?

    @[JSON::Field(ignore: true)]
    property? value_present : Bool = false

    ENUM_VALIDATOR_FOR_VALUE = EnumValidator.new("value", "String", ["", "in_stock", "limited", "out_of_stock"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String,
      # Optional properties
      @quantity : Int64? = nil,
      @value : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_VALUE.error_message) unless ENUM_VALIDATOR_FOR_VALUE.valid?(@value)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false unless ENUM_VALIDATOR_FOR_VALUE.valid?(@value)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value Object to be assigned
    def value=(value)
      ENUM_VALIDATOR_FOR_VALUE.valid!(value)
      @value = value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @quantity, @value)
  end
end