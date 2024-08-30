#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./canceled_expected_at"

module Stripe
  class NotReceived
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "additional_documentation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter additional_documentation : String? = nil
    ERROR_MESSAGE_FOR_ADDITIONAL_DOCUMENTATION = "invalid value for \"additional_documentation\", must be one of []."
    VALID_VALUES_FOR_ADDITIONAL_DOCUMENTATION  = String.static_array("")

    @[JSON::Field(key: "expected_at", type: Stripe::CanceledExpectedAt?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expected_at : Stripe::CanceledExpectedAt? = nil

    @[JSON::Field(key: "explanation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter explanation : String? = nil
    ERROR_MESSAGE_FOR_EXPLANATION = "invalid value for \"explanation\", must be one of []."
    VALID_VALUES_FOR_EXPLANATION  = String.static_array("")

    @[JSON::Field(key: "product_description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_description : String? = nil
    ERROR_MESSAGE_FOR_PRODUCT_DESCRIPTION = "invalid value for \"product_description\", must be one of []."
    VALID_VALUES_FOR_PRODUCT_DESCRIPTION  = String.static_array("")

    # Whether the product was a merchandise or service.
    @[JSON::Field(key: "product_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_type : String? = nil
    ERROR_MESSAGE_FOR_PRODUCT_TYPE = "invalid value for \"product_type\", must be one of [, merchandise, service]."
    VALID_VALUES_FOR_PRODUCT_TYPE  = String.static_array("", "merchandise", "service")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : String? = nil,
      @expected_at : Stripe::CanceledExpectedAt? = nil,
      @explanation : String? = nil,
      @product_description : String? = nil,
      @product_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_additional_documentation = @additional_documentation).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ADDITIONAL_DOCUMENTATION) unless OpenApi::EnumValidator.valid?(_additional_documentation, VALID_VALUES_FOR_ADDITIONAL_DOCUMENTATION)
      end
      unless (_expected_at = @expected_at).nil?
        invalid_properties.concat(_expected_at.list_invalid_properties_for("expected_at")) if _expected_at.is_a?(OpenApi::Validatable)
      end
      unless (_explanation = @explanation).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_EXPLANATION) unless OpenApi::EnumValidator.valid?(_explanation, VALID_VALUES_FOR_EXPLANATION)
      end
      unless (_product_description = @product_description).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRODUCT_DESCRIPTION) unless OpenApi::EnumValidator.valid?(_product_description, VALID_VALUES_FOR_PRODUCT_DESCRIPTION)
      end
      unless (_product_type = @product_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRODUCT_TYPE) unless OpenApi::EnumValidator.valid?(_product_type, VALID_VALUES_FOR_PRODUCT_TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_additional_documentation = @additional_documentation).nil?
        return false unless OpenApi::EnumValidator.valid?(_additional_documentation, VALID_VALUES_FOR_ADDITIONAL_DOCUMENTATION)
      end

      unless (_expected_at = @expected_at).nil?
        return false if _expected_at.is_a?(OpenApi::Validatable) && !_expected_at.valid?
      end

      unless (_explanation = @explanation).nil?
        return false unless OpenApi::EnumValidator.valid?(_explanation, VALID_VALUES_FOR_EXPLANATION)
      end

      unless (_product_description = @product_description).nil?
        return false unless OpenApi::EnumValidator.valid?(_product_description, VALID_VALUES_FOR_PRODUCT_DESCRIPTION)
      end

      unless (_product_type = @product_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_product_type, VALID_VALUES_FOR_PRODUCT_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_documentation Object to be assigned
    def additional_documentation=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("additional_documentation", new_value, VALID_VALUES_FOR_ADDITIONAL_DOCUMENTATION)
      end

      @additional_documentation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expected_at Object to be assigned
    def expected_at=(new_value : Stripe::CanceledExpectedAt?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @expected_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] explanation Object to be assigned
    def explanation=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("explanation", new_value, VALID_VALUES_FOR_EXPLANATION)
      end

      @explanation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_description Object to be assigned
    def product_description=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("product_description", new_value, VALID_VALUES_FOR_PRODUCT_DESCRIPTION)
      end

      @product_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_type Object to be assigned
    def product_type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("product_type", new_value, VALID_VALUES_FOR_PRODUCT_TYPE)
      end

      @product_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @expected_at, @explanation, @product_description, @product_type)
  end
end
