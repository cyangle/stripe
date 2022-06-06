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
  class OrdersPaymentMethodOptionsAfterpayClearpay
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, presence: true, ignore_serialize: capture_method.nil? && !capture_method_present?)]
    getter capture_method : String?

    @[JSON::Field(ignore: true)]
    property? capture_method_present : Bool = false

    ENUM_VALIDATOR_FOR_CAPTURE_METHOD = EnumValidator.new("capture_method", "String", ["automatic", "manual"])

    # Order identifier shown to the user in Afterpay's online portal. We recommend using a value that helps you answer any questions a customer might have about the payment. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
    @[JSON::Field(key: "reference", type: String?, presence: true, ignore_serialize: reference.nil? && !reference_present?)]
    getter reference : String?

    @[JSON::Field(ignore: true)]
    property? reference_present : Bool = false

    # Indicates that you intend to make future payments with the payment method.  Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.  When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).  If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
    @[JSON::Field(key: "setup_future_usage", type: String?, presence: true, ignore_serialize: setup_future_usage.nil? && !setup_future_usage_present?)]
    getter setup_future_usage : String?

    @[JSON::Field(ignore: true)]
    property? setup_future_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["none"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @capture_method : String? = nil,
      @reference : String? = nil,
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CAPTURE_METHOD.error_message) unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)

      if !@reference.nil? && @reference.to_s.size > 5000
        invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)
      return false if !@reference.nil? && @reference.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method : String?)
      ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid!(capture_method)
      @capture_method = capture_method
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference : String?)
      if !reference.nil? && reference.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      @reference = reference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
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
    def_equals_and_hash(@capture_method, @capture_method_present, @reference, @reference_present, @setup_future_usage, @setup_future_usage_present)
  end
end
