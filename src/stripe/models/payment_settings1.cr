#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentSettings1
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "payment_method_options", type: PaymentMethodOptions1?, presence: true, ignore_serialize: payment_method_options.nil? && !payment_method_options_present?)]
    property payment_method_options : PaymentMethodOptions1?

    @[JSON::Field(ignore: true)]
    property? payment_method_options_present : Bool = false

    @[JSON::Field(key: "payment_method_types", type: PaymentSettingsPaymentMethodTypes?, presence: true, ignore_serialize: payment_method_types.nil? && !payment_method_types_present?)]
    property payment_method_types : PaymentSettingsPaymentMethodTypes?

    @[JSON::Field(ignore: true)]
    property? payment_method_types_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @payment_method_options : PaymentMethodOptions1? = nil,
      @payment_method_types : PaymentSettingsPaymentMethodTypes? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payment_method_options, @payment_method_options_present, @payment_method_types, @payment_method_types_present)
  end
end
