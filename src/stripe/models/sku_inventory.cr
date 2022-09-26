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
  class SkuInventory
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Inventory type. Possible values are `finite`, `bucket` (not quantified), and `infinite`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # Optional properties

    # The count of inventory available. Will be present if and only if `type` is `finite`.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: quantity.nil? && !quantity_present?)]
    getter quantity : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? quantity_present : Bool = false

    # An indicator of the inventory available. Possible values are `in_stock`, `limited`, and `out_of_stock`. Will be present if and only if `type` is `bucket`.
    @[JSON::Field(key: "value", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: value.nil? && !value_present?)]
    getter value : String? = nil

    @[JSON::Field(ignore: true)]
    property? value_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @quantity : Int64? = nil,
      @value : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?
      if __type = @_type
        if __type.to_s.size > 5000
          invalid_properties.push("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _value = @value
        if _value.to_s.size > 5000
          invalid_properties.push("invalid value for \"value\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @_type.nil?
      if __type = @_type
        return false if __type.to_s.size > 5000
      end
      if _value = @value
        return false if _value.to_s.size > 5000
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
      if __type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
      end

      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        return @quantity = nil
      end
      @quantity = quantity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value Object to be assigned
    def value=(value : String?)
      if value.nil?
        return @value = nil
      end
      _value = value.not_nil!
      if _value.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"value\", the character length must be smaller than or equal to 5000.")
      end

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
    def_equals_and_hash(@_type, @quantity, @quantity_present, @value, @value_present)
  end
end
