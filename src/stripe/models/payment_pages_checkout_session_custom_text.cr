#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_pages_checkout_session_custom_text_after_submit"
require "./payment_pages_checkout_session_custom_text_shipping_address"
require "./payment_pages_checkout_session_custom_text_submit"
require "./payment_pages_checkout_session_custom_text_terms_of_service_acceptance"

module Stripe
  #
  class PaymentPagesCheckoutSessionCustomText
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "after_submit", type: Stripe::PaymentPagesCheckoutSessionCustomTextAfterSubmit?, default: nil, required: true, nullable: true, emit_null: true)]
    getter after_submit : Stripe::PaymentPagesCheckoutSessionCustomTextAfterSubmit? = nil

    @[JSON::Field(key: "shipping_address", type: Stripe::PaymentPagesCheckoutSessionCustomTextShippingAddress?, default: nil, required: true, nullable: true, emit_null: true)]
    getter shipping_address : Stripe::PaymentPagesCheckoutSessionCustomTextShippingAddress? = nil

    @[JSON::Field(key: "submit", type: Stripe::PaymentPagesCheckoutSessionCustomTextSubmit?, default: nil, required: true, nullable: true, emit_null: true)]
    getter submit : Stripe::PaymentPagesCheckoutSessionCustomTextSubmit? = nil

    @[JSON::Field(key: "terms_of_service_acceptance", type: Stripe::PaymentPagesCheckoutSessionCustomTextTermsOfServiceAcceptance?, default: nil, required: true, nullable: true, emit_null: true)]
    getter terms_of_service_acceptance : Stripe::PaymentPagesCheckoutSessionCustomTextTermsOfServiceAcceptance? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @after_submit : Stripe::PaymentPagesCheckoutSessionCustomTextAfterSubmit? = nil,
      @shipping_address : Stripe::PaymentPagesCheckoutSessionCustomTextShippingAddress? = nil,
      @submit : Stripe::PaymentPagesCheckoutSessionCustomTextSubmit? = nil,
      @terms_of_service_acceptance : Stripe::PaymentPagesCheckoutSessionCustomTextTermsOfServiceAcceptance? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_after_submit = @after_submit).nil?
        invalid_properties.concat(_after_submit.list_invalid_properties_for("after_submit")) if _after_submit.is_a?(OpenApi::Validatable)
      end
      unless (_shipping_address = @shipping_address).nil?
        invalid_properties.concat(_shipping_address.list_invalid_properties_for("shipping_address")) if _shipping_address.is_a?(OpenApi::Validatable)
      end
      unless (_submit = @submit).nil?
        invalid_properties.concat(_submit.list_invalid_properties_for("submit")) if _submit.is_a?(OpenApi::Validatable)
      end
      unless (_terms_of_service_acceptance = @terms_of_service_acceptance).nil?
        invalid_properties.concat(_terms_of_service_acceptance.list_invalid_properties_for("terms_of_service_acceptance")) if _terms_of_service_acceptance.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_after_submit = @after_submit).nil?
        return false if _after_submit.is_a?(OpenApi::Validatable) && !_after_submit.valid?
      end

      unless (_shipping_address = @shipping_address).nil?
        return false if _shipping_address.is_a?(OpenApi::Validatable) && !_shipping_address.valid?
      end

      unless (_submit = @submit).nil?
        return false if _submit.is_a?(OpenApi::Validatable) && !_submit.valid?
      end

      unless (_terms_of_service_acceptance = @terms_of_service_acceptance).nil?
        return false if _terms_of_service_acceptance.is_a?(OpenApi::Validatable) && !_terms_of_service_acceptance.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] after_submit Object to be assigned
    def after_submit=(new_value : Stripe::PaymentPagesCheckoutSessionCustomTextAfterSubmit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @after_submit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_address Object to be assigned
    def shipping_address=(new_value : Stripe::PaymentPagesCheckoutSessionCustomTextShippingAddress?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @shipping_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] submit Object to be assigned
    def submit=(new_value : Stripe::PaymentPagesCheckoutSessionCustomTextSubmit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @submit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] terms_of_service_acceptance Object to be assigned
    def terms_of_service_acceptance=(new_value : Stripe::PaymentPagesCheckoutSessionCustomTextTermsOfServiceAcceptance?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @terms_of_service_acceptance = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@after_submit, @shipping_address, @submit, @terms_of_service_acceptance)
  end
end
