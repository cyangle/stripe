#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Any use of an [issued card](https://stripe.com/docs/issuing) that results in funds entering or leaving your Stripe account, such as a completed purchase or refund, is represented by an Issuing `Transaction` object.  Related guide: [Issued Card Transactions](https://stripe.com/docs/issuing/purchases/transactions).
  class IssuingTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "card", type: Stripe::IssuingTransactionCard?, default: nil, required: true, nullable: false, emit_null: false)]
    getter card : Stripe::IssuingTransactionCard? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
    @[JSON::Field(key: "merchant_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter merchant_amount : Int64? = nil

    # The currency with which the merchant is taking payment.
    @[JSON::Field(key: "merchant_currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter merchant_currency : String? = nil

    @[JSON::Field(key: "merchant_data", type: Stripe::IssuingAuthorizationMerchantData?, default: nil, required: true, nullable: false, emit_null: false)]
    getter merchant_data : Stripe::IssuingAuthorizationMerchantData? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [issuing.transaction]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("issuing.transaction")

    # The nature of the transaction.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [capture, refund]."
    VALID_VALUES_FOR__TYPE  = String.static_array("capture", "refund")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "amount_details", type: Stripe::IssuingTransactionAmountDetails1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_details.nil? && !amount_details_present?)]
    getter amount_details : Stripe::IssuingTransactionAmountDetails1? = nil

    @[JSON::Field(ignore: true)]
    property? amount_details_present : Bool = false

    @[JSON::Field(key: "authorization", type: Stripe::IssuingTransactionAuthorization?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: authorization.nil? && !authorization_present?)]
    getter authorization : Stripe::IssuingTransactionAuthorization? = nil

    @[JSON::Field(ignore: true)]
    property? authorization_present : Bool = false

    @[JSON::Field(key: "balance_transaction", type: Stripe::IssuingTransactionBalanceTransaction?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: balance_transaction.nil? && !balance_transaction_present?)]
    getter balance_transaction : Stripe::IssuingTransactionBalanceTransaction? = nil

    @[JSON::Field(ignore: true)]
    property? balance_transaction_present : Bool = false

    @[JSON::Field(key: "cardholder", type: Stripe::IssuingTransactionCardholder?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cardholder.nil? && !cardholder_present?)]
    getter cardholder : Stripe::IssuingTransactionCardholder? = nil

    @[JSON::Field(ignore: true)]
    property? cardholder_present : Bool = false

    @[JSON::Field(key: "dispute", type: Stripe::IssuingTransactionDispute?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: dispute.nil? && !dispute_present?)]
    getter dispute : Stripe::IssuingTransactionDispute? = nil

    @[JSON::Field(ignore: true)]
    property? dispute_present : Bool = false

    @[JSON::Field(key: "purchase_details", type: Stripe::IssuingTransactionPurchaseDetails1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: purchase_details.nil? && !purchase_details_present?)]
    getter purchase_details : Stripe::IssuingTransactionPurchaseDetails1? = nil

    @[JSON::Field(ignore: true)]
    property? purchase_details_present : Bool = false

    @[JSON::Field(key: "treasury", type: Stripe::IssuingTransactionTreasury1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: treasury.nil? && !treasury_present?)]
    getter treasury : Stripe::IssuingTransactionTreasury1? = nil

    @[JSON::Field(ignore: true)]
    property? treasury_present : Bool = false

    # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
    @[JSON::Field(key: "wallet", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: wallet.nil? && !wallet_present?)]
    getter wallet : String? = nil
    ERROR_MESSAGE_FOR_WALLET = "invalid value for \"wallet\", must be one of [apple_pay, google_pay, samsung_pay]."
    VALID_VALUES_FOR_WALLET  = String.static_array("apple_pay", "google_pay", "samsung_pay")

    @[JSON::Field(ignore: true)]
    property? wallet_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @card : Stripe::IssuingTransactionCard? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @merchant_amount : Int64? = nil,
      @merchant_currency : String? = nil,
      @merchant_data : Stripe::IssuingAuthorizationMerchantData? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @amount_details : Stripe::IssuingTransactionAmountDetails1? = nil,
      @authorization : Stripe::IssuingTransactionAuthorization? = nil,
      @balance_transaction : Stripe::IssuingTransactionBalanceTransaction? = nil,
      @cardholder : Stripe::IssuingTransactionCardholder? = nil,
      @dispute : Stripe::IssuingTransactionDispute? = nil,
      @purchase_details : Stripe::IssuingTransactionPurchaseDetails1? = nil,
      @treasury : Stripe::IssuingTransactionTreasury1? = nil,
      @wallet : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"card\" is required and cannot be null") if @card.nil?

      unless (_card = @card).nil?
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"merchant_amount\" is required and cannot be null") if @merchant_amount.nil?

      invalid_properties.push("\"merchant_currency\" is required and cannot be null") if @merchant_currency.nil?

      invalid_properties.push("\"merchant_data\" is required and cannot be null") if @merchant_data.nil?

      unless (_merchant_data = @merchant_data).nil?
        invalid_properties.concat(_merchant_data.list_invalid_properties_for("merchant_data")) if _merchant_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_amount_details = @amount_details).nil?
        invalid_properties.concat(_amount_details.list_invalid_properties_for("amount_details")) if _amount_details.is_a?(OpenApi::Validatable)
      end
      unless (_authorization = @authorization).nil?
        invalid_properties.concat(_authorization.list_invalid_properties_for("authorization")) if _authorization.is_a?(OpenApi::Validatable)
      end
      unless (_balance_transaction = @balance_transaction).nil?
        invalid_properties.concat(_balance_transaction.list_invalid_properties_for("balance_transaction")) if _balance_transaction.is_a?(OpenApi::Validatable)
      end
      unless (_cardholder = @cardholder).nil?
        invalid_properties.concat(_cardholder.list_invalid_properties_for("cardholder")) if _cardholder.is_a?(OpenApi::Validatable)
      end
      unless (_dispute = @dispute).nil?
        invalid_properties.concat(_dispute.list_invalid_properties_for("dispute")) if _dispute.is_a?(OpenApi::Validatable)
      end
      unless (_purchase_details = @purchase_details).nil?
        invalid_properties.concat(_purchase_details.list_invalid_properties_for("purchase_details")) if _purchase_details.is_a?(OpenApi::Validatable)
      end
      unless (_treasury = @treasury).nil?
        invalid_properties.concat(_treasury.list_invalid_properties_for("treasury")) if _treasury.is_a?(OpenApi::Validatable)
      end
      unless (_wallet = @wallet).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_WALLET) unless OpenApi::EnumValidator.valid?(_wallet, VALID_VALUES_FOR_WALLET)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @card.nil?
      unless (_card = @card).nil?
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      return false if @created.nil?

      return false if @currency.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @merchant_amount.nil?

      return false if @merchant_currency.nil?

      return false if @merchant_data.nil?
      unless (_merchant_data = @merchant_data).nil?
        return false if _merchant_data.is_a?(OpenApi::Validatable) && !_merchant_data.valid?
      end

      return false if @metadata.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_amount_details = @amount_details).nil?
        return false if _amount_details.is_a?(OpenApi::Validatable) && !_amount_details.valid?
      end

      unless (_authorization = @authorization).nil?
        return false if _authorization.is_a?(OpenApi::Validatable) && !_authorization.valid?
      end

      unless (_balance_transaction = @balance_transaction).nil?
        return false if _balance_transaction.is_a?(OpenApi::Validatable) && !_balance_transaction.valid?
      end

      unless (_cardholder = @cardholder).nil?
        return false if _cardholder.is_a?(OpenApi::Validatable) && !_cardholder.valid?
      end

      unless (_dispute = @dispute).nil?
        return false if _dispute.is_a?(OpenApi::Validatable) && !_dispute.valid?
      end

      unless (_purchase_details = @purchase_details).nil?
        return false if _purchase_details.is_a?(OpenApi::Validatable) && !_purchase_details.valid?
      end

      unless (_treasury = @treasury).nil?
        return false if _treasury.is_a?(OpenApi::Validatable) && !_treasury.valid?
      end

      unless (_wallet = @wallet).nil?
        return false unless OpenApi::EnumValidator.valid?(_wallet, VALID_VALUES_FOR_WALLET)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : Stripe::IssuingTransactionCard?)
      if card.nil?
        raise ArgumentError.new("\"card\" is required and cannot be null")
      end
      _card = card.not_nil!
      _card.validate if _card.is_a?(OpenApi::Validatable)
      @card = _card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] merchant_amount Object to be assigned
    def merchant_amount=(merchant_amount : Int64?)
      if merchant_amount.nil?
        raise ArgumentError.new("\"merchant_amount\" is required and cannot be null")
      end
      _merchant_amount = merchant_amount.not_nil!
      @merchant_amount = _merchant_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] merchant_currency Object to be assigned
    def merchant_currency=(merchant_currency : String?)
      if merchant_currency.nil?
        raise ArgumentError.new("\"merchant_currency\" is required and cannot be null")
      end
      _merchant_currency = merchant_currency.not_nil!
      @merchant_currency = _merchant_currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] merchant_data Object to be assigned
    def merchant_data=(merchant_data : Stripe::IssuingAuthorizationMerchantData?)
      if merchant_data.nil?
        raise ArgumentError.new("\"merchant_data\" is required and cannot be null")
      end
      _merchant_data = merchant_data.not_nil!
      _merchant_data.validate if _merchant_data.is_a?(OpenApi::Validatable)
      @merchant_data = _merchant_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        raise ArgumentError.new("\"metadata\" is required and cannot be null")
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_details Object to be assigned
    def amount_details=(amount_details : Stripe::IssuingTransactionAmountDetails1?)
      if amount_details.nil?
        return @amount_details = nil
      end
      _amount_details = amount_details.not_nil!
      _amount_details.validate if _amount_details.is_a?(OpenApi::Validatable)
      @amount_details = _amount_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization Object to be assigned
    def authorization=(authorization : Stripe::IssuingTransactionAuthorization?)
      if authorization.nil?
        return @authorization = nil
      end
      _authorization = authorization.not_nil!
      _authorization.validate if _authorization.is_a?(OpenApi::Validatable)
      @authorization = _authorization
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transaction Object to be assigned
    def balance_transaction=(balance_transaction : Stripe::IssuingTransactionBalanceTransaction?)
      if balance_transaction.nil?
        return @balance_transaction = nil
      end
      _balance_transaction = balance_transaction.not_nil!
      _balance_transaction.validate if _balance_transaction.is_a?(OpenApi::Validatable)
      @balance_transaction = _balance_transaction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cardholder Object to be assigned
    def cardholder=(cardholder : Stripe::IssuingTransactionCardholder?)
      if cardholder.nil?
        return @cardholder = nil
      end
      _cardholder = cardholder.not_nil!
      _cardholder.validate if _cardholder.is_a?(OpenApi::Validatable)
      @cardholder = _cardholder
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dispute Object to be assigned
    def dispute=(dispute : Stripe::IssuingTransactionDispute?)
      if dispute.nil?
        return @dispute = nil
      end
      _dispute = dispute.not_nil!
      _dispute.validate if _dispute.is_a?(OpenApi::Validatable)
      @dispute = _dispute
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purchase_details Object to be assigned
    def purchase_details=(purchase_details : Stripe::IssuingTransactionPurchaseDetails1?)
      if purchase_details.nil?
        return @purchase_details = nil
      end
      _purchase_details = purchase_details.not_nil!
      _purchase_details.validate if _purchase_details.is_a?(OpenApi::Validatable)
      @purchase_details = _purchase_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] treasury Object to be assigned
    def treasury=(treasury : Stripe::IssuingTransactionTreasury1?)
      if treasury.nil?
        return @treasury = nil
      end
      _treasury = treasury.not_nil!
      _treasury.validate if _treasury.is_a?(OpenApi::Validatable)
      @treasury = _treasury
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet Object to be assigned
    def wallet=(wallet : String?)
      if wallet.nil?
        return @wallet = nil
      end
      _wallet = wallet.not_nil!
      OpenApi::EnumValidator.validate("wallet", _wallet, VALID_VALUES_FOR_WALLET)
      @wallet = _wallet
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @card, @created, @currency, @id, @livemode, @merchant_amount, @merchant_currency, @merchant_data, @metadata, @object, @_type, @amount_details, @amount_details_present, @authorization, @authorization_present, @balance_transaction, @balance_transaction_present, @cardholder, @cardholder_present, @dispute, @dispute_present, @purchase_details, @purchase_details_present, @treasury, @treasury_present, @wallet, @wallet_present)
  end
end
