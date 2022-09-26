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
  class PlanTier
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # Price for the entire tier.
    @[JSON::Field(key: "flat_amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: flat_amount.nil? && !flat_amount_present?)]
    getter flat_amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? flat_amount_present : Bool = false

    # Same as `flat_amount`, but contains a decimal value with at most 12 decimal places.
    @[JSON::Field(key: "flat_amount_decimal", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: flat_amount_decimal.nil? && !flat_amount_decimal_present?)]
    getter flat_amount_decimal : String? = nil

    @[JSON::Field(ignore: true)]
    property? flat_amount_decimal_present : Bool = false

    # Per unit price for units relevant to the tier.
    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_amount.nil? && !unit_amount_present?)]
    getter unit_amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? unit_amount_present : Bool = false

    # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
    @[JSON::Field(key: "unit_amount_decimal", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_amount_decimal.nil? && !unit_amount_decimal_present?)]
    getter unit_amount_decimal : String? = nil

    @[JSON::Field(ignore: true)]
    property? unit_amount_decimal_present : Bool = false

    # Up to and including to this quantity will be contained in the tier.
    @[JSON::Field(key: "up_to", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: up_to.nil? && !up_to_present?)]
    getter up_to : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? up_to_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @flat_amount : Int64? = nil,
      @flat_amount_decimal : String? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil,
      @up_to : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flat_amount Object to be assigned
    def flat_amount=(flat_amount : Int64?)
      if flat_amount.nil?
        return @flat_amount = nil
      end
      @flat_amount = flat_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flat_amount_decimal Object to be assigned
    def flat_amount_decimal=(flat_amount_decimal : String?)
      if flat_amount_decimal.nil?
        return @flat_amount_decimal = nil
      end
      @flat_amount_decimal = flat_amount_decimal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount Object to be assigned
    def unit_amount=(unit_amount : Int64?)
      if unit_amount.nil?
        return @unit_amount = nil
      end
      @unit_amount = unit_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount_decimal Object to be assigned
    def unit_amount_decimal=(unit_amount_decimal : String?)
      if unit_amount_decimal.nil?
        return @unit_amount_decimal = nil
      end
      @unit_amount_decimal = unit_amount_decimal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] up_to Object to be assigned
    def up_to=(up_to : Int64?)
      if up_to.nil?
        return @up_to = nil
      end
      @up_to = up_to
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
    def_equals_and_hash(@flat_amount, @flat_amount_present, @flat_amount_decimal, @flat_amount_decimal_present, @unit_amount, @unit_amount_present, @unit_amount_decimal, @unit_amount_decimal_present, @up_to, @up_to_present)
  end
end
