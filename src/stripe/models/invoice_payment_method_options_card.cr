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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class InvoicePaymentMethodOptionsCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
    @[JSON::Field(key: "request_three_d_secure", type: String?, presence: true, ignore_serialize: request_three_d_secure.nil? && !request_three_d_secure_present?)]
    getter request_three_d_secure : String?

    @[JSON::Field(ignore: true)]
    property? request_three_d_secure_present : Bool = false

    ENUM_VALIDATOR_FOR_REQUEST_THREE_D_SECURE = EnumValidator.new("request_three_d_secure", "String", ["any", "automatic"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @request_three_d_secure : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_REQUEST_THREE_D_SECURE.error_message) unless ENUM_VALIDATOR_FOR_REQUEST_THREE_D_SECURE.valid?(@request_three_d_secure)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_REQUEST_THREE_D_SECURE.valid?(@request_three_d_secure)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_three_d_secure Object to be assigned
    def request_three_d_secure=(request_three_d_secure : String?)
      ENUM_VALIDATOR_FOR_REQUEST_THREE_D_SECURE.valid!(request_three_d_secure)
      @request_three_d_secure = request_three_d_secure
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
    def_equals_and_hash(@request_three_d_secure, @request_three_d_secure_present)
  end
end
