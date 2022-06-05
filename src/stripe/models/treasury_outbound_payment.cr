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
  # Use OutboundPayments to send funds to another party's external bank account or [FinancialAccount](https://stripe.com/docs/api#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https://stripe.com/docs/api#outbound_transfers).  Simulate OutboundPayment state changes with the `/v1/test_helpers/treasury/outbound_payments` endpoints. These methods can only be called on test mode objects.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class TreasuryOutboundPayment
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Amount (in cents) transferred.
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Returns `true` if the object can be canceled, and `false` otherwise.
    @[JSON::Field(key: "cancelable", type: Bool)]
    property cancelable : Bool

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # The date when funds are expected to arrive in the destination account.
    @[JSON::Field(key: "expected_arrival_date", type: Int64)]
    property expected_arrival_date : Int64

    # The FinancialAccount that funds were pulled from.
    @[JSON::Field(key: "financial_account", type: String)]
    getter financial_account : String

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["treasury.outbound_payment"])

    # The description that appears on the receiving end for an OutboundPayment (for example, bank statement for external bank transfer).
    @[JSON::Field(key: "statement_descriptor", type: String)]
    getter statement_descriptor : String

    # Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`. An OutboundPayment is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundPayment has been \"confirmed\" and funds have left the account, or to `failed` or `canceled`. If an OutboundPayment fails to arrive at its destination, its status will change to `returned`.
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["canceled", "failed", "posted", "processing", "returned"])

    @[JSON::Field(key: "status_transitions", type: OutboundPaymentsResourceOutboundPaymentResourceStatusTransitions)]
    property status_transitions : OutboundPaymentsResourceOutboundPaymentResourceStatusTransitions

    @[JSON::Field(key: "transaction", type: OutboundPaymentsResourceTreasuryReturnedStatusTransaction)]
    property transaction : OutboundPaymentsResourceTreasuryReturnedStatusTransaction

    # Optional properties

    # ID of the customer to whom an OutboundPayment is sent.
    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The PaymentMethod via which an OutboundPayment is sent. This field can be empty if the OutboundPayment was created using `destination_payment_method_data`.
    @[JSON::Field(key: "destination_payment_method", type: String?, presence: true, ignore_serialize: destination_payment_method.nil? && !destination_payment_method_present?)]
    getter destination_payment_method : String?

    @[JSON::Field(ignore: true)]
    property? destination_payment_method_present : Bool = false

    @[JSON::Field(key: "destination_payment_method_details", type: TreasuryOutboundPaymentDestinationPaymentMethodDetails?, presence: true, ignore_serialize: destination_payment_method_details.nil? && !destination_payment_method_details_present?)]
    property destination_payment_method_details : TreasuryOutboundPaymentDestinationPaymentMethodDetails?

    @[JSON::Field(ignore: true)]
    property? destination_payment_method_details_present : Bool = false

    @[JSON::Field(key: "end_user_details", type: TreasuryOutboundPaymentEndUserDetails?, presence: true, ignore_serialize: end_user_details.nil? && !end_user_details_present?)]
    property end_user_details : TreasuryOutboundPaymentEndUserDetails?

    @[JSON::Field(ignore: true)]
    property? end_user_details_present : Bool = false

    # A hosted transaction receipt URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
    @[JSON::Field(key: "hosted_regulatory_receipt_url", type: String?, presence: true, ignore_serialize: hosted_regulatory_receipt_url.nil? && !hosted_regulatory_receipt_url_present?)]
    getter hosted_regulatory_receipt_url : String?

    @[JSON::Field(ignore: true)]
    property? hosted_regulatory_receipt_url_present : Bool = false

    @[JSON::Field(key: "returned_details", type: TreasuryOutboundPaymentReturnedDetails?, presence: true, ignore_serialize: returned_details.nil? && !returned_details_present?)]
    property returned_details : TreasuryOutboundPaymentReturnedDetails?

    @[JSON::Field(ignore: true)]
    property? returned_details_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64,
      @cancelable : Bool,
      @created : Int64,
      @currency : String,
      @expected_arrival_date : Int64,
      @financial_account : String,
      @id : String,
      @livemode : Bool,
      @metadata : Hash(String, String),
      @object : String,
      @statement_descriptor : String,
      @status : String,
      @status_transitions : OutboundPaymentsResourceOutboundPaymentResourceStatusTransitions,
      @transaction : OutboundPaymentsResourceTreasuryReturnedStatusTransaction,
      # Optional properties
      @customer : String? = nil,
      @description : String? = nil,
      @destination_payment_method : String? = nil,
      @destination_payment_method_details : TreasuryOutboundPaymentDestinationPaymentMethodDetails? = nil,
      @end_user_details : TreasuryOutboundPaymentEndUserDetails? = nil,
      @hosted_regulatory_receipt_url : String? = nil,
      @returned_details : TreasuryOutboundPaymentReturnedDetails? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @financial_account.to_s.size > 5000
        invalid_properties.push("invalid value for \"financial_account\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if @statement_descriptor.to_s.size > 5000
        invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@destination_payment_method.nil? && @destination_payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"destination_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@hosted_regulatory_receipt_url.nil? && @hosted_regulatory_receipt_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"hosted_regulatory_receipt_url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @financial_account.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @statement_descriptor.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false if !@customer.nil? && @customer.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@destination_payment_method.nil? && @destination_payment_method.to_s.size > 5000
      return false if !@hosted_regulatory_receipt_url.nil? && @hosted_regulatory_receipt_url.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] financial_account Value to be assigned
    def financial_account=(financial_account)
      if financial_account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"financial_account\", the character length must be smaller than or equal to 5000.")
      end

      @financial_account = financial_account
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if statement_descriptor.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 5000.")
      end

      @statement_descriptor = statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status, false)
      @status = status
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
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] destination_payment_method Value to be assigned
    def destination_payment_method=(destination_payment_method)
      if !destination_payment_method.nil? && destination_payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"destination_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @destination_payment_method = destination_payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] hosted_regulatory_receipt_url Value to be assigned
    def hosted_regulatory_receipt_url=(hosted_regulatory_receipt_url)
      if !hosted_regulatory_receipt_url.nil? && hosted_regulatory_receipt_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"hosted_regulatory_receipt_url\", the character length must be smaller than or equal to 5000.")
      end

      @hosted_regulatory_receipt_url = hosted_regulatory_receipt_url
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
    def_equals_and_hash(@amount, @cancelable, @created, @currency, @expected_arrival_date, @financial_account, @id, @livemode, @metadata, @object, @statement_descriptor, @status, @status_transitions, @transaction, @customer, @description, @destination_payment_method, @destination_payment_method_details, @end_user_details, @hosted_regulatory_receipt_url, @returned_details)
  end
end
