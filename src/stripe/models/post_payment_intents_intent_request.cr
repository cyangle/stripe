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
  class PostPaymentIntentsIntentRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    @[JSON::Field(key: "amount", type: Int64?, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    property amount : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    @[JSON::Field(key: "application_fee_amount", type: PostPaymentIntentsIntentRequestApplicationFeeAmount?, presence: true, ignore_serialize: application_fee_amount.nil? && !application_fee_amount_present?)]
    property application_fee_amount : PostPaymentIntentsIntentRequestApplicationFeeAmount?

    @[JSON::Field(ignore: true)]
    property? application_fee_amount_present : Bool = false

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    property currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

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

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

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

    @[JSON::Field(key: "receipt_email", type: PostPaymentIntentsIntentRequestReceiptEmail?, presence: true, ignore_serialize: receipt_email.nil? && !receipt_email_present?)]
    property receipt_email : PostPaymentIntentsIntentRequestReceiptEmail?

    @[JSON::Field(ignore: true)]
    property? receipt_email_present : Bool = false

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

    @[JSON::Field(key: "transfer_data", type: TransferDataUpdateParams?, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    property transfer_data : TransferDataUpdateParams?

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    # A string that identifies the resulting payment as part of a group. `transfer_group` may only be provided if it has not been set. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts) for details.
    @[JSON::Field(key: "transfer_group", type: String?, presence: true, ignore_serialize: transfer_group.nil? && !transfer_group_present?)]
    property transfer_group : String?

    @[JSON::Field(ignore: true)]
    property? transfer_group_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @application_fee_amount : PostPaymentIntentsIntentRequestApplicationFeeAmount? = nil,
      @currency : String? = nil,
      @customer : String? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @payment_method : String? = nil,
      @payment_method_data : PaymentMethodDataParams? = nil,
      @payment_method_options : PaymentMethodOptionsParam11? = nil,
      @payment_method_types : Array(String)? = nil,
      @receipt_email : PostPaymentIntentsIntentRequestReceiptEmail? = nil,
      @setup_future_usage : String? = nil,
      @shipping : PostPaymentIntentsIntentRequestShipping? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : TransferDataUpdateParams? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 1000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
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
      return false if !@customer.nil? && @customer.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 1000
      return false if !@payment_method.nil? && @payment_method.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
      return false if !@statement_descriptor_suffix.nil? && @statement_descriptor_suffix.to_s.size > 22

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer Value to be assigned
    def customer=(customer : String?)
      if !customer.nil? && customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description : String?)
      if !description.nil? && description.to_s.size > 1000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_method Value to be assigned
    def payment_method=(payment_method : String?)
      if !payment_method.nil? && payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @payment_method = payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(setup_future_usage)
      @setup_future_usage = setup_future_usage
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if !statement_descriptor.nil? && statement_descriptor.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor = statement_descriptor
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor_suffix Value to be assigned
    def statement_descriptor_suffix=(statement_descriptor_suffix : String?)
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
    def_equals_and_hash(@amount, @amount_present, @application_fee_amount, @application_fee_amount_present, @currency, @currency_present, @customer, @customer_present, @description, @description_present, @expand, @expand_present, @metadata, @metadata_present, @payment_method, @payment_method_present, @payment_method_data, @payment_method_data_present, @payment_method_options, @payment_method_options_present, @payment_method_types, @payment_method_types_present, @receipt_email, @receipt_email_present, @setup_future_usage, @setup_future_usage_present, @shipping, @shipping_present, @statement_descriptor, @statement_descriptor_present, @statement_descriptor_suffix, @statement_descriptor_suffix_present, @transfer_data, @transfer_data_present, @transfer_group, @transfer_group_present)
  end
end
