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
  class LineItemsUpdateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "adjustable_quantity", type: Stripe::AdjustableQuantityParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter adjustable_quantity : Stripe::AdjustableQuantityParams? = nil

    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      # Optional properties
      @adjustable_quantity : Stripe::AdjustableQuantityParams? = nil,
      @quantity : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_adjustable_quantity = @adjustable_quantity).nil?
        invalid_properties.concat(_adjustable_quantity.list_invalid_properties_for("adjustable_quantity")) if _adjustable_quantity.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      unless (_adjustable_quantity = @adjustable_quantity).nil?
        return false if _adjustable_quantity.is_a?(OpenApi::Validatable) && !_adjustable_quantity.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        return @quantity = nil
      end
      _quantity = quantity.not_nil!
      @quantity = _quantity
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @adjustable_quantity, @quantity)
  end
end
