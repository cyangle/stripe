#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_transfer_param"
require "./installments_param"
require "./invoice_linked_account_options_param"
require "./invoice_payment_method_options_param"
require "./mandate_options_param"

module Stripe
  # This sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
  class PaymentMethodOptionsCustomerBalance1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "bank_transfer", type: Stripe::BankTransferParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property bank_transfer : Stripe::BankTransferParam? = nil

    @[JSON::Field(key: "financial_connections", type: Stripe::InvoiceLinkedAccountOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property financial_connections : Stripe::InvoiceLinkedAccountOptionsParam? = nil

    # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
    @[JSON::Field(key: "funding_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property funding_type : String? = nil

    @[JSON::Field(key: "installments", type: Stripe::InstallmentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property installments : Stripe::InstallmentsParam? = nil

    @[JSON::Field(key: "mandate_options", type: Stripe::MandateOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property mandate_options : Stripe::MandateOptionsParam? = nil

    # Preferred language of the Bancontact authorization page that the customer is redirected to.
    @[JSON::Field(key: "preferred_language", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property preferred_language : String? = nil
    ERROR_MESSAGE_FOR_PREFERRED_LANGUAGE = "invalid value for \"preferred_language\", must be one of [de, en, fr, nl]."
    VALID_VALUES_FOR_PREFERRED_LANGUAGE  = String.static_array("de", "en", "fr", "nl")

    # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
    @[JSON::Field(key: "request_three_d_secure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property request_three_d_secure : String? = nil
    ERROR_MESSAGE_FOR_REQUEST_THREE_D_SECURE = "invalid value for \"request_three_d_secure\", must be one of [any, automatic, challenge]."
    VALID_VALUES_FOR_REQUEST_THREE_D_SECURE  = String.static_array("any", "automatic", "challenge")

    # Verification method for the intent
    @[JSON::Field(key: "verification_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property verification_method : String? = nil
    ERROR_MESSAGE_FOR_VERIFICATION_METHOD = "invalid value for \"verification_method\", must be one of [automatic, instant, microdeposits]."
    VALID_VALUES_FOR_VERIFICATION_METHOD  = String.static_array("automatic", "instant", "microdeposits")

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::InvoicePaymentMethodOptionsParam,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_transfer : Stripe::BankTransferParam? = nil,
      @financial_connections : Stripe::InvoiceLinkedAccountOptionsParam? = nil,
      @funding_type : String? = nil,
      @installments : Stripe::InstallmentsParam? = nil,
      @mandate_options : Stripe::MandateOptionsParam? = nil,
      @preferred_language : String? = nil,
      @request_three_d_secure : String? = nil,
      @verification_method : String? = nil
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
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_transfer, @financial_connections, @funding_type, @installments, @mandate_options, @preferred_language, @request_three_d_secure, @verification_method)
  end
end
