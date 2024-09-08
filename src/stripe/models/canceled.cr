#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./canceled_additional_documentation"
require "./canceled_canceled_at"
require "./canceled_cancellation_policy_provided"
require "./canceled_cancellation_reason"
require "./canceled_expected_at"
require "./canceled_explanation"
require "./canceled_product_description"
require "./canceled_returned_at"

module Stripe
  class Canceled
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "additional_documentation", type: Stripe::CanceledAdditionalDocumentation?, default: nil, required: false, nullable: false, emit_null: false)]
    getter additional_documentation : Stripe::CanceledAdditionalDocumentation? = nil

    @[JSON::Field(key: "canceled_at", type: Stripe::CanceledCanceledAt?, default: nil, required: false, nullable: false, emit_null: false)]
    getter canceled_at : Stripe::CanceledCanceledAt? = nil

    @[JSON::Field(key: "cancellation_policy_provided", type: Stripe::CanceledCancellationPolicyProvided?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_policy_provided : Stripe::CanceledCancellationPolicyProvided? = nil

    @[JSON::Field(key: "cancellation_reason", type: Stripe::CanceledCancellationReason?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_reason : Stripe::CanceledCancellationReason? = nil

    @[JSON::Field(key: "expected_at", type: Stripe::CanceledExpectedAt?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expected_at : Stripe::CanceledExpectedAt? = nil

    @[JSON::Field(key: "explanation", type: Stripe::CanceledExplanation?, default: nil, required: false, nullable: false, emit_null: false)]
    getter explanation : Stripe::CanceledExplanation? = nil

    @[JSON::Field(key: "product_description", type: Stripe::CanceledProductDescription?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_description : Stripe::CanceledProductDescription? = nil

    # Whether the product was a merchandise or service.
    @[JSON::Field(key: "product_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_type : String? = nil
    ERROR_MESSAGE_FOR_PRODUCT_TYPE = "invalid value for \"product_type\", must be one of [, merchandise, service]."
    VALID_VALUES_FOR_PRODUCT_TYPE  = String.static_array("", "merchandise", "service")

    # Result of cardholder's attempt to return the product.
    @[JSON::Field(key: "return_status", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter return_status : String? = nil
    ERROR_MESSAGE_FOR_RETURN_STATUS = "invalid value for \"return_status\", must be one of [, merchant_rejected, successful]."
    VALID_VALUES_FOR_RETURN_STATUS  = String.static_array("", "merchant_rejected", "successful")

    @[JSON::Field(key: "returned_at", type: Stripe::CanceledReturnedAt?, default: nil, required: false, nullable: false, emit_null: false)]
    getter returned_at : Stripe::CanceledReturnedAt? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : Stripe::CanceledAdditionalDocumentation? = nil,
      @canceled_at : Stripe::CanceledCanceledAt? = nil,
      @cancellation_policy_provided : Stripe::CanceledCancellationPolicyProvided? = nil,
      @cancellation_reason : Stripe::CanceledCancellationReason? = nil,
      @expected_at : Stripe::CanceledExpectedAt? = nil,
      @explanation : Stripe::CanceledExplanation? = nil,
      @product_description : Stripe::CanceledProductDescription? = nil,
      @product_type : String? = nil,
      @return_status : String? = nil,
      @returned_at : Stripe::CanceledReturnedAt? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_additional_documentation = @additional_documentation).nil?
        invalid_properties.concat(_additional_documentation.list_invalid_properties_for("additional_documentation")) if _additional_documentation.is_a?(OpenApi::Validatable)
      end
      unless (_canceled_at = @canceled_at).nil?
        invalid_properties.concat(_canceled_at.list_invalid_properties_for("canceled_at")) if _canceled_at.is_a?(OpenApi::Validatable)
      end
      unless (_cancellation_policy_provided = @cancellation_policy_provided).nil?
        invalid_properties.concat(_cancellation_policy_provided.list_invalid_properties_for("cancellation_policy_provided")) if _cancellation_policy_provided.is_a?(OpenApi::Validatable)
      end
      unless (_cancellation_reason = @cancellation_reason).nil?
        invalid_properties.concat(_cancellation_reason.list_invalid_properties_for("cancellation_reason")) if _cancellation_reason.is_a?(OpenApi::Validatable)
      end
      unless (_expected_at = @expected_at).nil?
        invalid_properties.concat(_expected_at.list_invalid_properties_for("expected_at")) if _expected_at.is_a?(OpenApi::Validatable)
      end
      unless (_explanation = @explanation).nil?
        invalid_properties.concat(_explanation.list_invalid_properties_for("explanation")) if _explanation.is_a?(OpenApi::Validatable)
      end
      unless (_product_description = @product_description).nil?
        invalid_properties.concat(_product_description.list_invalid_properties_for("product_description")) if _product_description.is_a?(OpenApi::Validatable)
      end
      unless (_product_type = @product_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRODUCT_TYPE) unless OpenApi::EnumValidator.valid?(_product_type, VALID_VALUES_FOR_PRODUCT_TYPE)
      end
      unless (_return_status = @return_status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_RETURN_STATUS) unless OpenApi::EnumValidator.valid?(_return_status, VALID_VALUES_FOR_RETURN_STATUS)
      end
      unless (_returned_at = @returned_at).nil?
        invalid_properties.concat(_returned_at.list_invalid_properties_for("returned_at")) if _returned_at.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_additional_documentation = @additional_documentation).nil?
        return false if _additional_documentation.is_a?(OpenApi::Validatable) && !_additional_documentation.valid?
      end

      unless (_canceled_at = @canceled_at).nil?
        return false if _canceled_at.is_a?(OpenApi::Validatable) && !_canceled_at.valid?
      end

      unless (_cancellation_policy_provided = @cancellation_policy_provided).nil?
        return false if _cancellation_policy_provided.is_a?(OpenApi::Validatable) && !_cancellation_policy_provided.valid?
      end

      unless (_cancellation_reason = @cancellation_reason).nil?
        return false if _cancellation_reason.is_a?(OpenApi::Validatable) && !_cancellation_reason.valid?
      end

      unless (_expected_at = @expected_at).nil?
        return false if _expected_at.is_a?(OpenApi::Validatable) && !_expected_at.valid?
      end

      unless (_explanation = @explanation).nil?
        return false if _explanation.is_a?(OpenApi::Validatable) && !_explanation.valid?
      end

      unless (_product_description = @product_description).nil?
        return false if _product_description.is_a?(OpenApi::Validatable) && !_product_description.valid?
      end

      unless (_product_type = @product_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_product_type, VALID_VALUES_FOR_PRODUCT_TYPE)
      end

      unless (_return_status = @return_status).nil?
        return false unless OpenApi::EnumValidator.valid?(_return_status, VALID_VALUES_FOR_RETURN_STATUS)
      end

      unless (_returned_at = @returned_at).nil?
        return false if _returned_at.is_a?(OpenApi::Validatable) && !_returned_at.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_documentation Object to be assigned
    def additional_documentation=(new_value : Stripe::CanceledAdditionalDocumentation?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @additional_documentation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canceled_at Object to be assigned
    def canceled_at=(new_value : Stripe::CanceledCanceledAt?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @canceled_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_policy_provided Object to be assigned
    def cancellation_policy_provided=(new_value : Stripe::CanceledCancellationPolicyProvided?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @cancellation_policy_provided = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(new_value : Stripe::CanceledCancellationReason?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @cancellation_reason = new_value
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
    def explanation=(new_value : Stripe::CanceledExplanation?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @explanation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_description Object to be assigned
    def product_description=(new_value : Stripe::CanceledProductDescription?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_status Object to be assigned
    def return_status=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("return_status", new_value, VALID_VALUES_FOR_RETURN_STATUS)
      end

      @return_status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] returned_at Object to be assigned
    def returned_at=(new_value : Stripe::CanceledReturnedAt?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @returned_at = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @canceled_at, @cancellation_policy_provided, @cancellation_reason, @expected_at, @explanation, @product_description, @product_type, @return_status, @returned_at)
  end
end
