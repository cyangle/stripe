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
  class SetupIntentPaymentMethodOptionsCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "mandate_options", type: Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: mandate_options.nil? && !mandate_options_present?)]
    getter mandate_options : Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions1? = nil

    @[JSON::Field(ignore: true)]
    property? mandate_options_present : Bool = false

    # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the setup intent. Can be only set confirm-time.
    @[JSON::Field(key: "network", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network.nil? && !network_present?)]
    getter network : String? = nil
    ERROR_MESSAGE_FOR_NETWORK = "invalid value for \"network\", must be one of [amex, cartes_bancaires, diners, discover, interac, jcb, mastercard, unionpay, unknown, visa]."
    VALID_VALUES_FOR_NETWORK  = String.static_array("amex", "cartes_bancaires", "diners", "discover", "interac", "jcb", "mastercard", "unionpay", "unknown", "visa")

    @[JSON::Field(ignore: true)]
    property? network_present : Bool = false

    # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Permitted values include: `automatic` or `any`. If not provided, defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
    @[JSON::Field(key: "request_three_d_secure", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: request_three_d_secure.nil? && !request_three_d_secure_present?)]
    getter request_three_d_secure : String? = nil
    ERROR_MESSAGE_FOR_REQUEST_THREE_D_SECURE = "invalid value for \"request_three_d_secure\", must be one of [any, automatic, challenge_only]."
    VALID_VALUES_FOR_REQUEST_THREE_D_SECURE  = String.static_array("any", "automatic", "challenge_only")

    @[JSON::Field(ignore: true)]
    property? request_three_d_secure_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @mandate_options : Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions1? = nil,
      @network : String? = nil,
      @request_three_d_secure : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_mandate_options = @mandate_options).nil?
        invalid_properties.concat(_mandate_options.list_invalid_properties_for("mandate_options")) if _mandate_options.is_a?(OpenApi::Validatable)
      end
      unless (_network = @network).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_NETWORK) unless OpenApi::EnumValidator.valid?(_network, VALID_VALUES_FOR_NETWORK)
      end
      unless (_request_three_d_secure = @request_three_d_secure).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_REQUEST_THREE_D_SECURE) unless OpenApi::EnumValidator.valid?(_request_three_d_secure, VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_mandate_options = @mandate_options).nil?
        return false if _mandate_options.is_a?(OpenApi::Validatable) && !_mandate_options.valid?
      end

      unless (_network = @network).nil?
        return false unless OpenApi::EnumValidator.valid?(_network, VALID_VALUES_FOR_NETWORK)
      end

      unless (_request_three_d_secure = @request_three_d_secure).nil?
        return false unless OpenApi::EnumValidator.valid?(_request_three_d_secure, VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate_options Object to be assigned
    def mandate_options=(new_value : Stripe::SetupIntentPaymentMethodOptionsCardMandateOptions1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @mandate_options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("network", new_value, VALID_VALUES_FOR_NETWORK)
      end

      @network = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_three_d_secure Object to be assigned
    def request_three_d_secure=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("request_three_d_secure", new_value, VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)
      end

      @request_three_d_secure = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@mandate_options, @mandate_options_present, @network, @network_present, @request_three_d_secure, @request_three_d_secure_present)
  end
end
