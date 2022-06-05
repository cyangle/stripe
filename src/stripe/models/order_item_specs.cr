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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class OrderItemSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "amount", type: Int64?, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    property amount : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    property currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "parent", type: String?, presence: true, ignore_serialize: parent.nil? && !parent_present?)]
    getter parent : String?

    @[JSON::Field(ignore: true)]
    property? parent_present : Bool = false

    @[JSON::Field(key: "quantity", type: Int64?, presence: true, ignore_serialize: quantity.nil? && !quantity_present?)]
    property quantity : Int64?

    @[JSON::Field(ignore: true)]
    property? quantity_present : Bool = false

    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["discount", "shipping", "sku", "tax"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      @description : String? = nil,
      @parent : String? = nil,
      @quantity : Int64? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@description.nil? && @description.to_s.size > 1000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      if !@parent.nil? && @parent.to_s.size > 5000
        invalid_properties.push("invalid value for \"parent\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      if !@_type.nil? && @_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@description.nil? && @description.to_s.size > 1000
      return false if !@parent.nil? && @parent.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)
      return false if !@_type.nil? && @_type.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 1000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] parent Value to be assigned
    def parent=(parent)
      if !parent.nil? && parent.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"parent\", the character length must be smaller than or equal to 5000.")
      end

      @parent = parent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type)
      @_type = _type
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
    def_equals_and_hash(@amount, @currency, @description, @parent, @quantity, @_type)
  end
end
