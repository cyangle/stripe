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
  class BitcoinReceiver
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # True when this bitcoin receiver has received a non-zero amount of bitcoin.
    @[JSON::Field(key: "active", type: Bool)]
    property active : Bool

    # The amount of `currency` that you are collecting as payment.
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # The amount of `currency` to which `bitcoin_amount_received` has been converted.
    @[JSON::Field(key: "amount_received", type: Int64)]
    property amount_received : Int64

    # The amount of bitcoin that the customer should send to fill the receiver. The `bitcoin_amount` is denominated in Satoshi: there are 10^8 Satoshi in one bitcoin.
    @[JSON::Field(key: "bitcoin_amount", type: Int64)]
    property bitcoin_amount : Int64

    # The amount of bitcoin that has been sent by the customer to this receiver.
    @[JSON::Field(key: "bitcoin_amount_received", type: Int64)]
    property bitcoin_amount_received : Int64

    # This URI can be displayed to the customer as a clickable link (to activate their bitcoin client) or as a QR code (for mobile wallets).
    @[JSON::Field(key: "bitcoin_uri", type: String)]
    getter bitcoin_uri : String

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) to which the bitcoin will be converted.
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # This flag is initially false and updates to true when the customer sends the `bitcoin_amount` to this receiver.
    @[JSON::Field(key: "filled", type: Bool)]
    property filled : Bool

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # A bitcoin address that is specific to this receiver. The customer can send bitcoin to this address to fill the receiver.
    @[JSON::Field(key: "inbound_address", type: String)]
    getter inbound_address : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["bitcoin_receiver"])

    # This receiver contains uncaptured funds that can be used for a payment or refunded.
    @[JSON::Field(key: "uncaptured_funds", type: Bool)]
    property uncaptured_funds : Bool

    # Optional properties

    # The customer ID of the bitcoin receiver.
    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The customer's email address, set by the API call that creates the receiver.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The ID of the payment created from the receiver, if any. Hidden when viewing the receiver with a publishable key.
    @[JSON::Field(key: "payment", type: String?, presence: true, ignore_serialize: payment.nil? && !payment_present?)]
    getter payment : String?

    @[JSON::Field(ignore: true)]
    property? payment_present : Bool = false

    # The refund address of this bitcoin receiver.
    @[JSON::Field(key: "refund_address", type: String?, presence: true, ignore_serialize: refund_address.nil? && !refund_address_present?)]
    getter refund_address : String?

    @[JSON::Field(ignore: true)]
    property? refund_address_present : Bool = false

    @[JSON::Field(key: "transactions", type: BitcoinTransactionList1?, presence: true, ignore_serialize: transactions.nil? && !transactions_present?)]
    property transactions : BitcoinTransactionList1?

    @[JSON::Field(ignore: true)]
    property? transactions_present : Bool = false

    # Indicate if this source is used for payment.
    @[JSON::Field(key: "used_for_payment", type: Bool?, presence: true, ignore_serialize: used_for_payment.nil? && !used_for_payment_present?)]
    property used_for_payment : Bool?

    @[JSON::Field(ignore: true)]
    property? used_for_payment_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool,
      @amount : Int64,
      @amount_received : Int64,
      @bitcoin_amount : Int64,
      @bitcoin_amount_received : Int64,
      @bitcoin_uri : String,
      @created : Int64,
      @currency : String,
      @filled : Bool,
      @id : String,
      @inbound_address : String,
      @livemode : Bool,
      @object : String,
      @uncaptured_funds : Bool,
      # Optional properties
      @customer : String? = nil,
      @description : String? = nil,
      @email : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @payment : String? = nil,
      @refund_address : String? = nil,
      @transactions : BitcoinTransactionList1? = nil,
      @used_for_payment : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @bitcoin_uri.to_s.size > 5000
        invalid_properties.push("invalid value for \"bitcoin_uri\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @inbound_address.to_s.size > 5000
        invalid_properties.push("invalid value for \"inbound_address\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@email.nil? && @email.to_s.size > 5000
        invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      if !@payment.nil? && @payment.to_s.size > 5000
        invalid_properties.push("invalid value for \"payment\", the character length must be smaller than or equal to 5000.")
      end

      if !@refund_address.nil? && @refund_address.to_s.size > 5000
        invalid_properties.push("invalid value for \"refund_address\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @bitcoin_uri.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false if @inbound_address.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if !@customer.nil? && @customer.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@email.nil? && @email.to_s.size > 5000
      return false if !@payment.nil? && @payment.to_s.size > 5000
      return false if !@refund_address.nil? && @refund_address.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] bitcoin_uri Value to be assigned
    def bitcoin_uri=(bitcoin_uri : String)
      if bitcoin_uri.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bitcoin_uri\", the character length must be smaller than or equal to 5000.")
      end

      @bitcoin_uri = bitcoin_uri
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id : String)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] inbound_address Value to be assigned
    def inbound_address=(inbound_address : String)
      if inbound_address.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"inbound_address\", the character length must be smaller than or equal to 5000.")
      end

      @inbound_address = inbound_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
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
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email : String?)
      if !email.nil? && email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] payment Value to be assigned
    def payment=(payment : String?)
      if !payment.nil? && payment.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment\", the character length must be smaller than or equal to 5000.")
      end

      @payment = payment
    end

    # Custom attribute writer method with validation
    # @param [Object] refund_address Value to be assigned
    def refund_address=(refund_address : String?)
      if !refund_address.nil? && refund_address.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"refund_address\", the character length must be smaller than or equal to 5000.")
      end

      @refund_address = refund_address
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
    def_equals_and_hash(@active, @amount, @amount_received, @bitcoin_amount, @bitcoin_amount_received, @bitcoin_uri, @created, @currency, @filled, @id, @inbound_address, @livemode, @object, @uncaptured_funds, @customer, @customer_present, @description, @description_present, @email, @email_present, @metadata, @metadata_present, @payment, @payment_present, @refund_address, @refund_address_present, @transactions, @transactions_present, @used_for_payment, @used_for_payment_present)
  end
end
