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
  # Any use of an [issued card](https://stripe.com/docs/issuing) that results in funds entering or leaving your Stripe account, such as a completed purchase or refund, is represented by an Issuing `Transaction` object.  Related guide: [Issued Card Transactions](https://stripe.com/docs/issuing/purchases/transactions).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IssuingTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    @[JSON::Field(key: "card", type: IssuingTransactionCard)]
    property card : IssuingTransactionCard

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
    @[JSON::Field(key: "merchant_amount", type: Int64)]
    property merchant_amount : Int64

    # The currency with which the merchant is taking payment.
    @[JSON::Field(key: "merchant_currency", type: String)]
    property merchant_currency : String

    @[JSON::Field(key: "merchant_data", type: IssuingAuthorizationMerchantData)]
    property merchant_data : IssuingAuthorizationMerchantData

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["issuing.transaction"])

    # The nature of the transaction.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["capture", "refund"])

    # Optional properties

    @[JSON::Field(key: "amount_details", type: IssuingTransactionAmountDetails1?, presence: true, ignore_serialize: amount_details.nil? && !amount_details_present?)]
    property amount_details : IssuingTransactionAmountDetails1?

    @[JSON::Field(ignore: true)]
    property? amount_details_present : Bool = false

    @[JSON::Field(key: "authorization", type: IssuingTransactionAuthorization?, presence: true, ignore_serialize: authorization.nil? && !authorization_present?)]
    property authorization : IssuingTransactionAuthorization?

    @[JSON::Field(ignore: true)]
    property? authorization_present : Bool = false

    @[JSON::Field(key: "balance_transaction", type: IssuingTransactionBalanceTransaction?, presence: true, ignore_serialize: balance_transaction.nil? && !balance_transaction_present?)]
    property balance_transaction : IssuingTransactionBalanceTransaction?

    @[JSON::Field(ignore: true)]
    property? balance_transaction_present : Bool = false

    @[JSON::Field(key: "cardholder", type: IssuingTransactionCardholder?, presence: true, ignore_serialize: cardholder.nil? && !cardholder_present?)]
    property cardholder : IssuingTransactionCardholder?

    @[JSON::Field(ignore: true)]
    property? cardholder_present : Bool = false

    @[JSON::Field(key: "dispute", type: IssuingTransactionDispute?, presence: true, ignore_serialize: dispute.nil? && !dispute_present?)]
    property dispute : IssuingTransactionDispute?

    @[JSON::Field(ignore: true)]
    property? dispute_present : Bool = false

    @[JSON::Field(key: "purchase_details", type: IssuingTransactionPurchaseDetails1?, presence: true, ignore_serialize: purchase_details.nil? && !purchase_details_present?)]
    property purchase_details : IssuingTransactionPurchaseDetails1?

    @[JSON::Field(ignore: true)]
    property? purchase_details_present : Bool = false

    @[JSON::Field(key: "treasury", type: IssuingTransactionTreasury1?, presence: true, ignore_serialize: treasury.nil? && !treasury_present?)]
    property treasury : IssuingTransactionTreasury1?

    @[JSON::Field(ignore: true)]
    property? treasury_present : Bool = false

    # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
    @[JSON::Field(key: "wallet", type: String?, presence: true, ignore_serialize: wallet.nil? && !wallet_present?)]
    getter wallet : String?

    @[JSON::Field(ignore: true)]
    property? wallet_present : Bool = false

    ENUM_VALIDATOR_FOR_WALLET = EnumValidator.new("wallet", "String", ["apple_pay", "google_pay", "samsung_pay"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @amount : Int64, 
      @card : IssuingTransactionCard, 
      @created : Int64, 
      @currency : String, 
      @id : String, 
      @livemode : Bool, 
      @merchant_amount : Int64, 
      @merchant_currency : String, 
      @merchant_data : IssuingAuthorizationMerchantData, 
      @metadata : Hash(String, String), 
      @object : String, 
      @_type : String, 
      # Optional properties
      @amount_details : IssuingTransactionAmountDetails1? = nil, 
      @authorization : IssuingTransactionAuthorization? = nil, 
      @balance_transaction : IssuingTransactionBalanceTransaction? = nil, 
      @cardholder : IssuingTransactionCardholder? = nil, 
      @dispute : IssuingTransactionDispute? = nil, 
      @purchase_details : IssuingTransactionPurchaseDetails1? = nil, 
      @treasury : IssuingTransactionTreasury1? = nil, 
      @wallet : String? = nil
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

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_WALLET.error_message) unless ENUM_VALIDATOR_FOR_WALLET.valid?(@wallet)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false unless ENUM_VALIDATOR_FOR_WALLET.valid?(@wallet)

      true
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet Object to be assigned
    def wallet=(wallet)
      ENUM_VALIDATOR_FOR_WALLET.valid!(wallet)
      @wallet = wallet
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
    def_equals_and_hash(@amount, @card, @created, @currency, @id, @livemode, @merchant_amount, @merchant_currency, @merchant_data, @metadata, @object, @_type, @amount_details, @authorization, @balance_transaction, @cardholder, @dispute, @purchase_details, @treasury, @wallet)
  end
end
