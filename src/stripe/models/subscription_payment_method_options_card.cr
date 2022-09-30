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
  class SubscriptionPaymentMethodOptionsCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "mandate_options", type: Stripe::InvoiceMandateOptionsCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate_options : Stripe::InvoiceMandateOptionsCard? = nil

    # Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
    @[JSON::Field(key: "network", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network.nil? && !network_present?)]
    getter network : String? = nil

    @[JSON::Field(ignore: true)]
    property? network_present : Bool = false
    VALID_VALUES_FOR_NETWORK = StaticArray["amex", "cartes_bancaires", "diners", "discover", "interac", "jcb", "mastercard", "unionpay", "unknown", "visa"]

    # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
    @[JSON::Field(key: "request_three_d_secure", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: request_three_d_secure.nil? && !request_three_d_secure_present?)]
    getter request_three_d_secure : String? = nil

    @[JSON::Field(ignore: true)]
    property? request_three_d_secure_present : Bool = false
    VALID_VALUES_FOR_REQUEST_THREE_D_SECURE = StaticArray["any", "automatic"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @mandate_options : Stripe::InvoiceMandateOptionsCard? = nil,
      @network : String? = nil,
      @request_three_d_secure : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _mandate_options = @mandate_options
        invalid_properties.concat(_mandate_options.list_invalid_properties_for("mandate_options")) if _mandate_options.is_a?(OpenApi::Validatable)
      end
      if _network = @network
        invalid_properties.push(OpenApi::EnumValidator.error_message("network", VALID_VALUES_FOR_NETWORK)) unless OpenApi::EnumValidator.valid?(_network, VALID_VALUES_FOR_NETWORK)
      end
      if _request_three_d_secure = @request_three_d_secure
        invalid_properties.push(OpenApi::EnumValidator.error_message("request_three_d_secure", VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)) unless OpenApi::EnumValidator.valid?(_request_three_d_secure, VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _mandate_options = @mandate_options
        return false if _mandate_options.is_a?(OpenApi::Validatable) && !_mandate_options.valid?
      end

      if _network = @network
        return false unless OpenApi::EnumValidator.valid?(_network, VALID_VALUES_FOR_NETWORK)
      end

      if _request_three_d_secure = @request_three_d_secure
        return false unless OpenApi::EnumValidator.valid?(_request_three_d_secure, VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate_options Object to be assigned
    def mandate_options=(mandate_options : Stripe::InvoiceMandateOptionsCard?)
      if mandate_options.nil?
        return @mandate_options = nil
      end
      _mandate_options = mandate_options.not_nil!
      _mandate_options.validate if _mandate_options.is_a?(OpenApi::Validatable)
      @mandate_options = _mandate_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(network : String?)
      if network.nil?
        return @network = nil
      end
      _network = network.not_nil!
      OpenApi::EnumValidator.validate("network", _network, VALID_VALUES_FOR_NETWORK)
      @network = _network
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_three_d_secure Object to be assigned
    def request_three_d_secure=(request_three_d_secure : String?)
      if request_three_d_secure.nil?
        return @request_three_d_secure = nil
      end
      _request_three_d_secure = request_three_d_secure.not_nil!
      OpenApi::EnumValidator.validate("request_three_d_secure", _request_three_d_secure, VALID_VALUES_FOR_REQUEST_THREE_D_SECURE)
      @request_three_d_secure = _request_three_d_secure
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@mandate_options, @network, @network_present, @request_three_d_secure, @request_three_d_secure_present)
  end
end
