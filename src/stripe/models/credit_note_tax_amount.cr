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
  class CreditNoteTaxAmount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The amount, in %s, of the tax.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Whether this tax amount is inclusive or exclusive.
    @[JSON::Field(key: "inclusive", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter inclusive : Bool? = nil

    @[JSON::Field(key: "tax_rate", type: Stripe::CreditNoteTaxAmountTaxRate?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_rate : Stripe::CreditNoteTaxAmountTaxRate? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @inclusive : Bool? = nil,
      @tax_rate : Stripe::CreditNoteTaxAmountTaxRate? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"inclusive\" is required and cannot be null") if @inclusive.nil?

      invalid_properties.push("\"tax_rate\" is required and cannot be null") if @tax_rate.nil?
      if _tax_rate = @tax_rate
        if _tax_rate.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_tax_rate.list_invalid_properties_for("tax_rate"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @inclusive.nil?

      return false if @tax_rate.nil?
      if _tax_rate = @tax_rate
        if _tax_rate.is_a?(OpenApi::Validatable)
          return false unless _tax_rate.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inclusive Object to be assigned
    def inclusive=(inclusive : Bool?)
      if inclusive.nil?
        raise ArgumentError.new("\"inclusive\" is required and cannot be null")
      end
      _inclusive = inclusive.not_nil!
      @inclusive = _inclusive
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rate Object to be assigned
    def tax_rate=(tax_rate : Stripe::CreditNoteTaxAmountTaxRate?)
      if tax_rate.nil?
        raise ArgumentError.new("\"tax_rate\" is required and cannot be null")
      end
      _tax_rate = tax_rate.not_nil!
      if _tax_rate.is_a?(OpenApi::Validatable)
        _tax_rate.validate
      end
      @tax_rate = _tax_rate
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @inclusive, @tax_rate)
  end
end
