#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_dispute_canceled_evidence_additional_documentation"

module Stripe
  #
  class IssuingDisputeOtherEvidence
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "additional_documentation", type: Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation?, default: nil, required: true, nullable: true, emit_null: true)]
    getter additional_documentation : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation? = nil

    # Explanation of why the cardholder is disputing this transaction.
    @[JSON::Field(key: "explanation", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter explanation : String? = nil
    MAX_LENGTH_FOR_EXPLANATION = 5000

    # Description of the merchandise or service that was purchased.
    @[JSON::Field(key: "product_description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter product_description : String? = nil
    MAX_LENGTH_FOR_PRODUCT_DESCRIPTION = 5000

    # Whether the product was a merchandise or service.
    @[JSON::Field(key: "product_type", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter product_type : String? = nil
    ERROR_MESSAGE_FOR_PRODUCT_TYPE = "invalid value for \"product_type\", must be one of [merchandise, service]."
    VALID_VALUES_FOR_PRODUCT_TYPE  = String.static_array("merchandise", "service")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @additional_documentation : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation? = nil,
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
        invalid_properties.concat(_additional_documentation.list_invalid_properties_for("additional_documentation")) if _additional_documentation.is_a?(OpenApi::Validatable)
      end
      unless (_explanation = @explanation).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("explanation", _explanation.to_s.size, MAX_LENGTH_FOR_EXPLANATION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_product_description = @product_description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product_description", _product_description.to_s.size, MAX_LENGTH_FOR_PRODUCT_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
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
        return false if _additional_documentation.is_a?(OpenApi::Validatable) && !_additional_documentation.valid?
      end

      unless (_explanation = @explanation).nil?
        return false if _explanation.to_s.size > MAX_LENGTH_FOR_EXPLANATION
      end

      unless (_product_description = @product_description).nil?
        return false if _product_description.to_s.size > MAX_LENGTH_FOR_PRODUCT_DESCRIPTION
      end

      unless (_product_type = @product_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_product_type, VALID_VALUES_FOR_PRODUCT_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_documentation Object to be assigned
    def additional_documentation=(new_value : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @additional_documentation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] explanation Object to be assigned
    def explanation=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("explanation", new_value.to_s.size, MAX_LENGTH_FOR_EXPLANATION)
      end

      @explanation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_description Object to be assigned
    def product_description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("product_description", new_value.to_s.size, MAX_LENGTH_FOR_PRODUCT_DESCRIPTION)
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
    def_equals_and_hash(@additional_documentation, @explanation, @product_description, @product_type)
  end
end
