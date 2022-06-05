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
  class PostPaymentIntentsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # Optional properties

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    @[JSON::Field(key: "application_fee_amount", type: Int64?, presence: true, ignore_serialize: application_fee_amount.nil? && !application_fee_amount_present?)]
    property application_fee_amount : Int64?

    @[JSON::Field(ignore: true)]
    property? application_fee_amount_present : Bool = false

    @[JSON::Field(key: "automatic_payment_methods", type: AutomaticPaymentMethodsParam?, presence: true, ignore_serialize: automatic_payment_methods.nil? && !automatic_payment_methods_present?)]
    property automatic_payment_methods : AutomaticPaymentMethodsParam?

    @[JSON::Field(ignore: true)]
    property? automatic_payment_methods_present : Bool = false

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, presence: true, ignore_serialize: capture_method.nil? && !capture_method_present?)]
    getter capture_method : String?

    @[JSON::Field(ignore: true)]
    property? capture_method_present : Bool = false

    ENUM_VALIDATOR_FOR_CAPTURE_METHOD = EnumValidator.new("capture_method", "String", ["automatic", "manual"])

    # Set to `true` to attempt to [confirm](https://stripe.com/docs/api/payment_intents/confirm) this PaymentIntent immediately. This parameter defaults to `false`. When creating and confirming a PaymentIntent at the same time, parameters available in the [confirm](https://stripe.com/docs/api/payment_intents/confirm) API may also be provided.
    @[JSON::Field(key: "confirm", type: Bool?, presence: true, ignore_serialize: confirm.nil? && !confirm_present?)]
    property confirm : Bool?

    @[JSON::Field(ignore: true)]
    property? confirm_present : Bool = false

    @[JSON::Field(key: "confirmation_method", type: String?, presence: true, ignore_serialize: confirmation_method.nil? && !confirmation_method_present?)]
    getter confirmation_method : String?

    @[JSON::Field(ignore: true)]
    property? confirmation_method_present : Bool = false

    ENUM_VALIDATOR_FOR_CONFIRMATION_METHOD = EnumValidator.new("confirmation_method", "String", ["automatic", "manual"])

    # ID of the Customer this PaymentIntent belongs to, if one exists.  Payment methods attached to other Customers cannot be used with this PaymentIntent.  If present in combination with [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage), this PaymentIntent's payment method will be attached to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete.
    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Set to `true` to fail the payment attempt if the PaymentIntent transitions into `requires_action`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https://stripe.com/docs/payments/save-card-without-authentication). This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
    @[JSON::Field(key: "error_on_requires_action", type: Bool?, presence: true, ignore_serialize: error_on_requires_action.nil? && !error_on_requires_action_present?)]
    property error_on_requires_action : Bool?

    @[JSON::Field(ignore: true)]
    property? error_on_requires_action_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # ID of the mandate to be used for this payment. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
    @[JSON::Field(key: "mandate", type: String?, presence: true, ignore_serialize: mandate.nil? && !mandate_present?)]
    getter mandate : String?

    @[JSON::Field(ignore: true)]
    property? mandate_present : Bool = false

    @[JSON::Field(key: "mandate_data", type: SecretKeyParam?, presence: true, ignore_serialize: mandate_data.nil? && !mandate_data_present?)]
    property mandate_data : SecretKeyParam?

    @[JSON::Field(ignore: true)]
    property? mandate_data_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "off_session", type: PostPaymentIntentsRequestOffSession?, presence: true, ignore_serialize: off_session.nil? && !off_session_present?)]
    property off_session : PostPaymentIntentsRequestOffSession?

    @[JSON::Field(ignore: true)]
    property? off_session_present : Bool = false

    # The Stripe account ID for which these funds are intended. For details, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    @[JSON::Field(key: "on_behalf_of", type: String?, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    property on_behalf_of : String?

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.  If this parameter is omitted with `confirm=true`, `customer.default_source` will be attached as this PaymentIntent's payment instrument to improve the migration experience for users of the Charges API. We recommend that you explicitly provide the `payment_method` going forward.
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

    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use. If this is not provided, defaults to [\"card\"]. Use automatic_payment_methods to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, presence: true, ignore_serialize: payment_method_types.nil? && !payment_method_types_present?)]
    property payment_method_types : Array(String)?

    @[JSON::Field(ignore: true)]
    property? payment_method_types_present : Bool = false

    @[JSON::Field(key: "radar_options", type: RadarOptions?, presence: true, ignore_serialize: radar_options.nil? && !radar_options_present?)]
    property radar_options : RadarOptions?

    @[JSON::Field(ignore: true)]
    property? radar_options_present : Bool = false

    # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    @[JSON::Field(key: "receipt_email", type: String?, presence: true, ignore_serialize: receipt_email.nil? && !receipt_email_present?)]
    property receipt_email : String?

    @[JSON::Field(ignore: true)]
    property? receipt_email_present : Bool = false

    # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
    @[JSON::Field(key: "return_url", type: String?, presence: true, ignore_serialize: return_url.nil? && !return_url_present?)]
    property return_url : String?

    @[JSON::Field(ignore: true)]
    property? return_url_present : Bool = false

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.  When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
    @[JSON::Field(key: "setup_future_usage", type: String?, presence: true, ignore_serialize: setup_future_usage.nil? && !setup_future_usage_present?)]
    getter setup_future_usage : String?

    @[JSON::Field(ignore: true)]
    property? setup_future_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["off_session", "on_session"])

    @[JSON::Field(key: "shipping", type: OptionalFieldsShipping1?, presence: true, ignore_serialize: shipping.nil? && !shipping_present?)]
    property shipping : OptionalFieldsShipping1?

    @[JSON::Field(ignore: true)]
    property? shipping_present : Bool = false

    # For non-card charges, you can use this value as the complete description that appears on your customers’ statements. Must contain at least one letter, maximum 22 characters.
    @[JSON::Field(key: "statement_descriptor", type: String?, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, presence: true, ignore_serialize: statement_descriptor_suffix.nil? && !statement_descriptor_suffix_present?)]
    getter statement_descriptor_suffix : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_suffix_present : Bool = false

    @[JSON::Field(key: "transfer_data", type: TransferDataCreationParams?, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    property transfer_data : TransferDataCreationParams?

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    # A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts) for details.
    @[JSON::Field(key: "transfer_group", type: String?, presence: true, ignore_serialize: transfer_group.nil? && !transfer_group_present?)]
    property transfer_group : String?

    @[JSON::Field(ignore: true)]
    property? transfer_group_present : Bool = false

    # Set to `true` only when using manual confirmation and the iOS or Android SDKs to handle additional authentication steps.
    @[JSON::Field(key: "use_stripe_sdk", type: Bool?, presence: true, ignore_serialize: use_stripe_sdk.nil? && !use_stripe_sdk_present?)]
    property use_stripe_sdk : Bool?

    @[JSON::Field(ignore: true)]
    property? use_stripe_sdk_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64,
      @currency : String,
      # Optional properties
      @application_fee_amount : Int64? = nil,
      @automatic_payment_methods : AutomaticPaymentMethodsParam? = nil,
      @capture_method : String? = nil,
      @confirm : Bool? = nil,
      @confirmation_method : String? = nil,
      @customer : String? = nil,
      @description : String? = nil,
      @error_on_requires_action : Bool? = nil,
      @expand : Array(String)? = nil,
      @mandate : String? = nil,
      @mandate_data : SecretKeyParam? = nil,
      @metadata : Hash(String, String)? = nil,
      @off_session : PostPaymentIntentsRequestOffSession? = nil,
      @on_behalf_of : String? = nil,
      @payment_method : String? = nil,
      @payment_method_data : PaymentMethodDataParams? = nil,
      @payment_method_options : PaymentMethodOptionsParam11? = nil,
      @payment_method_types : Array(String)? = nil,
      @radar_options : RadarOptions? = nil,
      @receipt_email : String? = nil,
      @return_url : String? = nil,
      @setup_future_usage : String? = nil,
      @shipping : OptionalFieldsShipping1? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : TransferDataCreationParams? = nil,
      @transfer_group : String? = nil,
      @use_stripe_sdk : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CAPTURE_METHOD.error_message) unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)

      invalid_properties.push(ENUM_VALIDATOR_FOR_CONFIRMATION_METHOD.error_message) unless ENUM_VALIDATOR_FOR_CONFIRMATION_METHOD.valid?(@confirmation_method)

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 1000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      if !@mandate.nil? && @mandate.to_s.size > 5000
        invalid_properties.push("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
      end

      if !@payment_method.nil? && @payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
        invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      if !@statement_descriptor_suffix.nil? && @statement_descriptor_suffix.to_s.size > 22
        invalid_properties.push("invalid value for \"statement_descriptor_suffix\", the character length must be smaller than or equal to 22.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)
      return false unless ENUM_VALIDATOR_FOR_CONFIRMATION_METHOD.valid?(@confirmation_method)
      return false if !@customer.nil? && @customer.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 1000
      return false if !@mandate.nil? && @mandate.to_s.size > 5000
      return false if !@payment_method.nil? && @payment_method.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
      return false if !@statement_descriptor_suffix.nil? && @statement_descriptor_suffix.to_s.size > 22

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method)
      ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid!(capture_method)
      @capture_method = capture_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] confirmation_method Object to be assigned
    def confirmation_method=(confirmation_method)
      ENUM_VALIDATOR_FOR_CONFIRMATION_METHOD.valid!(confirmation_method)
      @confirmation_method = confirmation_method
    end

    # Custom attribute writer method with validation
    # @param [Object] customer Value to be assigned
    def customer=(customer)
      if !customer.nil? && customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 1000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      @description = description
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

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if !statement_descriptor.nil? && statement_descriptor.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor = statement_descriptor
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor_suffix Value to be assigned
    def statement_descriptor_suffix=(statement_descriptor_suffix)
      if !statement_descriptor_suffix.nil? && statement_descriptor_suffix.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor_suffix\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor_suffix = statement_descriptor_suffix
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
    def_equals_and_hash(@amount, @currency, @application_fee_amount, @automatic_payment_methods, @capture_method, @confirm, @confirmation_method, @customer, @description, @error_on_requires_action, @expand, @mandate, @mandate_data, @metadata, @off_session, @on_behalf_of, @payment_method, @payment_method_data, @payment_method_options, @payment_method_types, @radar_options, @receipt_email, @return_url, @setup_future_usage, @shipping, @statement_descriptor, @statement_descriptor_suffix, @transfer_data, @transfer_group, @use_stripe_sdk)
  end
end
