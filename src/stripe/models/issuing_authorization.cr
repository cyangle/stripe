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
  # When an [issued card](https://stripe.com/docs/issuing) is used to make a purchase, an Issuing `Authorization` object is created. [Authorizations](https://stripe.com/docs/issuing/purchases/authorizations) must be approved for the purchase to be completed successfully.  Related guide: [Issued Card Authorizations](https://stripe.com/docs/issuing/purchases/authorizations).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IssuingAuthorization
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The total amount that was authorized or rejected. This amount is in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Whether the authorization has been approved.
    @[JSON::Field(key: "approved", type: Bool)]
    property approved : Bool

    # How the card details were provided.
    @[JSON::Field(key: "authorization_method", type: String)]
    getter authorization_method : String

    ENUM_VALIDATOR_FOR_AUTHORIZATION_METHOD = EnumValidator.new("authorization_method", "String", ["chip", "contactless", "keyed_in", "online", "swipe"])

    # List of balance transactions associated with this authorization.
    @[JSON::Field(key: "balance_transactions", type: Array(BalanceTransaction))]
    property balance_transactions : Array(BalanceTransaction)

    @[JSON::Field(key: "card", type: IssuingCard)]
    property card : IssuingCard

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

    # The total amount that was authorized or rejected. This amount is in the `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "merchant_amount", type: Int64)]
    property merchant_amount : Int64

    # The currency that was presented to the cardholder for the authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
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

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["issuing.authorization"])

    # History of every time `pending_request` was approved/denied, either by you directly or by Stripe (e.g. based on your `spending_controls`). If the merchant changes the authorization by performing an [incremental authorization](https://stripe.com/docs/issuing/purchases/authorizations), you can look at this field to see the previous requests for the authorization.
    @[JSON::Field(key: "request_history", type: Array(IssuingAuthorizationRequest))]
    property request_history : Array(IssuingAuthorizationRequest)

    # The current status of the authorization in its lifecycle.
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["closed", "pending", "reversed"])

    # List of [transactions](https://stripe.com/docs/api/issuing/transactions) associated with this authorization.
    @[JSON::Field(key: "transactions", type: Array(IssuingTransaction))]
    property transactions : Array(IssuingTransaction)

    @[JSON::Field(key: "verification_data", type: IssuingAuthorizationVerificationData)]
    property verification_data : IssuingAuthorizationVerificationData

    # Optional properties

    @[JSON::Field(key: "amount_details", type: IssuingAuthorizationAmountDetails1?, presence: true, ignore_serialize: amount_details.nil? && !amount_details_present?)]
    property amount_details : IssuingAuthorizationAmountDetails1?

    @[JSON::Field(ignore: true)]
    property? amount_details_present : Bool = false

    @[JSON::Field(key: "cardholder", type: IssuingAuthorizationCardholder?, presence: true, ignore_serialize: cardholder.nil? && !cardholder_present?)]
    property cardholder : IssuingAuthorizationCardholder?

    @[JSON::Field(ignore: true)]
    property? cardholder_present : Bool = false

    @[JSON::Field(key: "pending_request", type: IssuingAuthorizationPendingRequest1?, presence: true, ignore_serialize: pending_request.nil? && !pending_request_present?)]
    property pending_request : IssuingAuthorizationPendingRequest1?

    @[JSON::Field(ignore: true)]
    property? pending_request_present : Bool = false

    @[JSON::Field(key: "treasury", type: IssuingAuthorizationTreasury1?, presence: true, ignore_serialize: treasury.nil? && !treasury_present?)]
    property treasury : IssuingAuthorizationTreasury1?

    @[JSON::Field(ignore: true)]
    property? treasury_present : Bool = false

    # The digital wallet used for this authorization. One of `apple_pay`, `google_pay`, or `samsung_pay`.
    @[JSON::Field(key: "wallet", type: String?, presence: true, ignore_serialize: wallet.nil? && !wallet_present?)]
    getter wallet : String?

    @[JSON::Field(ignore: true)]
    property? wallet_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @amount : Int64, 
      @approved : Bool, 
      @authorization_method : String, 
      @balance_transactions : Array(BalanceTransaction), 
      @card : IssuingCard, 
      @created : Int64, 
      @currency : String, 
      @id : String, 
      @livemode : Bool, 
      @merchant_amount : Int64, 
      @merchant_currency : String, 
      @merchant_data : IssuingAuthorizationMerchantData, 
      @metadata : Hash(String, String), 
      @object : String, 
      @request_history : Array(IssuingAuthorizationRequest), 
      @status : String, 
      @transactions : Array(IssuingTransaction), 
      @verification_data : IssuingAuthorizationVerificationData, 
      # Optional properties
      @amount_details : IssuingAuthorizationAmountDetails1? = nil, 
      @cardholder : IssuingAuthorizationCardholder? = nil, 
      @pending_request : IssuingAuthorizationPendingRequest1? = nil, 
      @treasury : IssuingAuthorizationTreasury1? = nil, 
      @wallet : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_AUTHORIZATION_METHOD.error_message) unless ENUM_VALIDATOR_FOR_AUTHORIZATION_METHOD.valid?(@authorization_method, false)

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      if !@wallet.nil? && @wallet.to_s.size > 5000
        invalid_properties.push("invalid value for \"wallet\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_AUTHORIZATION_METHOD.valid?(@authorization_method, false)
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false if !@wallet.nil? && @wallet.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization_method Object to be assigned
    def authorization_method=(authorization_method)
      ENUM_VALIDATOR_FOR_AUTHORIZATION_METHOD.valid!(authorization_method, false)
      @authorization_method = authorization_method
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
    # @param [Object] status Object to be assigned
    def status=(status)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status, false)
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] wallet Value to be assigned
    def wallet=(wallet)
      if !wallet.nil? && wallet.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"wallet\", the character length must be smaller than or equal to 5000.")
      end

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
    def_equals_and_hash(@amount, @approved, @authorization_method, @balance_transactions, @card, @created, @currency, @id, @livemode, @merchant_amount, @merchant_currency, @merchant_data, @metadata, @object, @request_history, @status, @transactions, @verification_data, @amount_details, @cardholder, @pending_request, @treasury, @wallet)
  end
end
