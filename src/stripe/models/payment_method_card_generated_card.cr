#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class PaymentMethodCardGeneratedCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The charge that created this object.
    @[JSON::Field(key: "charge", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: charge.nil? && !charge_present?)]
    getter charge : String? = nil
    MAX_LENGTH_FOR_CHARGE = 5000

    @[JSON::Field(ignore: true)]
    property? charge_present : Bool = false

    @[JSON::Field(key: "payment_method_details", type: Stripe::PaymentMethodCardGeneratedCardPaymentMethodDetails?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_method_details.nil? && !payment_method_details_present?)]
    getter payment_method_details : Stripe::PaymentMethodCardGeneratedCardPaymentMethodDetails? = nil

    @[JSON::Field(ignore: true)]
    property? payment_method_details_present : Bool = false

    @[JSON::Field(key: "setup_attempt", type: Stripe::PaymentMethodCardGeneratedCardSetupAttempt?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: setup_attempt.nil? && !setup_attempt_present?)]
    getter setup_attempt : Stripe::PaymentMethodCardGeneratedCardSetupAttempt? = nil

    @[JSON::Field(ignore: true)]
    property? setup_attempt_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
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
    def_equals_and_hash(@charge, @charge_present, @payment_method_details, @payment_method_details_present, @setup_attempt, @setup_attempt_present)
  end
end
