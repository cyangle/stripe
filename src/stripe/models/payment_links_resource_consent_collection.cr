#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_links_resource_payment_method_reuse_agreement"

module Stripe
  #
  class PaymentLinksResourceConsentCollection
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "payment_method_reuse_agreement", type: Stripe::PaymentLinksResourcePaymentMethodReuseAgreement?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payment_method_reuse_agreement : Stripe::PaymentLinksResourcePaymentMethodReuseAgreement? = nil

    # If set to `auto`, enables the collection of customer consent for promotional communications.
    @[JSON::Field(key: "promotions", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter promotions : String? = nil
    ERROR_MESSAGE_FOR_PROMOTIONS = "invalid value for \"promotions\", must be one of [auto, none]."
    VALID_VALUES_FOR_PROMOTIONS  = String.static_array("auto", "none")

    # If set to `required`, it requires cutomers to accept the terms of service before being able to pay. If set to `none`, customers won't be shown a checkbox to accept the terms of service.
    @[JSON::Field(key: "terms_of_service", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter terms_of_service : String? = nil
    ERROR_MESSAGE_FOR_TERMS_OF_SERVICE = "invalid value for \"terms_of_service\", must be one of [none, required]."
    VALID_VALUES_FOR_TERMS_OF_SERVICE  = String.static_array("none", "required")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @payment_method_reuse_agreement : Stripe::PaymentLinksResourcePaymentMethodReuseAgreement? = nil,
      @promotions : String? = nil,
      @terms_of_service : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_payment_method_reuse_agreement = @payment_method_reuse_agreement).nil?
        invalid_properties.concat(_payment_method_reuse_agreement.list_invalid_properties_for("payment_method_reuse_agreement")) if _payment_method_reuse_agreement.is_a?(OpenApi::Validatable)
      end
      unless (_promotions = @promotions).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PROMOTIONS) unless OpenApi::EnumValidator.valid?(_promotions, VALID_VALUES_FOR_PROMOTIONS)
      end
      unless (_terms_of_service = @terms_of_service).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TERMS_OF_SERVICE) unless OpenApi::EnumValidator.valid?(_terms_of_service, VALID_VALUES_FOR_TERMS_OF_SERVICE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_payment_method_reuse_agreement = @payment_method_reuse_agreement).nil?
        return false if _payment_method_reuse_agreement.is_a?(OpenApi::Validatable) && !_payment_method_reuse_agreement.valid?
      end

      unless (_promotions = @promotions).nil?
        return false unless OpenApi::EnumValidator.valid?(_promotions, VALID_VALUES_FOR_PROMOTIONS)
      end

      unless (_terms_of_service = @terms_of_service).nil?
        return false unless OpenApi::EnumValidator.valid?(_terms_of_service, VALID_VALUES_FOR_TERMS_OF_SERVICE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_reuse_agreement Object to be assigned
    def payment_method_reuse_agreement=(new_value : Stripe::PaymentLinksResourcePaymentMethodReuseAgreement?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_method_reuse_agreement = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promotions Object to be assigned
    def promotions=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("promotions", new_value, VALID_VALUES_FOR_PROMOTIONS)
      end

      @promotions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] terms_of_service Object to be assigned
    def terms_of_service=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("terms_of_service", new_value, VALID_VALUES_FOR_TERMS_OF_SERVICE)
      end

      @terms_of_service = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payment_method_reuse_agreement, @promotions, @terms_of_service)
  end
end
