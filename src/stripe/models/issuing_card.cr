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
  # You can [create physical or virtual cards](https://stripe.com/docs/issuing/cards) that are issued to cardholders.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IssuingCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The brand of the card.
    @[JSON::Field(key: "brand", type: String)]
    getter brand : String

    @[JSON::Field(key: "cardholder", type: IssuingCardholder)]
    property cardholder : IssuingCardholder

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # The expiration month of the card.
    @[JSON::Field(key: "exp_month", type: Int64)]
    property exp_month : Int64

    # The expiration year of the card.
    @[JSON::Field(key: "exp_year", type: Int64)]
    property exp_year : Int64

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # The last 4 digits of the card number.
    @[JSON::Field(key: "last4", type: String)]
    getter last4 : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["issuing.card"])

    @[JSON::Field(key: "spending_controls", type: IssuingCardAuthorizationControls)]
    property spending_controls : IssuingCardAuthorizationControls

    # Whether authorizations can be approved on this card.
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["active", "canceled", "inactive"])

    # The type of the card.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["physical", "virtual"])

    # Optional properties

    # The reason why the card was canceled.
    @[JSON::Field(key: "cancellation_reason", type: String?, presence: true, ignore_serialize: cancellation_reason.nil? && !cancellation_reason_present?)]
    getter cancellation_reason : String?

    @[JSON::Field(ignore: true)]
    property? cancellation_reason_present : Bool = false

    ENUM_VALIDATOR_FOR_CANCELLATION_REASON = EnumValidator.new("cancellation_reason", "String", ["lost", "stolen"])

    # The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the [\"Retrieve a card\" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via \"List all cards\" or any other endpoint.
    @[JSON::Field(key: "cvc", type: String?, presence: true, ignore_serialize: cvc.nil? && !cvc_present?)]
    getter cvc : String?

    @[JSON::Field(ignore: true)]
    property? cvc_present : Bool = false

    # The financial account this card is attached to.
    @[JSON::Field(key: "financial_account", type: String?, presence: true, ignore_serialize: financial_account.nil? && !financial_account_present?)]
    getter financial_account : String?

    @[JSON::Field(ignore: true)]
    property? financial_account_present : Bool = false

    # The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the [\"Retrieve a card\" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via \"List all cards\" or any other endpoint.
    @[JSON::Field(key: "number", type: String?, presence: true, ignore_serialize: number.nil? && !number_present?)]
    getter number : String?

    @[JSON::Field(ignore: true)]
    property? number_present : Bool = false

    @[JSON::Field(key: "replaced_by", type: IssuingCardReplacedBy?, presence: true, ignore_serialize: replaced_by.nil? && !replaced_by_present?)]
    property replaced_by : IssuingCardReplacedBy?

    @[JSON::Field(ignore: true)]
    property? replaced_by_present : Bool = false

    @[JSON::Field(key: "replacement_for", type: IssuingCardReplacementFor?, presence: true, ignore_serialize: replacement_for.nil? && !replacement_for_present?)]
    property replacement_for : IssuingCardReplacementFor?

    @[JSON::Field(ignore: true)]
    property? replacement_for_present : Bool = false

    # The reason why the previous card needed to be replaced.
    @[JSON::Field(key: "replacement_reason", type: String?, presence: true, ignore_serialize: replacement_reason.nil? && !replacement_reason_present?)]
    getter replacement_reason : String?

    @[JSON::Field(ignore: true)]
    property? replacement_reason_present : Bool = false

    ENUM_VALIDATOR_FOR_REPLACEMENT_REASON = EnumValidator.new("replacement_reason", "String", ["damaged", "expired", "lost", "stolen"])

    @[JSON::Field(key: "shipping", type: IssuingCardShipping1?, presence: true, ignore_serialize: shipping.nil? && !shipping_present?)]
    property shipping : IssuingCardShipping1?

    @[JSON::Field(ignore: true)]
    property? shipping_present : Bool = false

    @[JSON::Field(key: "wallets", type: IssuingCardWallets1?, presence: true, ignore_serialize: wallets.nil? && !wallets_present?)]
    property wallets : IssuingCardWallets1?

    @[JSON::Field(ignore: true)]
    property? wallets_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @brand : String,
      @cardholder : IssuingCardholder,
      @created : Int64,
      @currency : String,
      @exp_month : Int64,
      @exp_year : Int64,
      @id : String,
      @last4 : String,
      @livemode : Bool,
      @metadata : Hash(String, String),
      @object : String,
      @spending_controls : IssuingCardAuthorizationControls,
      @status : String,
      @_type : String,
      # Optional properties
      @cancellation_reason : String? = nil,
      @cvc : String? = nil,
      @financial_account : String? = nil,
      @number : String? = nil,
      @replaced_by : IssuingCardReplacedBy? = nil,
      @replacement_for : IssuingCardReplacementFor? = nil,
      @replacement_reason : String? = nil,
      @shipping : IssuingCardShipping1? = nil,
      @wallets : IssuingCardWallets1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @brand.to_s.size > 5000
        invalid_properties.push("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_CANCELLATION_REASON.error_message) unless ENUM_VALIDATOR_FOR_CANCELLATION_REASON.valid?(@cancellation_reason)

      if !@cvc.nil? && @cvc.to_s.size > 5000
        invalid_properties.push("invalid value for \"cvc\", the character length must be smaller than or equal to 5000.")
      end

      if !@financial_account.nil? && @financial_account.to_s.size > 5000
        invalid_properties.push("invalid value for \"financial_account\", the character length must be smaller than or equal to 5000.")
      end

      if !@number.nil? && @number.to_s.size > 5000
        invalid_properties.push("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_REPLACEMENT_REASON.error_message) unless ENUM_VALIDATOR_FOR_REPLACEMENT_REASON.valid?(@replacement_reason)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @brand.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false if @last4.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false unless ENUM_VALIDATOR_FOR_CANCELLATION_REASON.valid?(@cancellation_reason)
      return false if !@cvc.nil? && @cvc.to_s.size > 5000
      return false if !@financial_account.nil? && @financial_account.to_s.size > 5000
      return false if !@number.nil? && @number.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_REPLACEMENT_REASON.valid?(@replacement_reason)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] brand Value to be assigned
    def brand=(brand : String)
      if brand.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
      end

      @brand = brand
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
    # @param [Object] last4 Value to be assigned
    def last4=(last4 : String)
      if last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status, false)
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(cancellation_reason : String?)
      ENUM_VALIDATOR_FOR_CANCELLATION_REASON.valid!(cancellation_reason)
      @cancellation_reason = cancellation_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] cvc Value to be assigned
    def cvc=(cvc : String?)
      if !cvc.nil? && cvc.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cvc\", the character length must be smaller than or equal to 5000.")
      end

      @cvc = cvc
    end

    # Custom attribute writer method with validation
    # @param [Object] financial_account Value to be assigned
    def financial_account=(financial_account : String?)
      if !financial_account.nil? && financial_account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"financial_account\", the character length must be smaller than or equal to 5000.")
      end

      @financial_account = financial_account
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number : String?)
      if !number.nil? && number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      @number = number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replacement_reason Object to be assigned
    def replacement_reason=(replacement_reason : String?)
      ENUM_VALIDATOR_FOR_REPLACEMENT_REASON.valid!(replacement_reason)
      @replacement_reason = replacement_reason
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
    def_equals_and_hash(@brand, @cardholder, @created, @currency, @exp_month, @exp_year, @id, @last4, @livemode, @metadata, @object, @spending_controls, @status, @_type, @cancellation_reason, @cancellation_reason_present, @cvc, @cvc_present, @financial_account, @financial_account_present, @number, @number_present, @replaced_by, @replaced_by_present, @replacement_for, @replacement_for_present, @replacement_reason, @replacement_reason_present, @shipping, @shipping_present, @wallets, @wallets_present)
  end
end
