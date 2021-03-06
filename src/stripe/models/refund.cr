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
  # `Refund` objects allow you to refund a charge that has previously been created but not yet refunded. Funds will be refunded to the credit or debit card that was originally charged.  Related guide: [Refunds](https://stripe.com/docs/refunds).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Refund
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Amount, in %s.
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["refund"])

    # Optional properties

    @[JSON::Field(key: "balance_transaction", type: FeeRefundBalanceTransaction?, presence: true, ignore_serialize: balance_transaction.nil? && !balance_transaction_present?)]
    property balance_transaction : FeeRefundBalanceTransaction?

    @[JSON::Field(ignore: true)]
    property? balance_transaction_present : Bool = false

    @[JSON::Field(key: "charge", type: RefundCharge?, presence: true, ignore_serialize: charge.nil? && !charge_present?)]
    property charge : RefundCharge?

    @[JSON::Field(ignore: true)]
    property? charge_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users. (Available on non-card refunds only)
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "failure_balance_transaction", type: RefundFailureBalanceTransaction?, presence: true, ignore_serialize: failure_balance_transaction.nil? && !failure_balance_transaction_present?)]
    property failure_balance_transaction : RefundFailureBalanceTransaction?

    @[JSON::Field(ignore: true)]
    property? failure_balance_transaction_present : Bool = false

    # If the refund failed, the reason for refund failure if known. Possible values are `lost_or_stolen_card`, `expired_or_canceled_card`, or `unknown`.
    @[JSON::Field(key: "failure_reason", type: String?, presence: true, ignore_serialize: failure_reason.nil? && !failure_reason_present?)]
    getter failure_reason : String?

    @[JSON::Field(ignore: true)]
    property? failure_reason_present : Bool = false

    # Email to which refund instructions, if required, are sent to.
    @[JSON::Field(key: "instructions_email", type: String?, presence: true, ignore_serialize: instructions_email.nil? && !instructions_email_present?)]
    getter instructions_email : String?

    @[JSON::Field(ignore: true)]
    property? instructions_email_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "next_action", type: RefundNextAction?, presence: true, ignore_serialize: next_action.nil? && !next_action_present?)]
    property next_action : RefundNextAction?

    @[JSON::Field(ignore: true)]
    property? next_action_present : Bool = false

    @[JSON::Field(key: "payment_intent", type: RefundPaymentIntent?, presence: true, ignore_serialize: payment_intent.nil? && !payment_intent_present?)]
    property payment_intent : RefundPaymentIntent?

    @[JSON::Field(ignore: true)]
    property? payment_intent_present : Bool = false

    # Reason for the refund, either user-provided (`duplicate`, `fraudulent`, or `requested_by_customer`) or generated by Stripe internally (`expired_uncaptured_charge`).
    @[JSON::Field(key: "reason", type: String?, presence: true, ignore_serialize: reason.nil? && !reason_present?)]
    getter reason : String?

    @[JSON::Field(ignore: true)]
    property? reason_present : Bool = false

    ENUM_VALIDATOR_FOR_REASON = EnumValidator.new("reason", "String", ["duplicate", "expired_uncaptured_charge", "fraudulent", "requested_by_customer"])

    # This is the transaction number that appears on email receipts sent for this refund.
    @[JSON::Field(key: "receipt_number", type: String?, presence: true, ignore_serialize: receipt_number.nil? && !receipt_number_present?)]
    getter receipt_number : String?

    @[JSON::Field(ignore: true)]
    property? receipt_number_present : Bool = false

    @[JSON::Field(key: "source_transfer_reversal", type: RefundSourceTransferReversal?, presence: true, ignore_serialize: source_transfer_reversal.nil? && !source_transfer_reversal_present?)]
    property source_transfer_reversal : RefundSourceTransferReversal?

    @[JSON::Field(ignore: true)]
    property? source_transfer_reversal_present : Bool = false

    # Status of the refund. For credit card refunds, this can be `pending`, `succeeded`, or `failed`. For other types of refunds, it can be `pending`, `requires_action`, `succeeded`, `failed`, or `canceled`. Refer to our [refunds](https://stripe.com/docs/refunds#failed-refunds) documentation for more details.
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    @[JSON::Field(key: "transfer_reversal", type: RefundTransferReversal?, presence: true, ignore_serialize: transfer_reversal.nil? && !transfer_reversal_present?)]
    property transfer_reversal : RefundTransferReversal?

    @[JSON::Field(ignore: true)]
    property? transfer_reversal_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64,
      @created : Int64,
      @currency : String,
      @id : String,
      @object : String,
      # Optional properties
      @balance_transaction : FeeRefundBalanceTransaction? = nil,
      @charge : RefundCharge? = nil,
      @description : String? = nil,
      @failure_balance_transaction : RefundFailureBalanceTransaction? = nil,
      @failure_reason : String? = nil,
      @instructions_email : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @next_action : RefundNextAction? = nil,
      @payment_intent : RefundPaymentIntent? = nil,
      @reason : String? = nil,
      @receipt_number : String? = nil,
      @source_transfer_reversal : RefundSourceTransferReversal? = nil,
      @status : String? = nil,
      @transfer_reversal : RefundTransferReversal? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@failure_reason.nil? && @failure_reason.to_s.size > 5000
        invalid_properties.push("invalid value for \"failure_reason\", the character length must be smaller than or equal to 5000.")
      end

      if !@instructions_email.nil? && @instructions_email.to_s.size > 5000
        invalid_properties.push("invalid value for \"instructions_email\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_REASON.error_message) unless ENUM_VALIDATOR_FOR_REASON.valid?(@reason)

      if !@receipt_number.nil? && @receipt_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"receipt_number\", the character length must be smaller than or equal to 5000.")
      end

      if !@status.nil? && @status.to_s.size > 5000
        invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@failure_reason.nil? && @failure_reason.to_s.size > 5000
      return false if !@instructions_email.nil? && @instructions_email.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_REASON.valid?(@reason)
      return false if !@receipt_number.nil? && @receipt_number.to_s.size > 5000
      return false if !@status.nil? && @status.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id : String)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description : String?)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] failure_reason Value to be assigned
    def failure_reason=(failure_reason : String?)
      if !failure_reason.nil? && failure_reason.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"failure_reason\", the character length must be smaller than or equal to 5000.")
      end

      @failure_reason = failure_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] instructions_email Value to be assigned
    def instructions_email=(instructions_email : String?)
      if !instructions_email.nil? && instructions_email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"instructions_email\", the character length must be smaller than or equal to 5000.")
      end

      @instructions_email = instructions_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      ENUM_VALIDATOR_FOR_REASON.valid!(reason)
      @reason = reason
    end

    # Custom attribute writer method with validation
    # @param [Object] receipt_number Value to be assigned
    def receipt_number=(receipt_number : String?)
      if !receipt_number.nil? && receipt_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"receipt_number\", the character length must be smaller than or equal to 5000.")
      end

      @receipt_number = receipt_number
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status : String?)
      if !status.nil? && status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
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
    def_equals_and_hash(@amount, @created, @currency, @id, @object, @balance_transaction, @balance_transaction_present, @charge, @charge_present, @description, @description_present, @failure_balance_transaction, @failure_balance_transaction_present, @failure_reason, @failure_reason_present, @instructions_email, @instructions_email_present, @metadata, @metadata_present, @next_action, @next_action_present, @payment_intent, @payment_intent_present, @reason, @reason_present, @receipt_number, @receipt_number_present, @source_transfer_reversal, @source_transfer_reversal_present, @status, @status_present, @transfer_reversal, @transfer_reversal_present)
  end
end
