#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_flows_installment_options"
require "./payment_method_options_card_present_routing"

module Stripe
  #
  class PaymentIntentTypeSpecificPaymentMethodOptionsClient
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil
    ERROR_MESSAGE_FOR_CAPTURE_METHOD = "invalid value for \"capture_method\", must be one of [manual, manual_preferred]."
    VALID_VALUES_FOR_CAPTURE_METHOD  = String.static_array("manual", "manual_preferred")

    @[JSON::Field(key: "installments", type: Stripe::PaymentFlowsInstallmentOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter installments : Stripe::PaymentFlowsInstallmentOptions? = nil

    # Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
    @[JSON::Field(key: "request_incremental_authorization_support", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter request_incremental_authorization_support : Bool? = nil

    # When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
    @[JSON::Field(key: "require_cvc_recollection", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter require_cvc_recollection : Bool? = nil

    @[JSON::Field(key: "routing", type: Stripe::PaymentMethodOptionsCardPresentRouting?, default: nil, required: false, nullable: false, emit_null: false)]
    getter routing : Stripe::PaymentMethodOptionsCardPresentRouting? = nil

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.  If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.  When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [none, off_session, on_session]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("none", "off_session", "on_session")

    # Bank account verification method.
    @[JSON::Field(key: "verification_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification_method : String? = nil
    ERROR_MESSAGE_FOR_VERIFICATION_METHOD = "invalid value for \"verification_method\", must be one of [automatic, instant, microdeposits]."
    VALID_VALUES_FOR_VERIFICATION_METHOD  = String.static_array("automatic", "instant", "microdeposits")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @capture_method : String? = nil,
      @installments : Stripe::PaymentFlowsInstallmentOptions? = nil,
      @request_incremental_authorization_support : Bool? = nil,
      @require_cvc_recollection : Bool? = nil,
      @routing : Stripe::PaymentMethodOptionsCardPresentRouting? = nil,
      @setup_future_usage : String? = nil,
      @verification_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_capture_method = @capture_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CAPTURE_METHOD) unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end
      unless (_installments = @installments).nil?
        invalid_properties.concat(_installments.list_invalid_properties_for("installments")) if _installments.is_a?(OpenApi::Validatable)
      end

      unless (_routing = @routing).nil?
        invalid_properties.concat(_routing.list_invalid_properties_for("routing")) if _routing.is_a?(OpenApi::Validatable)
      end
      unless (_setup_future_usage = @setup_future_usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      unless (_verification_method = @verification_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_VERIFICATION_METHOD) unless OpenApi::EnumValidator.valid?(_verification_method, VALID_VALUES_FOR_VERIFICATION_METHOD)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_capture_method = @capture_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end

      unless (_installments = @installments).nil?
        return false if _installments.is_a?(OpenApi::Validatable) && !_installments.valid?
      end

      unless (_routing = @routing).nil?
        return false if _routing.is_a?(OpenApi::Validatable) && !_routing.valid?
      end

      unless (_setup_future_usage = @setup_future_usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      unless (_verification_method = @verification_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_verification_method, VALID_VALUES_FOR_VERIFICATION_METHOD)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("capture_method", new_value, VALID_VALUES_FOR_CAPTURE_METHOD)
      end

      @capture_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] installments Object to be assigned
    def installments=(new_value : Stripe::PaymentFlowsInstallmentOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @installments = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_incremental_authorization_support Object to be assigned
    def request_incremental_authorization_support=(new_value : Bool?)
      @request_incremental_authorization_support = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_cvc_recollection Object to be assigned
    def require_cvc_recollection=(new_value : Bool?)
      @require_cvc_recollection = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing Object to be assigned
    def routing=(new_value : Stripe::PaymentMethodOptionsCardPresentRouting?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @routing = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("setup_future_usage", new_value, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      @setup_future_usage = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_method Object to be assigned
    def verification_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("verification_method", new_value, VALID_VALUES_FOR_VERIFICATION_METHOD)
      end

      @verification_method = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@capture_method, @installments, @request_incremental_authorization_support, @require_cvc_recollection, @routing, @setup_future_usage, @verification_method)
  end
end
