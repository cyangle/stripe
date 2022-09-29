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
  class Tier
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "up_to", type: Stripe::TierUpTo?, default: nil, required: true, nullable: false, emit_null: false)]
    getter up_to : Stripe::TierUpTo? = nil

    # Optional properties

    @[JSON::Field(key: "flat_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter flat_amount : Int64? = nil

    @[JSON::Field(key: "flat_amount_decimal", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter flat_amount_decimal : String? = nil

    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount : Int64? = nil

    @[JSON::Field(key: "unit_amount_decimal", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount_decimal : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @up_to : Stripe::TierUpTo? = nil,
      # Optional properties
      @flat_amount : Int64? = nil,
      @flat_amount_decimal : String? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"up_to\" is required and cannot be null") if @up_to.nil?
      if _up_to = @up_to
        invalid_properties.concat(_up_to.list_invalid_properties_for("up_to")) if _up_to.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @up_to.nil?
      if _up_to = @up_to
        return false if _up_to.is_a?(OpenApi::Validatable) && !_up_to.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] up_to Object to be assigned
    def up_to=(up_to : Stripe::TierUpTo?)
      if up_to.nil?
        raise ArgumentError.new("\"up_to\" is required and cannot be null")
      end
      _up_to = up_to.not_nil!
      _up_to.validate if _up_to.is_a?(OpenApi::Validatable)
      @up_to = _up_to
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flat_amount Object to be assigned
    def flat_amount=(flat_amount : Int64?)
      if flat_amount.nil?
        return @flat_amount = nil
      end
      _flat_amount = flat_amount.not_nil!
      @flat_amount = _flat_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flat_amount_decimal Object to be assigned
    def flat_amount_decimal=(flat_amount_decimal : String?)
      if flat_amount_decimal.nil?
        return @flat_amount_decimal = nil
      end
      _flat_amount_decimal = flat_amount_decimal.not_nil!
      @flat_amount_decimal = _flat_amount_decimal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount Object to be assigned
    def unit_amount=(unit_amount : Int64?)
      if unit_amount.nil?
        return @unit_amount = nil
      end
      _unit_amount = unit_amount.not_nil!
      @unit_amount = _unit_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount_decimal Object to be assigned
    def unit_amount_decimal=(unit_amount_decimal : String?)
      if unit_amount_decimal.nil?
        return @unit_amount_decimal = nil
      end
      _unit_amount_decimal = unit_amount_decimal.not_nil!
      @unit_amount_decimal = _unit_amount_decimal
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@up_to, @flat_amount, @flat_amount_decimal, @unit_amount, @unit_amount_decimal)
  end
end
