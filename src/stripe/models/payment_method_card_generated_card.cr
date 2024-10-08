#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_method_card_generated_card_payment_method_details"
require "./payment_method_card_generated_card_setup_attempt"

module Stripe
  #
  class PaymentMethodCardGeneratedCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The charge that created this object.
    @[JSON::Field(key: "charge", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter charge : String? = nil
    MAX_LENGTH_FOR_CHARGE = 5000

    @[JSON::Field(key: "payment_method_details", type: Stripe::PaymentMethodCardGeneratedCardPaymentMethodDetails?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payment_method_details : Stripe::PaymentMethodCardGeneratedCardPaymentMethodDetails? = nil

    @[JSON::Field(key: "setup_attempt", type: Stripe::PaymentMethodCardGeneratedCardSetupAttempt?, default: nil, required: true, nullable: true, emit_null: true)]
    getter setup_attempt : Stripe::PaymentMethodCardGeneratedCardSetupAttempt? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @charge : String? = nil,
      @payment_method_details : Stripe::PaymentMethodCardGeneratedCardPaymentMethodDetails? = nil,
      @setup_attempt : Stripe::PaymentMethodCardGeneratedCardSetupAttempt? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_charge = @charge).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("charge", _charge.to_s.size, MAX_LENGTH_FOR_CHARGE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payment_method_details = @payment_method_details).nil?
        invalid_properties.concat(_payment_method_details.list_invalid_properties_for("payment_method_details")) if _payment_method_details.is_a?(OpenApi::Validatable)
      end
      unless (_setup_attempt = @setup_attempt).nil?
        invalid_properties.concat(_setup_attempt.list_invalid_properties_for("setup_attempt")) if _setup_attempt.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_charge = @charge).nil?
        return false if _charge.to_s.size > MAX_LENGTH_FOR_CHARGE
      end

      unless (_payment_method_details = @payment_method_details).nil?
        return false if _payment_method_details.is_a?(OpenApi::Validatable) && !_payment_method_details.valid?
      end

      unless (_setup_attempt = @setup_attempt).nil?
        return false if _setup_attempt.is_a?(OpenApi::Validatable) && !_setup_attempt.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charge Object to be assigned
    def charge=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("charge", new_value.to_s.size, MAX_LENGTH_FOR_CHARGE)
      end

      @charge = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_details Object to be assigned
    def payment_method_details=(new_value : Stripe::PaymentMethodCardGeneratedCardPaymentMethodDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_method_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_attempt Object to be assigned
    def setup_attempt=(new_value : Stripe::PaymentMethodCardGeneratedCardSetupAttempt?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @setup_attempt = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@charge, @payment_method_details, @setup_attempt)
  end
end
