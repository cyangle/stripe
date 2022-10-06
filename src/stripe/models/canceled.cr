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
  class Canceled
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "additional_documentation", type: Stripe::BusinessProfileSpecsSupportUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter additional_documentation : Stripe::BusinessProfileSpecsSupportUrl? = nil

    @[JSON::Field(key: "canceled_at", type: Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter canceled_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil

    @[JSON::Field(key: "cancellation_policy_provided", type: Stripe::CanceledCancellationPolicyProvided?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_policy_provided : Stripe::CanceledCancellationPolicyProvided? = nil

    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_reason : String? = nil
    MAX_LENGTH_FOR_CANCELLATION_REASON = 1500

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

    @[JSON::Field(key: "return_status", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter return_status : String? = nil
    ERROR_MESSAGE_FOR_RETURN_STATUS = "invalid value for \"return_status\", must be one of [, merchant_rejected, successful]."
    VALID_VALUES_FOR_RETURN_STATUS  = String.static_array("", "merchant_rejected", "successful")

    @[JSON::Field(key: "returned_at", type: Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter returned_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : Stripe::BusinessProfileSpecsSupportUrl? = nil,
      @canceled_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil,
      @cancellation_policy_provided : Stripe::CanceledCancellationPolicyProvided? = nil,
      @cancellation_reason : String? = nil,
      @expected_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil,
      @explanation : String? = nil,
      @product_description : String? = nil,
      @product_type : String? = nil,
      @return_status : String? = nil,
      @returned_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil
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
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cancellation_reason", _cancellation_reason.to_s.size, MAX_LENGTH_FOR_CANCELLATION_REASON)
          invalid_properties.push(max_length_error)
        end
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
        return false if _cancellation_reason.to_s.size > MAX_LENGTH_FOR_CANCELLATION_REASON
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
    def additional_documentation=(additional_documentation : Stripe::BusinessProfileSpecsSupportUrl?)
      if additional_documentation.nil?
        return @additional_documentation = nil
      end
      _additional_documentation = additional_documentation.not_nil!
      _additional_documentation.validate if _additional_documentation.is_a?(OpenApi::Validatable)
      @additional_documentation = _additional_documentation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canceled_at Object to be assigned
    def canceled_at=(canceled_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?)
      if canceled_at.nil?
        return @canceled_at = nil
      end
      _canceled_at = canceled_at.not_nil!
      _canceled_at.validate if _canceled_at.is_a?(OpenApi::Validatable)
      @canceled_at = _canceled_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_policy_provided Object to be assigned
    def cancellation_policy_provided=(cancellation_policy_provided : Stripe::CanceledCancellationPolicyProvided?)
      if cancellation_policy_provided.nil?
        return @cancellation_policy_provided = nil
      end
      _cancellation_policy_provided = cancellation_policy_provided.not_nil!
      _cancellation_policy_provided.validate if _cancellation_policy_provided.is_a?(OpenApi::Validatable)
      @cancellation_policy_provided = _cancellation_policy_provided
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(cancellation_reason : String?)
      if cancellation_reason.nil?
        return @cancellation_reason = nil
      end
      _cancellation_reason = cancellation_reason.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("cancellation_reason", _cancellation_reason.to_s.size, MAX_LENGTH_FOR_CANCELLATION_REASON)
      @cancellation_reason = _cancellation_reason
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_status Object to be assigned
    def return_status=(return_status : String?)
      if return_status.nil?
        return @return_status = nil
      end
      _return_status = return_status.not_nil!
      OpenApi::EnumValidator.validate("return_status", _return_status, VALID_VALUES_FOR_RETURN_STATUS)
      @return_status = _return_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] returned_at Object to be assigned
    def returned_at=(returned_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?)
      if returned_at.nil?
        return @returned_at = nil
      end
      _returned_at = returned_at.not_nil!
      _returned_at.validate if _returned_at.is_a?(OpenApi::Validatable)
      @returned_at = _returned_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @canceled_at, @cancellation_policy_provided, @cancellation_reason, @expected_at, @explanation, @product_description, @product_type, @return_status, @returned_at)
  end
end
