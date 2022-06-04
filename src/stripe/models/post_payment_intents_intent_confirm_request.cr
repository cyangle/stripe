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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostPaymentIntentsIntentConfirmRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # The client secret of the PaymentIntent.
    @[JSON::Field(key: "client_secret", type: String?, presence: true, ignore_serialize: client_secret.nil? && !client_secret_present?)]
    getter client_secret : String?

    @[JSON::Field(ignore: true)]
    property? client_secret_present : Bool = false

    # Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https://stripe.com/docs/payments/save-card-without-authentication).
    @[JSON::Field(key: "error_on_requires_action", type: Bool?, presence: true, ignore_serialize: error_on_requires_action.nil? && !error_on_requires_action_present?)]
    property error_on_requires_action : Bool?

    @[JSON::Field(ignore: true)]
    property? error_on_requires_action_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # ID of the mandate to be used for this payment.
    @[JSON::Field(key: "mandate", type: String?, presence: true, ignore_serialize: mandate.nil? && !mandate_present?)]
    getter mandate : String?

    @[JSON::Field(ignore: true)]
    property? mandate_present : Bool = false

    @[JSON::Field(key: "mandate_data", type: PostPaymentIntentsIntentConfirmRequestMandateData?, presence: true, ignore_serialize: mandate_data.nil? && !mandate_data_present?)]
    property mandate_data : PostPaymentIntentsIntentConfirmRequestMandateData?

    @[JSON::Field(ignore: true)]
    property? mandate_data_present : Bool = false

    @[JSON::Field(key: "off_session", type: PostPaymentIntentsIntentConfirmRequestOffSession?, presence: true, ignore_serialize: off_session.nil? && !off_session_present?)]
    property off_session : PostPaymentIntentsIntentConfirmRequestOffSession?

    @[JSON::Field(ignore: true)]
    property? off_session_present : Bool = false

    # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.
    @[JSON::Field(key: "payment_method", type: String?, presence: true, ignore_serialize: payment_method.nil? && !payment_method_present?)]
    getter payment_method : String?

    @[JSON::Field(ignore: true)]
    property? payment_method_present : Bool = false

    @[JSON::Field(key: "payment_method_data", type: PaymentMethodDataParams?, presence: true, ignore_serialize: payment_method_data.nil? && !payment_method_data_present?)]
    property payment_method_data : PaymentMethodDataParams?

    @[JSON::Field(ignore: true)]
    property? payment_method_data_present : Bool = false

    @[JSON::Field(key: "payment_method_options", type: PaymentMethodOptionsParam11?, presence: true, ignore_serialize: payment_method_options.nil? && !payment_method_options_present?)]
    property payment_method_options : PaymentMethodOptionsParam11?

    @[JSON::Field(ignore: true)]
    property? payment_method_options_present : Bool = false

    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use. Use automatic_payment_methods to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, presence: true, ignore_serialize: payment_method_types.nil? && !payment_method_types_present?)]
    property payment_method_types : Array(String)?

    @[JSON::Field(ignore: true)]
    property? payment_method_types_present : Bool = false

    @[JSON::Field(key: "radar_options", type: RadarOptions?, presence: true, ignore_serialize: radar_options.nil? && !radar_options_present?)]
    property radar_options : RadarOptions?

    @[JSON::Field(ignore: true)]
    property? radar_options_present : Bool = false

    @[JSON::Field(key: "receipt_email", type: PostPaymentIntentsIntentRequestReceiptEmail?, presence: true, ignore_serialize: receipt_email.nil? && !receipt_email_present?)]
    property receipt_email : PostPaymentIntentsIntentRequestReceiptEmail?

    @[JSON::Field(ignore: true)]
    property? receipt_email_present : Bool = false

    # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter is only used for cards and other redirect-based payment methods.
    @[JSON::Field(key: "return_url", type: String?, presence: true, ignore_serialize: return_url.nil? && !return_url_present?)]
    property return_url : String?

    @[JSON::Field(ignore: true)]
    property? return_url_present : Bool = false

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.  When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).  If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
    @[JSON::Field(key: "setup_future_usage", type: String?, presence: true, ignore_serialize: setup_future_usage.nil? && !setup_future_usage_present?)]
    getter setup_future_usage : String?

    @[JSON::Field(ignore: true)]
    property? setup_future_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["", "off_session", "on_session"])

    @[JSON::Field(key: "shipping", type: PostPaymentIntentsIntentRequestShipping?, presence: true, ignore_serialize: shipping.nil? && !shipping_present?)]
    property shipping : PostPaymentIntentsIntentRequestShipping?

    @[JSON::Field(ignore: true)]
    property? shipping_present : Bool = false

    # Set to `true` only when using manual confirmation and the iOS or Android SDKs to handle additional authentication steps.
    @[JSON::Field(key: "use_stripe_sdk", type: Bool?, presence: true, ignore_serialize: use_stripe_sdk.nil? && !use_stripe_sdk_present?)]
    property use_stripe_sdk : Bool?

    @[JSON::Field(ignore: true)]
    property? use_stripe_sdk_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @client_secret : String? = nil, 
      @error_on_requires_action : Bool? = nil, 
      @expand : Array(String)? = nil, 
      @mandate : String? = nil, 
      @mandate_data : PostPaymentIntentsIntentConfirmRequestMandateData? = nil, 
      @off_session : PostPaymentIntentsIntentConfirmRequestOffSession? = nil, 
      @payment_method : String? = nil, 
      @payment_method_data : PaymentMethodDataParams? = nil, 
      @payment_method_options : PaymentMethodOptionsParam11? = nil, 
      @payment_method_types : Array(String)? = nil, 
      @radar_options : RadarOptions? = nil, 
      @receipt_email : PostPaymentIntentsIntentRequestReceiptEmail? = nil, 
      @return_url : String? = nil, 
      @setup_future_usage : String? = nil, 
      @shipping : PostPaymentIntentsIntentRequestShipping? = nil, 
      @use_stripe_sdk : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@client_secret.nil? && @client_secret.to_s.size > 5000
        invalid_properties.push("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      if !@mandate.nil? && @mandate.to_s.size > 5000
        invalid_properties.push("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
      end

      if !@payment_method.nil? && @payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@client_secret.nil? && @client_secret.to_s.size > 5000
      return false if !@mandate.nil? && @mandate.to_s.size > 5000
      return false if !@payment_method.nil? && @payment_method.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] client_secret Value to be assigned
    def client_secret=(client_secret)
      if !client_secret.nil? && client_secret.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      @client_secret = client_secret
    end

    # Custom attribute writer method with validation
    # @param [Object] mandate Value to be assigned
    def mandate=(mandate)
      if !mandate.nil? && mandate.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
      end

      @mandate = mandate
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_method Value to be assigned
    def payment_method=(payment_method)
      if !payment_method.nil? && payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @payment_method = payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage)
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(setup_future_usage)
      @setup_future_usage = setup_future_usage
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
    def_equals_and_hash(@client_secret, @error_on_requires_action, @expand, @mandate, @mandate_data, @off_session, @payment_method, @payment_method_data, @payment_method_options, @payment_method_types, @radar_options, @receipt_email, @return_url, @setup_future_usage, @shipping, @use_stripe_sdk)
  end
end
