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
  class PaymentPagesCheckoutSessionCustomText
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "shipping_address", type: Stripe::PaymentPagesCheckoutSessionCustomTextShippingAddress?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: shipping_address.nil? && !shipping_address_present?)]
    getter shipping_address : Stripe::PaymentPagesCheckoutSessionCustomTextShippingAddress? = nil

    @[JSON::Field(ignore: true)]
    property? shipping_address_present : Bool = false

    @[JSON::Field(key: "submit", type: Stripe::PaymentPagesCheckoutSessionCustomTextSubmit?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: submit.nil? && !submit_present?)]
    getter submit : Stripe::PaymentPagesCheckoutSessionCustomTextSubmit? = nil

    @[JSON::Field(ignore: true)]
    property? submit_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @shipping_address : Stripe::PaymentPagesCheckoutSessionCustomTextShippingAddress? = nil,
      @submit : Stripe::PaymentPagesCheckoutSessionCustomTextSubmit? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_shipping_address = @shipping_address).nil?
        invalid_properties.concat(_shipping_address.list_invalid_properties_for("shipping_address")) if _shipping_address.is_a?(OpenApi::Validatable)
      end
      unless (_submit = @submit).nil?
        invalid_properties.concat(_submit.list_invalid_properties_for("submit")) if _submit.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_shipping_address = @shipping_address).nil?
        return false if _shipping_address.is_a?(OpenApi::Validatable) && !_shipping_address.valid?
      end

      unless (_submit = @submit).nil?
        return false if _submit.is_a?(OpenApi::Validatable) && !_submit.valid?
      end

      true
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@shipping_address, @shipping_address_present, @submit, @submit_present)
  end
end
