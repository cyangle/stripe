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
  #
  class PaymentMethodOptionsCardPresent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
    @[JSON::Field(key: "request_extended_authorization", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: request_extended_authorization.nil? && !request_extended_authorization_present?)]
    getter request_extended_authorization : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? request_extended_authorization_present : Bool = false

    # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
    @[JSON::Field(key: "request_incremental_authorization_support", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: request_incremental_authorization_support.nil? && !request_incremental_authorization_support_present?)]
    getter request_incremental_authorization_support : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? request_incremental_authorization_support_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @request_extended_authorization : Bool? = nil,
      @request_incremental_authorization_support : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_extended_authorization Object to be assigned
    def request_extended_authorization=(request_extended_authorization : Bool?)
      if request_extended_authorization.nil?
        return @request_extended_authorization = nil
      end
      _request_extended_authorization = request_extended_authorization.not_nil!
      @request_extended_authorization = _request_extended_authorization
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_incremental_authorization_support Object to be assigned
    def request_incremental_authorization_support=(request_incremental_authorization_support : Bool?)
      if request_incremental_authorization_support.nil?
        return @request_incremental_authorization_support = nil
      end
      _request_incremental_authorization_support = request_incremental_authorization_support.not_nil!
      @request_incremental_authorization_support = _request_incremental_authorization_support
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@request_extended_authorization, @request_extended_authorization_present, @request_incremental_authorization_support, @request_incremental_authorization_support_present)
  end
end
