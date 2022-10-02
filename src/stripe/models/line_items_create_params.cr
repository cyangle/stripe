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
  class LineItemsCreateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "price", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter price : String? = nil
    MAX_LENGTH_FOR_PRICE = 5000

    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    # Optional properties

    @[JSON::Field(key: "adjustable_quantity", type: Stripe::AdjustableQuantityParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter adjustable_quantity : Stripe::AdjustableQuantityParams? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @price : String? = nil,
      @quantity : Int64? = nil,
      # Optional properties
      @adjustable_quantity : Stripe::AdjustableQuantityParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"price\" is required and cannot be null") if @price.nil?

      if _price = @price
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("price", _price.to_s.size, MAX_LENGTH_FOR_PRICE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"quantity\" is required and cannot be null") if @quantity.nil?

      if _adjustable_quantity = @adjustable_quantity
        invalid_properties.concat(_adjustable_quantity.list_invalid_properties_for("adjustable_quantity")) if _adjustable_quantity.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @price.nil?
      if _price = @price
        return false if _price.to_s.size > MAX_LENGTH_FOR_PRICE
      end

      return false if @quantity.nil?

      if _adjustable_quantity = @adjustable_quantity
        return false if _adjustable_quantity.is_a?(OpenApi::Validatable) && !_adjustable_quantity.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(price : String?)
      if price.nil?
        raise ArgumentError.new("\"price\" is required and cannot be null")
      end
      _price = price.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("price", _price.to_s.size, MAX_LENGTH_FOR_PRICE)
      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        raise ArgumentError.new("\"quantity\" is required and cannot be null")
      end
      _quantity = quantity.not_nil!
      @quantity = _quantity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] adjustable_quantity Object to be assigned
    def adjustable_quantity=(adjustable_quantity : Stripe::AdjustableQuantityParams?)
      if adjustable_quantity.nil?
        return @adjustable_quantity = nil
      end
      _adjustable_quantity = adjustable_quantity.not_nil!
      _adjustable_quantity.validate if _adjustable_quantity.is_a?(OpenApi::Validatable)
      @adjustable_quantity = _adjustable_quantity
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@price, @quantity, @adjustable_quantity)
  end
end
