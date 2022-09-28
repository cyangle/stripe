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
  class PackageDimensions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Height, in inches.
    @[JSON::Field(key: "height", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter height : Float64? = nil

    # Length, in inches.
    @[JSON::Field(key: "length", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter length : Float64? = nil

    # Weight, in ounces.
    @[JSON::Field(key: "weight", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter weight : Float64? = nil

    # Width, in inches.
    @[JSON::Field(key: "width", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter width : Float64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @height : Float64? = nil,
      @length : Float64? = nil,
      @weight : Float64? = nil,
      @width : Float64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"height\" is required and cannot be null") if @height.nil?

      invalid_properties.push("\"length\" is required and cannot be null") if @length.nil?

      invalid_properties.push("\"weight\" is required and cannot be null") if @weight.nil?

      invalid_properties.push("\"width\" is required and cannot be null") if @width.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @height.nil?

      return false if @length.nil?

      return false if @weight.nil?

      return false if @width.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] height Object to be assigned
    def height=(height : Float64?)
      if height.nil?
        raise ArgumentError.new("\"height\" is required and cannot be null")
      end
      _height = height.not_nil!
      @height = _height
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] length Object to be assigned
    def length=(length : Float64?)
      if length.nil?
        raise ArgumentError.new("\"length\" is required and cannot be null")
      end
      _length = length.not_nil!
      @length = _length
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] weight Object to be assigned
    def weight=(weight : Float64?)
      if weight.nil?
        raise ArgumentError.new("\"weight\" is required and cannot be null")
      end
      _weight = weight.not_nil!
      @weight = _weight
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] width Object to be assigned
    def width=(width : Float64?)
      if width.nil?
        raise ArgumentError.new("\"width\" is required and cannot be null")
      end
      _width = width.not_nil!
      @width = _width
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@height, @length, @weight, @width)
  end
end
