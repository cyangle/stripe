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
  class RangeQuerySpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "gt", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter gt : Int64? = nil

    @[JSON::Field(key: "gte", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter gte : Int64? = nil

    @[JSON::Field(key: "lt", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter lt : Int64? = nil

    @[JSON::Field(key: "lte", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter lte : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @gt : Int64? = nil,
      @gte : Int64? = nil,
      @lt : Int64? = nil,
      @lte : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gt Object to be assigned
    def gt=(gt : Int64?)
      if gt.nil?
        return @gt = nil
      end
      _gt = gt.not_nil!
      @gt = _gt
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gte Object to be assigned
    def gte=(gte : Int64?)
      if gte.nil?
        return @gte = nil
      end
      _gte = gte.not_nil!
      @gte = _gte
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lt Object to be assigned
    def lt=(lt : Int64?)
      if lt.nil?
        return @lt = nil
      end
      _lt = lt.not_nil!
      @lt = _lt
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lte Object to be assigned
    def lte=(lte : Int64?)
      if lte.nil?
        return @lte = nil
      end
      _lte = lte.not_nil!
      @lte = _lte
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@gt, @gte, @lt, @lte)
  end
end
