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
  class PostPaymentIntentsIntentConfirmRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil

    ENUM_VALIDATOR_FOR_CAPTURE_METHOD = EnumValidator.new("capture_method", "String", ["automatic", "manual"])

    # The client secret of the PaymentIntent.
    @[JSON::Field(key: "client_secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_secret : String? = nil

    # Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https://stripe.com/docs/payments/save-card-without-authentication).
    @[JSON::Field(key: "error_on_requires_action", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter error_on_requires_action : Bool? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # ID of the mandate to be used for this payment.
    @[JSON::Field(key: "mandate", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate : String? = nil

    @[JSON::Field(key: "mandate_data", type: Stripe::PostPaymentIntentsIntentConfirmRequestMandateData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate_data : Stripe::PostPaymentIntentsIntentConfirmRequestMandateData? = nil

    @[JSON::Field(key: "off_session", type: Stripe::PostPaymentIntentsIntentConfirmRequestOffSession?, default: nil, required: false, nullable: false, emit_null: false)]
    getter off_session : Stripe::PostPaymentIntentsIntentConfirmRequestOffSession? = nil

    # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.
    @[JSON::Field(key: "payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method : String? = nil

    @[JSON::Field(key: "payment_method_data", type: Stripe::PaymentMethodDataParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_data : Stripe::PaymentMethodDataParams? = nil

    @[JSON::Field(key: "payment_method_options", type: Stripe::PaymentMethodOptionsParam15?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_options : Stripe::PaymentMethodOptionsParam15? = nil

    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use. Use automatic_payment_methods to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_types : Array(String)? = nil

    @[JSON::Field(key: "radar_options", type: Stripe::RadarOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter radar_options : Stripe::RadarOptions? = nil

    @[JSON::Field(key: "receipt_email", type: Stripe::PostPaymentIntentsIntentRequestReceiptEmail?, default: nil, required: false, nullable: false, emit_null: false)]
    getter receipt_email : Stripe::PostPaymentIntentsIntentRequestReceiptEmail? = nil

    # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter is only used for cards and other redirect-based payment methods.
    @[JSON::Field(key: "return_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter return_url : String? = nil

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.  When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).  If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["", "off_session", "on_session"])

    @[JSON::Field(key: "shipping", type: Stripe::PostPaymentIntentsIntentRequestShipping?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::PostPaymentIntentsIntentRequestShipping? = nil

    # Set to `true` only when using manual confirmation and the iOS or Android SDKs to handle additional authentication steps.
    @[JSON::Field(key: "use_stripe_sdk", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter use_stripe_sdk : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @capture_method : String? = nil,
      @client_secret : String? = nil,
      @error_on_requires_action : Bool? = nil,
      @expand : Array(String)? = nil,
      @mandate : String? = nil,
      @mandate_data : Stripe::PostPaymentIntentsIntentConfirmRequestMandateData? = nil,
      @off_session : Stripe::PostPaymentIntentsIntentConfirmRequestOffSession? = nil,
      @payment_method : String? = nil,
      @payment_method_data : Stripe::PaymentMethodDataParams? = nil,
      @payment_method_options : Stripe::PaymentMethodOptionsParam15? = nil,
      @payment_method_types : Array(String)? = nil,
      @radar_options : Stripe::RadarOptions? = nil,
      @receipt_email : Stripe::PostPaymentIntentsIntentRequestReceiptEmail? = nil,
      @return_url : String? = nil,
      @setup_future_usage : String? = nil,
      @shipping : Stripe::PostPaymentIntentsIntentRequestShipping? = nil,
      @use_stripe_sdk : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CAPTURE_METHOD.error_message) unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)
      if _client_secret = @client_secret
        if _client_secret.to_s.size > 5000
          invalid_properties.push("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
        end
      end

      if _mandate = @mandate
        if _mandate.to_s.size > 5000
          invalid_properties.push("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _mandate_data = @mandate_data
        if _mandate_data.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_mandate_data.list_invalid_properties_for("mandate_data"))
        end
      end
      if _off_session = @off_session
        if _off_session.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_off_session.list_invalid_properties_for("off_session"))
        end
      end
      if _payment_method = @payment_method
        if _payment_method.to_s.size > 5000
          invalid_properties.push("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _payment_method_data = @payment_method_data
        if _payment_method_data.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_payment_method_data.list_invalid_properties_for("payment_method_data"))
        end
      end
      if _payment_method_options = @payment_method_options
        if _payment_method_options.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options"))
        end
      end

      if _radar_options = @radar_options
        if _radar_options.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_radar_options.list_invalid_properties_for("radar_options"))
        end
      end
      if _receipt_email = @receipt_email
        if _receipt_email.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_receipt_email.list_invalid_properties_for("receipt_email"))
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)
      if _shipping = @shipping
        if _shipping.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_shipping.list_invalid_properties_for("shipping"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)
      if _client_secret = @client_secret
        return false if _client_secret.to_s.size > 5000
      end

      if _mandate = @mandate
        return false if _mandate.to_s.size > 5000
      end
      if _mandate_data = @mandate_data
        if _mandate_data.is_a?(OpenApi::Validatable)
          return false unless _mandate_data.valid?
        end
      end
      if _off_session = @off_session
        if _off_session.is_a?(OpenApi::Validatable)
          return false unless _off_session.valid?
        end
      end
      if _payment_method = @payment_method
        return false if _payment_method.to_s.size > 5000
      end
      if _payment_method_data = @payment_method_data
        if _payment_method_data.is_a?(OpenApi::Validatable)
          return false unless _payment_method_data.valid?
        end
      end
      if _payment_method_options = @payment_method_options
        if _payment_method_options.is_a?(OpenApi::Validatable)
          return false unless _payment_method_options.valid?
        end
      end

      if _radar_options = @radar_options
        if _radar_options.is_a?(OpenApi::Validatable)
          return false unless _radar_options.valid?
        end
      end
      if _receipt_email = @receipt_email
        if _receipt_email.is_a?(OpenApi::Validatable)
          return false unless _receipt_email.valid?
        end
      end

      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)
      if _shipping = @shipping
        if _shipping.is_a?(OpenApi::Validatable)
          return false unless _shipping.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method : String?)
      if capture_method.nil?
        return @capture_method = nil
      end
      _capture_method = capture_method.not_nil!
      ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid!(_capture_method)
      @capture_method = _capture_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_secret Object to be assigned
    def client_secret=(client_secret : String?)
      if client_secret.nil?
        return @client_secret = nil
      end
      _client_secret = client_secret.not_nil!
      if _client_secret.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      @client_secret = _client_secret
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_on_requires_action Object to be assigned
    def error_on_requires_action=(error_on_requires_action : Bool?)
      if error_on_requires_action.nil?
        return @error_on_requires_action = nil
      end
      _error_on_requires_action = error_on_requires_action.not_nil!
      @error_on_requires_action = _error_on_requires_action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate Object to be assigned
    def mandate=(mandate : String?)
      if mandate.nil?
        return @mandate = nil
      end
      _mandate = mandate.not_nil!
      if _mandate.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
      end

      @mandate = _mandate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate_data Object to be assigned
    def mandate_data=(mandate_data : Stripe::PostPaymentIntentsIntentConfirmRequestMandateData?)
      if mandate_data.nil?
        return @mandate_data = nil
      end
      _mandate_data = mandate_data.not_nil!
      if _mandate_data.is_a?(OpenApi::Validatable)
        _mandate_data.validate
      end
      @mandate_data = _mandate_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] off_session Object to be assigned
    def off_session=(off_session : Stripe::PostPaymentIntentsIntentConfirmRequestOffSession?)
      if off_session.nil?
        return @off_session = nil
      end
      _off_session = off_session.not_nil!
      if _off_session.is_a?(OpenApi::Validatable)
        _off_session.validate
      end
      @off_session = _off_session
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method : String?)
      if payment_method.nil?
        return @payment_method = nil
      end
      _payment_method = payment_method.not_nil!
      if _payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @payment_method = _payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_data Object to be assigned
    def payment_method_data=(payment_method_data : Stripe::PaymentMethodDataParams?)
      if payment_method_data.nil?
        return @payment_method_data = nil
      end
      _payment_method_data = payment_method_data.not_nil!
      if _payment_method_data.is_a?(OpenApi::Validatable)
        _payment_method_data.validate
      end
      @payment_method_data = _payment_method_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(payment_method_options : Stripe::PaymentMethodOptionsParam15?)
      if payment_method_options.nil?
        return @payment_method_options = nil
      end
      _payment_method_options = payment_method_options.not_nil!
      if _payment_method_options.is_a?(OpenApi::Validatable)
        _payment_method_options.validate
      end
      @payment_method_options = _payment_method_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(payment_method_types : Array(String)?)
      if payment_method_types.nil?
        return @payment_method_types = nil
      end
      _payment_method_types = payment_method_types.not_nil!
      @payment_method_types = _payment_method_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] radar_options Object to be assigned
    def radar_options=(radar_options : Stripe::RadarOptions?)
      if radar_options.nil?
        return @radar_options = nil
      end
      _radar_options = radar_options.not_nil!
      if _radar_options.is_a?(OpenApi::Validatable)
        _radar_options.validate
      end
      @radar_options = _radar_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt_email Object to be assigned
    def receipt_email=(receipt_email : Stripe::PostPaymentIntentsIntentRequestReceiptEmail?)
      if receipt_email.nil?
        return @receipt_email = nil
      end
      _receipt_email = receipt_email.not_nil!
      if _receipt_email.is_a?(OpenApi::Validatable)
        _receipt_email.validate
      end
      @receipt_email = _receipt_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : String?)
      if return_url.nil?
        return @return_url = nil
      end
      _return_url = return_url.not_nil!
      @return_url = _return_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      if setup_future_usage.nil?
        return @setup_future_usage = nil
      end
      _setup_future_usage = setup_future_usage.not_nil!
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(_setup_future_usage)
      @setup_future_usage = _setup_future_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::PostPaymentIntentsIntentRequestShipping?)
      if shipping.nil?
        return @shipping = nil
      end
      _shipping = shipping.not_nil!
      if _shipping.is_a?(OpenApi::Validatable)
        _shipping.validate
      end
      @shipping = _shipping
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] use_stripe_sdk Object to be assigned
    def use_stripe_sdk=(use_stripe_sdk : Bool?)
      if use_stripe_sdk.nil?
        return @use_stripe_sdk = nil
      end
      _use_stripe_sdk = use_stripe_sdk.not_nil!
      @use_stripe_sdk = _use_stripe_sdk
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@capture_method, @client_secret, @error_on_requires_action, @expand, @mandate, @mandate_data, @off_session, @payment_method, @payment_method_data, @payment_method_options, @payment_method_types, @radar_options, @receipt_email, @return_url, @setup_future_usage, @shipping, @use_stripe_sdk)
  end
end
