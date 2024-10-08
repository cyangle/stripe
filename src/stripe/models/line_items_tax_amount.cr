#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./tax_rate"

module Stripe
  #
  class LineItemsTaxAmount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount of tax applied for this rate.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "rate", type: Stripe::TaxRate?, default: nil, required: true, nullable: false, emit_null: false)]
    getter rate : Stripe::TaxRate? = nil

    # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
    @[JSON::Field(key: "taxability_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter taxability_reason : String? = nil
    ERROR_MESSAGE_FOR_TAXABILITY_REASON = "invalid value for \"taxability_reason\", must be one of [customer_exempt, not_collecting, not_subject_to_tax, not_supported, portion_product_exempt, portion_reduced_rated, portion_standard_rated, product_exempt, product_exempt_holiday, proportionally_rated, reduced_rated, reverse_charge, standard_rated, taxable_basis_reduced, zero_rated]."
    VALID_VALUES_FOR_TAXABILITY_REASON  = String.static_array("customer_exempt", "not_collecting", "not_subject_to_tax", "not_supported", "portion_product_exempt", "portion_reduced_rated", "portion_standard_rated", "product_exempt", "product_exempt_holiday", "proportionally_rated", "reduced_rated", "reverse_charge", "standard_rated", "taxable_basis_reduced", "zero_rated")

    # The amount on which tax is calculated, in cents (or local equivalent).
    @[JSON::Field(key: "taxable_amount", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter taxable_amount : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @rate : Stripe::TaxRate? = nil,
      @taxability_reason : String? = nil,
      @taxable_amount : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"rate\" is required and cannot be null") if @rate.nil?

      unless (_rate = @rate).nil?
        invalid_properties.concat(_rate.list_invalid_properties_for("rate")) if _rate.is_a?(OpenApi::Validatable)
      end
      unless (_taxability_reason = @taxability_reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAXABILITY_REASON) unless OpenApi::EnumValidator.valid?(_taxability_reason, VALID_VALUES_FOR_TAXABILITY_REASON)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @rate.nil?
      unless (_rate = @rate).nil?
        return false if _rate.is_a?(OpenApi::Validatable) && !_rate.valid?
      end

      unless (_taxability_reason = @taxability_reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_taxability_reason, VALID_VALUES_FOR_TAXABILITY_REASON)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rate Object to be assigned
    def rate=(new_value : Stripe::TaxRate?)
      raise ArgumentError.new("\"rate\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @rate = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] taxability_reason Object to be assigned
    def taxability_reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("taxability_reason", new_value, VALID_VALUES_FOR_TAXABILITY_REASON)
      end

      @taxability_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] taxable_amount Object to be assigned
    def taxable_amount=(new_value : Int64?)
      @taxable_amount = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @rate, @taxability_reason, @taxable_amount)
  end
end
