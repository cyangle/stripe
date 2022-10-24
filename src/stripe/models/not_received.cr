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
  class NotReceived
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "additional_documentation", type: Stripe::PostOrdersIdRequestPaymentSettingsReturnUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter additional_documentation : Stripe::PostOrdersIdRequestPaymentSettingsReturnUrl? = nil

    @[JSON::Field(key: "expected_at", type: Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expected_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil

    @[JSON::Field(key: "explanation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter explanation : String? = nil
    MAX_LENGTH_FOR_EXPLANATION = 1500

    @[JSON::Field(key: "product_description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_description : String? = nil
    MAX_LENGTH_FOR_PRODUCT_DESCRIPTION = 1500

    @[JSON::Field(key: "product_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_type : String? = nil
    ERROR_MESSAGE_FOR_PRODUCT_TYPE = "invalid value for \"product_type\", must be one of [, merchandise, service]."
    VALID_VALUES_FOR_PRODUCT_TYPE  = String.static_array("", "merchandise", "service")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : Stripe::PostOrdersIdRequestPaymentSettingsReturnUrl? = nil,
      @expected_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil,
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
      unless (_expected_at = @expected_at).nil?
        invalid_properties.concat(_expected_at.list_invalid_properties_for("expected_at")) if _expected_at.is_a?(OpenApi::Validatable)
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

      unless (_expected_at = @expected_at).nil?
        return false if _expected_at.is_a?(OpenApi::Validatable) && !_expected_at.valid?
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
    def additional_documentation=(additional_documentation : Stripe::PostOrdersIdRequestPaymentSettingsReturnUrl?)
      if additional_documentation.nil?
        return @additional_documentation = nil
      end
      _additional_documentation = additional_documentation.not_nil!
      _additional_documentation.validate if _additional_documentation.is_a?(OpenApi::Validatable)
      @additional_documentation = _additional_documentation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expected_at Object to be assigned
    def expected_at=(expected_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?)
      if expected_at.nil?
        return @expected_at = nil
      end
      _expected_at = expected_at.not_nil!
      _expected_at.validate if _expected_at.is_a?(OpenApi::Validatable)
      @expected_at = _expected_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] explanation Object to be assigned
    def explanation=(explanation : String?)
      if explanation.nil?
        return @explanation = nil
      end
      _explanation = explanation.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("explanation", _explanation.to_s.size, MAX_LENGTH_FOR_EXPLANATION)
      @explanation = _explanation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_description Object to be assigned
    def product_description=(product_description : String?)
      if product_description.nil?
        return @product_description = nil
      end
      _product_description = product_description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("product_description", _product_description.to_s.size, MAX_LENGTH_FOR_PRODUCT_DESCRIPTION)
      @product_description = _product_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_type Object to be assigned
    def product_type=(product_type : String?)
      if product_type.nil?
        return @product_type = nil
      end
      _product_type = product_type.not_nil!
      OpenApi::EnumValidator.validate("product_type", _product_type, VALID_VALUES_FOR_PRODUCT_TYPE)
      @product_type = _product_type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @expected_at, @explanation, @product_description, @product_type)
  end
end
