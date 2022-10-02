#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # When an [issued card](https://stripe.com/docs/issuing) is used to make a purchase, an Issuing `Authorization` object is created. [Authorizations](https://stripe.com/docs/issuing/purchases/authorizations) must be approved for the purchase to be completed successfully.  Related guide: [Issued Card Authorizations](https://stripe.com/docs/issuing/purchases/authorizations).
  class IssuingAuthorization
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The total amount that was authorized or rejected. This amount is in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Whether the authorization has been approved.
    @[JSON::Field(key: "approved", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter approved : Bool? = nil

    # How the card details were provided.
    @[JSON::Field(key: "authorization_method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter authorization_method : String? = nil
    ERROR_MESSAGE_FOR_AUTHORIZATION_METHOD = "invalid value for \"authorization_method\", must be one of [chip, contactless, keyed_in, online, swipe]."
    VALID_VALUES_FOR_AUTHORIZATION_METHOD  = StaticArray["chip", "contactless", "keyed_in", "online", "swipe"]

    # List of balance transactions associated with this authorization.
    @[JSON::Field(key: "balance_transactions", type: Array(Stripe::BalanceTransaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter balance_transactions : Array(Stripe::BalanceTransaction)? = nil

    @[JSON::Field(key: "card", type: Stripe::IssuingCard?, default: nil, required: true, nullable: false, emit_null: false)]
    getter card : Stripe::IssuingCard? = nil

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

    # The total amount that was authorized or rejected. This amount is in the `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "merchant_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter merchant_amount : Int64? = nil

    # The currency that was presented to the cardholder for the authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "merchant_currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter merchant_currency : String? = nil

    @[JSON::Field(key: "merchant_data", type: Stripe::IssuingAuthorizationMerchantData?, default: nil, required: true, nullable: false, emit_null: false)]
    getter merchant_data : Stripe::IssuingAuthorizationMerchantData? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [issuing.authorization]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["issuing.authorization"]

    # History of every time `pending_request` was approved/denied, either by you directly or by Stripe (e.g. based on your `spending_controls`). If the merchant changes the authorization by performing an [incremental authorization](https://stripe.com/docs/issuing/purchases/authorizations), you can look at this field to see the previous requests for the authorization.
    @[JSON::Field(key: "request_history", type: Array(Stripe::IssuingAuthorizationRequest)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_history : Array(Stripe::IssuingAuthorizationRequest)? = nil

    # The current status of the authorization in its lifecycle.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [closed, pending, reversed]."
    VALID_VALUES_FOR_STATUS  = StaticArray["closed", "pending", "reversed"]

    # List of [transactions](https://stripe.com/docs/api/issuing/transactions) associated with this authorization.
    @[JSON::Field(key: "transactions", type: Array(Stripe::IssuingTransaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transactions : Array(Stripe::IssuingTransaction)? = nil

    @[JSON::Field(key: "verification_data", type: Stripe::IssuingAuthorizationVerificationData?, default: nil, required: true, nullable: false, emit_null: false)]
    getter verification_data : Stripe::IssuingAuthorizationVerificationData? = nil

    # Optional properties

    @[JSON::Field(key: "amount_details", type: Stripe::IssuingAuthorizationAmountDetails1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_details.nil? && !amount_details_present?)]
    getter amount_details : Stripe::IssuingAuthorizationAmountDetails1? = nil

    @[JSON::Field(ignore: true)]
    property? amount_details_present : Bool = false

    @[JSON::Field(key: "cardholder", type: Stripe::IssuingAuthorizationCardholder?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cardholder.nil? && !cardholder_present?)]
    getter cardholder : Stripe::IssuingAuthorizationCardholder? = nil

    @[JSON::Field(ignore: true)]
    property? cardholder_present : Bool = false

    @[JSON::Field(key: "pending_request", type: Stripe::IssuingAuthorizationPendingRequest1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: pending_request.nil? && !pending_request_present?)]
    getter pending_request : Stripe::IssuingAuthorizationPendingRequest1? = nil

    @[JSON::Field(ignore: true)]
    property? pending_request_present : Bool = false

    @[JSON::Field(key: "treasury", type: Stripe::IssuingAuthorizationTreasury1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: treasury.nil? && !treasury_present?)]
    getter treasury : Stripe::IssuingAuthorizationTreasury1? = nil

    @[JSON::Field(ignore: true)]
    property? treasury_present : Bool = false

    # The digital wallet used for this authorization. One of `apple_pay`, `google_pay`, or `samsung_pay`.
    @[JSON::Field(key: "wallet", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: wallet.nil? && !wallet_present?)]
    getter wallet : String? = nil
    MAX_LENGTH_FOR_WALLET = 5000

    @[JSON::Field(ignore: true)]
    property? wallet_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @approved : Bool? = nil,
      @authorization_method : String? = nil,
      @balance_transactions : Array(Stripe::BalanceTransaction)? = nil,
      @card : Stripe::IssuingCard? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @merchant_amount : Int64? = nil,
      @merchant_currency : String? = nil,
      @merchant_data : Stripe::IssuingAuthorizationMerchantData? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @request_history : Array(Stripe::IssuingAuthorizationRequest)? = nil,
      @status : String? = nil,
      @transactions : Array(Stripe::IssuingTransaction)? = nil,
      @verification_data : Stripe::IssuingAuthorizationVerificationData? = nil,
      # Optional properties
      @amount_details : Stripe::IssuingAuthorizationAmountDetails1? = nil,
      @cardholder : Stripe::IssuingAuthorizationCardholder? = nil,
      @pending_request : Stripe::IssuingAuthorizationPendingRequest1? = nil,
      @treasury : Stripe::IssuingAuthorizationTreasury1? = nil,
      @wallet : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"approved\" is required and cannot be null") if @approved.nil?

      invalid_properties.push("\"authorization_method\" is required and cannot be null") if @authorization_method.nil?

      if _authorization_method = @authorization_method
        invalid_properties.push(ERROR_MESSAGE_FOR_AUTHORIZATION_METHOD) unless OpenApi::EnumValidator.valid?(_authorization_method, VALID_VALUES_FOR_AUTHORIZATION_METHOD)
      end
      invalid_properties.push("\"balance_transactions\" is required and cannot be null") if @balance_transactions.nil?

      if _balance_transactions = @balance_transactions
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "balance_transactions", container: _balance_transactions)) if _balance_transactions.is_a?(Array)
      end
      invalid_properties.push("\"card\" is required and cannot be null") if @card.nil?

      if _card = @card
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"merchant_amount\" is required and cannot be null") if @merchant_amount.nil?

      invalid_properties.push("\"merchant_currency\" is required and cannot be null") if @merchant_currency.nil?

      invalid_properties.push("\"merchant_data\" is required and cannot be null") if @merchant_data.nil?

      if _merchant_data = @merchant_data
        invalid_properties.concat(_merchant_data.list_invalid_properties_for("merchant_data")) if _merchant_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      if _object = @object
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"request_history\" is required and cannot be null") if @request_history.nil?

      if _request_history = @request_history
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "request_history", container: _request_history)) if _request_history.is_a?(Array)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      if _status = @status
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"transactions\" is required and cannot be null") if @transactions.nil?

      if _transactions = @transactions
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "transactions", container: _transactions)) if _transactions.is_a?(Array)
      end
      invalid_properties.push("\"verification_data\" is required and cannot be null") if @verification_data.nil?

      if _verification_data = @verification_data
        invalid_properties.concat(_verification_data.list_invalid_properties_for("verification_data")) if _verification_data.is_a?(OpenApi::Validatable)
      end
      if _amount_details = @amount_details
        invalid_properties.concat(_amount_details.list_invalid_properties_for("amount_details")) if _amount_details.is_a?(OpenApi::Validatable)
      end
      if _cardholder = @cardholder
        invalid_properties.concat(_cardholder.list_invalid_properties_for("cardholder")) if _cardholder.is_a?(OpenApi::Validatable)
      end
      if _pending_request = @pending_request
        invalid_properties.concat(_pending_request.list_invalid_properties_for("pending_request")) if _pending_request.is_a?(OpenApi::Validatable)
      end
      if _treasury = @treasury
        invalid_properties.concat(_treasury.list_invalid_properties_for("treasury")) if _treasury.is_a?(OpenApi::Validatable)
      end
      if _wallet = @wallet
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("wallet", _wallet.to_s.size, MAX_LENGTH_FOR_WALLET)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @approved.nil?

      return false if @authorization_method.nil?
      if _authorization_method = @authorization_method
        return false unless OpenApi::EnumValidator.valid?(_authorization_method, VALID_VALUES_FOR_AUTHORIZATION_METHOD)
      end

      return false if @balance_transactions.nil?
      if _balance_transactions = @balance_transactions
        return false if _balance_transactions.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _balance_transactions)
      end

      return false if @card.nil?
      if _card = @card
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      return false if @created.nil?

      return false if @currency.nil?

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @merchant_amount.nil?

      return false if @merchant_currency.nil?

      return false if @merchant_data.nil?
      if _merchant_data = @merchant_data
        return false if _merchant_data.is_a?(OpenApi::Validatable) && !_merchant_data.valid?
      end

      return false if @metadata.nil?

      return false if @object.nil?
      if _object = @object
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @request_history.nil?
      if _request_history = @request_history
        return false if _request_history.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _request_history)
      end

      return false if @status.nil?
      if _status = @status
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @transactions.nil?
      if _transactions = @transactions
        return false if _transactions.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _transactions)
      end

      return false if @verification_data.nil?
      if _verification_data = @verification_data
        return false if _verification_data.is_a?(OpenApi::Validatable) && !_verification_data.valid?
      end

      if _amount_details = @amount_details
        return false if _amount_details.is_a?(OpenApi::Validatable) && !_amount_details.valid?
      end

      if _cardholder = @cardholder
        return false if _cardholder.is_a?(OpenApi::Validatable) && !_cardholder.valid?
      end

      if _pending_request = @pending_request
        return false if _pending_request.is_a?(OpenApi::Validatable) && !_pending_request.valid?
      end

      if _treasury = @treasury
        return false if _treasury.is_a?(OpenApi::Validatable) && !_treasury.valid?
      end

      if _wallet = @wallet
        return false if _wallet.to_s.size > MAX_LENGTH_FOR_WALLET
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
    # @param [Object] approved Object to be assigned
    def approved=(approved : Bool?)
      if approved.nil?
        raise ArgumentError.new("\"approved\" is required and cannot be null")
      end
      _approved = approved.not_nil!
      @approved = _approved
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization_method Object to be assigned
    def authorization_method=(authorization_method : String?)
      if authorization_method.nil?
        raise ArgumentError.new("\"authorization_method\" is required and cannot be null")
      end
      _authorization_method = authorization_method.not_nil!
      OpenApi::EnumValidator.validate("authorization_method", _authorization_method, VALID_VALUES_FOR_AUTHORIZATION_METHOD)
      @authorization_method = _authorization_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transactions Object to be assigned
    def balance_transactions=(balance_transactions : Array(Stripe::BalanceTransaction)?)
      if balance_transactions.nil?
        raise ArgumentError.new("\"balance_transactions\" is required and cannot be null")
      end
      _balance_transactions = balance_transactions.not_nil!
      OpenApi::ContainerValidator.validate(container: _balance_transactions) if _balance_transactions.is_a?(Array)
      @balance_transactions = _balance_transactions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : Stripe::IssuingCard?)
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
    # @param [Object] request_history Object to be assigned
    def request_history=(request_history : Array(Stripe::IssuingAuthorizationRequest)?)
      if request_history.nil?
        raise ArgumentError.new("\"request_history\" is required and cannot be null")
      end
      _request_history = request_history.not_nil!
      OpenApi::ContainerValidator.validate(container: _request_history) if _request_history.is_a?(Array)
      @request_history = _request_history
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      OpenApi::EnumValidator.validate("status", _status, VALID_VALUES_FOR_STATUS)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transactions Object to be assigned
    def transactions=(transactions : Array(Stripe::IssuingTransaction)?)
      if transactions.nil?
        raise ArgumentError.new("\"transactions\" is required and cannot be null")
      end
      _transactions = transactions.not_nil!
      OpenApi::ContainerValidator.validate(container: _transactions) if _transactions.is_a?(Array)
      @transactions = _transactions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_data Object to be assigned
    def verification_data=(verification_data : Stripe::IssuingAuthorizationVerificationData?)
      if verification_data.nil?
        raise ArgumentError.new("\"verification_data\" is required and cannot be null")
      end
      _verification_data = verification_data.not_nil!
      _verification_data.validate if _verification_data.is_a?(OpenApi::Validatable)
      @verification_data = _verification_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_details Object to be assigned
    def amount_details=(amount_details : Stripe::IssuingAuthorizationAmountDetails1?)
      if amount_details.nil?
        return @amount_details = nil
      end
      _amount_details = amount_details.not_nil!
      _amount_details.validate if _amount_details.is_a?(OpenApi::Validatable)
      @amount_details = _amount_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cardholder Object to be assigned
    def cardholder=(cardholder : Stripe::IssuingAuthorizationCardholder?)
      if cardholder.nil?
        return @cardholder = nil
      end
      _cardholder = cardholder.not_nil!
      _cardholder.validate if _cardholder.is_a?(OpenApi::Validatable)
      @cardholder = _cardholder
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pending_request Object to be assigned
    def pending_request=(pending_request : Stripe::IssuingAuthorizationPendingRequest1?)
      if pending_request.nil?
        return @pending_request = nil
      end
      _pending_request = pending_request.not_nil!
      _pending_request.validate if _pending_request.is_a?(OpenApi::Validatable)
      @pending_request = _pending_request
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] treasury Object to be assigned
    def treasury=(treasury : Stripe::IssuingAuthorizationTreasury1?)
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
      OpenApi::PrimitiveValidator.validate_max_length("wallet", _wallet.to_s.size, MAX_LENGTH_FOR_WALLET)
      @wallet = _wallet
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @approved, @authorization_method, @balance_transactions, @card, @created, @currency, @id, @livemode, @merchant_amount, @merchant_currency, @merchant_data, @metadata, @object, @request_history, @status, @transactions, @verification_data, @amount_details, @amount_details_present, @cardholder, @cardholder_present, @pending_request, @pending_request_present, @treasury, @treasury_present, @wallet, @wallet_present)
  end
end
