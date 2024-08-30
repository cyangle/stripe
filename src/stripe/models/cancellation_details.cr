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
  class CancellationDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
    @[JSON::Field(key: "comment", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter comment : String? = nil
    MAX_LENGTH_FOR_COMMENT = 5000

    # The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
    @[JSON::Field(key: "feedback", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter feedback : String? = nil
    ERROR_MESSAGE_FOR_FEEDBACK = "invalid value for \"feedback\", must be one of [customer_service, low_quality, missing_features, other, switched_service, too_complex, too_expensive, unused]."
    VALID_VALUES_FOR_FEEDBACK  = String.static_array("customer_service", "low_quality", "missing_features", "other", "switched_service", "too_complex", "too_expensive", "unused")

    # Why this subscription was canceled.
    @[JSON::Field(key: "reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter reason : String? = nil
    ERROR_MESSAGE_FOR_REASON = "invalid value for \"reason\", must be one of [cancellation_requested, payment_disputed, payment_failed]."
    VALID_VALUES_FOR_REASON  = String.static_array("cancellation_requested", "payment_disputed", "payment_failed")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @comment : String? = nil,
      @feedback : String? = nil,
      @reason : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_comment = @comment).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("comment", _comment.to_s.size, MAX_LENGTH_FOR_COMMENT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_feedback = @feedback).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_FEEDBACK) unless OpenApi::EnumValidator.valid?(_feedback, VALID_VALUES_FOR_FEEDBACK)
      end
      unless (_reason = @reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_REASON) unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_comment = @comment).nil?
        return false if _comment.to_s.size > MAX_LENGTH_FOR_COMMENT
      end

      unless (_feedback = @feedback).nil?
        return false unless OpenApi::EnumValidator.valid?(_feedback, VALID_VALUES_FOR_FEEDBACK)
      end

      unless (_reason = @reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] comment Object to be assigned
    def comment=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("comment", new_value.to_s.size, MAX_LENGTH_FOR_COMMENT)
      end

      @comment = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] feedback Object to be assigned
    def feedback=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("feedback", new_value, VALID_VALUES_FOR_FEEDBACK)
      end

      @feedback = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("reason", new_value, VALID_VALUES_FOR_REASON)
      end

      @reason = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@comment, @feedback, @reason)
  end
end
