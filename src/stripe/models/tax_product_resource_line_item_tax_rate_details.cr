#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class TaxProductResourceLineItemTaxRateDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A localized display name for tax type, intended to be human-readable. For example, \"Local Sales and Use Tax\", \"Value-added tax (VAT)\", or \"Umsatzsteuer (USt.)\".
    @[JSON::Field(key: "display_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter display_name : String? = nil
    MAX_LENGTH_FOR_DISPLAY_NAME = 5000

    # The tax rate percentage as a string. For example, 8.5% is represented as \"8.5\".
    @[JSON::Field(key: "percentage_decimal", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter percentage_decimal : String? = nil
    MAX_LENGTH_FOR_PERCENTAGE_DECIMAL = 5000

    # The tax type, such as `vat` or `sales_tax`.
    @[JSON::Field(key: "tax_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_type : String? = nil
    ERROR_MESSAGE_FOR_TAX_TYPE = "invalid value for \"tax_type\", must be one of [amusement_tax, communications_tax, gst, hst, igst, jct, lease_tax, pst, qst, rst, sales_tax, vat]."
    VALID_VALUES_FOR_TAX_TYPE  = String.static_array("amusement_tax", "communications_tax", "gst", "hst", "igst", "jct", "lease_tax", "pst", "qst", "rst", "sales_tax", "vat")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @display_name : String? = nil,
      @percentage_decimal : String? = nil,
      @tax_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"display_name\" is required and cannot be null") if @display_name.nil?

      unless (_display_name = @display_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("display_name", _display_name.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"percentage_decimal\" is required and cannot be null") if @percentage_decimal.nil?

      unless (_percentage_decimal = @percentage_decimal).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("percentage_decimal", _percentage_decimal.to_s.size, MAX_LENGTH_FOR_PERCENTAGE_DECIMAL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"tax_type\" is required and cannot be null") if @tax_type.nil?

      unless (_tax_type = @tax_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_TYPE) unless OpenApi::EnumValidator.valid?(_tax_type, VALID_VALUES_FOR_TAX_TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @display_name.nil?
      unless (_display_name = @display_name).nil?
        return false if _display_name.to_s.size > MAX_LENGTH_FOR_DISPLAY_NAME
      end

      return false if @percentage_decimal.nil?
      unless (_percentage_decimal = @percentage_decimal).nil?
        return false if _percentage_decimal.to_s.size > MAX_LENGTH_FOR_PERCENTAGE_DECIMAL
      end

      return false if @tax_type.nil?
      unless (_tax_type = @tax_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_tax_type, VALID_VALUES_FOR_TAX_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_name Object to be assigned
    def display_name=(new_value : String?)
      raise ArgumentError.new("\"display_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("display_name", new_value.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
      end

      @display_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] percentage_decimal Object to be assigned
    def percentage_decimal=(new_value : String?)
      raise ArgumentError.new("\"percentage_decimal\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("percentage_decimal", new_value.to_s.size, MAX_LENGTH_FOR_PERCENTAGE_DECIMAL)
      end

      @percentage_decimal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_type Object to be assigned
    def tax_type=(new_value : String?)
      raise ArgumentError.new("\"tax_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("tax_type", new_value, VALID_VALUES_FOR_TAX_TYPE)
      end

      @tax_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@display_name, @percentage_decimal, @tax_type)
  end
end
