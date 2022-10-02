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
  # Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
  class PaymentSettings1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "default_mandate", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_mandate : String? = nil
    MAX_LENGTH_FOR_DEFAULT_MANDATE = 5000

    @[JSON::Field(key: "payment_method_options", type: Stripe::PaymentMethodOptions1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_options : Stripe::PaymentMethodOptions1? = nil

    @[JSON::Field(key: "payment_method_types", type: Stripe::PaymentSettingsPaymentMethodTypes?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_types : Stripe::PaymentSettingsPaymentMethodTypes? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @default_mandate : String? = nil,
      @payment_method_options : Stripe::PaymentMethodOptions1? = nil,
      @payment_method_types : Stripe::PaymentSettingsPaymentMethodTypes? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _default_mandate = @default_mandate
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_mandate", _default_mandate.to_s.size, MAX_LENGTH_FOR_DEFAULT_MANDATE)
          invalid_properties.push(max_length_error)
        end
      end
      if _payment_method_options = @payment_method_options
        invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options")) if _payment_method_options.is_a?(OpenApi::Validatable)
      end
      if _payment_method_types = @payment_method_types
        invalid_properties.concat(_payment_method_types.list_invalid_properties_for("payment_method_types")) if _payment_method_types.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _default_mandate = @default_mandate
        return false if _default_mandate.to_s.size > MAX_LENGTH_FOR_DEFAULT_MANDATE
      end

      if _payment_method_options = @payment_method_options
        return false if _payment_method_options.is_a?(OpenApi::Validatable) && !_payment_method_options.valid?
      end

      if _payment_method_types = @payment_method_types
        return false if _payment_method_types.is_a?(OpenApi::Validatable) && !_payment_method_types.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_mandate Object to be assigned
    def default_mandate=(default_mandate : String?)
      if default_mandate.nil?
        return @default_mandate = nil
      end
      _default_mandate = default_mandate.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_mandate", _default_mandate.to_s.size, MAX_LENGTH_FOR_DEFAULT_MANDATE)
      @default_mandate = _default_mandate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(payment_method_options : Stripe::PaymentMethodOptions1?)
      if payment_method_options.nil?
        return @payment_method_options = nil
      end
      _payment_method_options = payment_method_options.not_nil!
      _payment_method_options.validate if _payment_method_options.is_a?(OpenApi::Validatable)
      @payment_method_options = _payment_method_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(payment_method_types : Stripe::PaymentSettingsPaymentMethodTypes?)
      if payment_method_types.nil?
        return @payment_method_types = nil
      end
      _payment_method_types = payment_method_types.not_nil!
      _payment_method_types.validate if _payment_method_types.is_a?(OpenApi::Validatable)
      @payment_method_types = _payment_method_types
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@default_mandate, @payment_method_options, @payment_method_types)
  end
end
