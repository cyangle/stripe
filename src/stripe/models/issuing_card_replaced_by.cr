#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_card"
require "./issuing_card_authorization_controls"
require "./issuing_card_personalization_design"
require "./issuing_card_replacement_for"
require "./issuing_card_shipping"
require "./issuing_card_wallets"
require "./issuing_cardholder"

module Stripe
  # The latest card that replaces this card, if any.
  class IssuingCardReplacedBy
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The brand of the card.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property brand : String? = nil
    MAX_LENGTH_FOR_BRAND = 5000

    # The reason why the card was canceled.
    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property cancellation_reason : String? = nil
    ERROR_MESSAGE_FOR_CANCELLATION_REASON = "invalid value for \"cancellation_reason\", must be one of [design_rejected, lost, stolen]."
    VALID_VALUES_FOR_CANCELLATION_REASON  = String.static_array("design_rejected", "lost", "stolen")

    @[JSON::Field(key: "cardholder", type: Stripe::IssuingCardholder?, default: nil, required: true, nullable: false, emit_null: false)]
    property cardholder : Stripe::IssuingCardholder? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Supported currencies are `usd` in the US, `eur` in the EU, and `gbp` in the UK.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property currency : String? = nil

    # The expiration month of the card.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property exp_month : Int64? = nil

    # The expiration year of the card.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property exp_year : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # The last 4 digits of the card number.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    property metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [issuing.card]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("issuing.card")

    @[JSON::Field(key: "personalization_design", type: Stripe::IssuingCardPersonalizationDesign?, default: nil, required: true, nullable: true, emit_null: true)]
    property personalization_design : Stripe::IssuingCardPersonalizationDesign? = nil

    @[JSON::Field(key: "replaced_by", type: Stripe::IssuingCardReplacedBy?, default: nil, required: true, nullable: true, emit_null: true)]
    property replaced_by : Stripe::IssuingCardReplacedBy? = nil

    @[JSON::Field(key: "replacement_for", type: Stripe::IssuingCardReplacementFor?, default: nil, required: true, nullable: true, emit_null: true)]
    property replacement_for : Stripe::IssuingCardReplacementFor? = nil

    # The reason why the previous card needed to be replaced.
    @[JSON::Field(key: "replacement_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property replacement_reason : String? = nil
    ERROR_MESSAGE_FOR_REPLACEMENT_REASON = "invalid value for \"replacement_reason\", must be one of [damaged, expired, lost, stolen]."
    VALID_VALUES_FOR_REPLACEMENT_REASON  = String.static_array("damaged", "expired", "lost", "stolen")

    @[JSON::Field(key: "shipping", type: Stripe::IssuingCardShipping?, default: nil, required: true, nullable: false, emit_null: false)]
    property shipping : Stripe::IssuingCardShipping? = nil

    @[JSON::Field(key: "spending_controls", type: Stripe::IssuingCardAuthorizationControls?, default: nil, required: true, nullable: false, emit_null: false)]
    property spending_controls : Stripe::IssuingCardAuthorizationControls? = nil

    # Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, canceled, inactive]."
    VALID_VALUES_FOR_STATUS  = String.static_array("active", "canceled", "inactive")

    # The type of the card.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [physical, virtual]."
    VALID_VALUES_FOR__TYPE  = String.static_array("physical", "virtual")

    @[JSON::Field(key: "wallets", type: Stripe::IssuingCardWallets?, default: nil, required: true, nullable: false, emit_null: false)]
    property wallets : Stripe::IssuingCardWallets? = nil

    # End of Required Properties

    # Optional Properties

    # The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the [\"Retrieve a card\" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via \"List all cards\" or any other endpoint.
    @[JSON::Field(key: "cvc", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property cvc : String? = nil
    MAX_LENGTH_FOR_CVC = 5000

    # The financial account this card is attached to.
    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: financial_account.nil? && !financial_account_present?)]
    property financial_account : String? = nil
    MAX_LENGTH_FOR_FINANCIAL_ACCOUNT = 5000

    @[JSON::Field(ignore: true)]
    property? financial_account_present : Bool = false

    # The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the [\"Retrieve a card\" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via \"List all cards\" or any other endpoint.
    @[JSON::Field(key: "number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property number : String? = nil
    MAX_LENGTH_FOR_NUMBER = 5000

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::IssuingCard,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @brand : String? = nil,
      @cancellation_reason : String? = nil,
      @cardholder : Stripe::IssuingCardholder? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      @id : String? = nil,
      @last4 : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @personalization_design : Stripe::IssuingCardPersonalizationDesign? = nil,
      @replaced_by : Stripe::IssuingCardReplacedBy? = nil,
      @replacement_for : Stripe::IssuingCardReplacementFor? = nil,
      @replacement_reason : String? = nil,
      @shipping : Stripe::IssuingCardShipping? = nil,
      @spending_controls : Stripe::IssuingCardAuthorizationControls? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      @wallets : Stripe::IssuingCardWallets? = nil,
      # Optional properties
      @cvc : String? = nil,
      @financial_account : String? = nil,
      @number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@brand, @cancellation_reason, @cardholder, @created, @currency, @exp_month, @exp_year, @id, @last4, @livemode, @metadata, @object, @personalization_design, @replaced_by, @replacement_for, @replacement_reason, @shipping, @spending_controls, @status, @_type, @wallets, @cvc, @financial_account, @financial_account_present, @number)
  end
end
