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
  class Level3LineItems
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "discount_amount", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter discount_amount : Int64? = nil

    @[JSON::Field(key: "product_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter product_code : String? = nil
    MAX_LENGTH_FOR_PRODUCT_CODE = 5000

    @[JSON::Field(key: "product_description", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter product_description : String? = nil
    MAX_LENGTH_FOR_PRODUCT_DESCRIPTION = 5000

    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_amount", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter tax_amount : Int64? = nil

    @[JSON::Field(key: "unit_cost", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter unit_cost : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @discount_amount : Int64? = nil,
      @product_code : String? = nil,
      @product_description : String? = nil,
      @quantity : Int64? = nil,
      @tax_amount : Int64? = nil,
      @unit_cost : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"product_code\" is required and cannot be null") if @product_code.nil?

      unless (_product_code = @product_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product_code", _product_code.to_s.size, MAX_LENGTH_FOR_PRODUCT_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"product_description\" is required and cannot be null") if @product_description.nil?

      unless (_product_description = @product_description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product_description", _product_description.to_s.size, MAX_LENGTH_FOR_PRODUCT_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @product_code.nil?
      unless (_product_code = @product_code).nil?
        return false if _product_code.to_s.size > MAX_LENGTH_FOR_PRODUCT_CODE
      end

      return false if @product_description.nil?
      unless (_product_description = @product_description).nil?
        return false if _product_description.to_s.size > MAX_LENGTH_FOR_PRODUCT_DESCRIPTION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discount_amount Object to be assigned
    def discount_amount=(new_value : Int64?)
      @discount_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_code Object to be assigned
    def product_code=(new_value : String?)
      raise ArgumentError.new("\"product_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("product_code", new_value.to_s.size, MAX_LENGTH_FOR_PRODUCT_CODE)
      end

      @product_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_description Object to be assigned
    def product_description=(new_value : String?)
      raise ArgumentError.new("\"product_description\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("product_description", new_value.to_s.size, MAX_LENGTH_FOR_PRODUCT_DESCRIPTION)
      end

      @product_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(new_value : Int64?)
      @quantity = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_amount Object to be assigned
    def tax_amount=(new_value : Int64?)
      @tax_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_cost Object to be assigned
    def unit_cost=(new_value : Int64?)
      @unit_cost = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@discount_amount, @product_code, @product_description, @quantity, @tax_amount, @unit_cost)
  end
end
