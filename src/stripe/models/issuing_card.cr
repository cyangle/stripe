#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_card_authorization_controls"
require "./issuing_card_personalization_design"
require "./issuing_card_replaced_by"
require "./issuing_card_replacement_for"
require "./issuing_card_shipping1"
require "./issuing_card_wallets1"
require "./issuing_cardholder"

module Stripe
  # You can [create physical or virtual cards](https://stripe.com/docs/issuing/cards) that are issued to cardholders.
  class IssuingCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The brand of the card.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter brand : String? = nil
    MAX_LENGTH_FOR_BRAND = 5000

    # The reason why the card was canceled.
    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter cancellation_reason : String? = nil
    ERROR_MESSAGE_FOR_CANCELLATION_REASON = "invalid value for \"cancellation_reason\", must be one of [design_rejected, lost, stolen]."
    VALID_VALUES_FOR_CANCELLATION_REASON  = String.static_array("design_rejected", "lost", "stolen")

    @[JSON::Field(key: "cardholder", type: Stripe::IssuingCardholder?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cardholder : Stripe::IssuingCardholder? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Supported currencies are `usd` in the US, `eur` in the EU, and `gbp` in the UK.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # The expiration month of the card.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # The expiration year of the card.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # The last 4 digits of the card number.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [issuing.card]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("issuing.card")

    @[JSON::Field(key: "personalization_design", type: Stripe::IssuingCardPersonalizationDesign?, default: nil, required: true, nullable: true, emit_null: true)]
    getter personalization_design : Stripe::IssuingCardPersonalizationDesign? = nil

    @[JSON::Field(key: "replaced_by", type: Stripe::IssuingCardReplacedBy?, default: nil, required: true, nullable: true, emit_null: true)]
    getter replaced_by : Stripe::IssuingCardReplacedBy? = nil

    @[JSON::Field(key: "replacement_for", type: Stripe::IssuingCardReplacementFor?, default: nil, required: true, nullable: true, emit_null: true)]
    getter replacement_for : Stripe::IssuingCardReplacementFor? = nil

    # The reason why the previous card needed to be replaced.
    @[JSON::Field(key: "replacement_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter replacement_reason : String? = nil
    ERROR_MESSAGE_FOR_REPLACEMENT_REASON = "invalid value for \"replacement_reason\", must be one of [damaged, expired, lost, stolen]."
    VALID_VALUES_FOR_REPLACEMENT_REASON  = String.static_array("damaged", "expired", "lost", "stolen")

    @[JSON::Field(key: "shipping", type: Stripe::IssuingCardShipping1?, default: nil, required: true, nullable: true, emit_null: true)]
    getter shipping : Stripe::IssuingCardShipping1? = nil

    @[JSON::Field(key: "spending_controls", type: Stripe::IssuingCardAuthorizationControls?, default: nil, required: true, nullable: false, emit_null: false)]
    getter spending_controls : Stripe::IssuingCardAuthorizationControls? = nil

    # Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, canceled, inactive]."
    VALID_VALUES_FOR_STATUS  = String.static_array("active", "canceled", "inactive")

    # The type of the card.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [physical, virtual]."
    VALID_VALUES_FOR__TYPE  = String.static_array("physical", "virtual")

    @[JSON::Field(key: "wallets", type: Stripe::IssuingCardWallets1?, default: nil, required: true, nullable: true, emit_null: true)]
    getter wallets : Stripe::IssuingCardWallets1? = nil

    # End of Required Properties

    # Optional Properties

    # The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the [\"Retrieve a card\" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via \"List all cards\" or any other endpoint.
    @[JSON::Field(key: "cvc", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cvc : String? = nil
    MAX_LENGTH_FOR_CVC = 5000

    # The financial account this card is attached to.
    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: financial_account.nil? && !financial_account_present?)]
    getter financial_account : String? = nil
    MAX_LENGTH_FOR_FINANCIAL_ACCOUNT = 5000

    @[JSON::Field(ignore: true)]
    property? financial_account_present : Bool = false

    # The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the [\"Retrieve a card\" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via \"List all cards\" or any other endpoint.
    @[JSON::Field(key: "number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter number : String? = nil
    MAX_LENGTH_FOR_NUMBER = 5000

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
      @shipping : Stripe::IssuingCardShipping1? = nil,
      @spending_controls : Stripe::IssuingCardAuthorizationControls? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      @wallets : Stripe::IssuingCardWallets1? = nil,
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

      invalid_properties.push("\"brand\" is required and cannot be null") if @brand.nil?

      unless (_brand = @brand).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("brand", _brand.to_s.size, MAX_LENGTH_FOR_BRAND)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_cancellation_reason = @cancellation_reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CANCELLATION_REASON) unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end
      invalid_properties.push("\"cardholder\" is required and cannot be null") if @cardholder.nil?

      unless (_cardholder = @cardholder).nil?
        invalid_properties.concat(_cardholder.list_invalid_properties_for("cardholder")) if _cardholder.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"last4\" is required and cannot be null") if @last4.nil?

      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_personalization_design = @personalization_design).nil?
        invalid_properties.concat(_personalization_design.list_invalid_properties_for("personalization_design")) if _personalization_design.is_a?(OpenApi::Validatable)
      end
      unless (_replaced_by = @replaced_by).nil?
        invalid_properties.concat(_replaced_by.list_invalid_properties_for("replaced_by")) if _replaced_by.is_a?(OpenApi::Validatable)
      end
      unless (_replacement_for = @replacement_for).nil?
        invalid_properties.concat(_replacement_for.list_invalid_properties_for("replacement_for")) if _replacement_for.is_a?(OpenApi::Validatable)
      end
      unless (_replacement_reason = @replacement_reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_REPLACEMENT_REASON) unless OpenApi::EnumValidator.valid?(_replacement_reason, VALID_VALUES_FOR_REPLACEMENT_REASON)
      end
      unless (_shipping = @shipping).nil?
        invalid_properties.concat(_shipping.list_invalid_properties_for("shipping")) if _shipping.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"spending_controls\" is required and cannot be null") if @spending_controls.nil?

      unless (_spending_controls = @spending_controls).nil?
        invalid_properties.concat(_spending_controls.list_invalid_properties_for("spending_controls")) if _spending_controls.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_wallets = @wallets).nil?
        invalid_properties.concat(_wallets.list_invalid_properties_for("wallets")) if _wallets.is_a?(OpenApi::Validatable)
      end
      unless (_cvc = @cvc).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cvc", _cvc.to_s.size, MAX_LENGTH_FOR_CVC)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_financial_account = @financial_account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("financial_account", _financial_account.to_s.size, MAX_LENGTH_FOR_FINANCIAL_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_number = @number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("number", _number.to_s.size, MAX_LENGTH_FOR_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @brand.nil?
      unless (_brand = @brand).nil?
        return false if _brand.to_s.size > MAX_LENGTH_FOR_BRAND
      end

      unless (_cancellation_reason = @cancellation_reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      return false if @cardholder.nil?
      unless (_cardholder = @cardholder).nil?
        return false if _cardholder.is_a?(OpenApi::Validatable) && !_cardholder.valid?
      end

      return false if @created.nil?

      return false if @currency.nil?

      return false if @exp_month.nil?

      return false if @exp_year.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @last4.nil?
      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      return false if @livemode.nil?

      return false if @metadata.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_personalization_design = @personalization_design).nil?
        return false if _personalization_design.is_a?(OpenApi::Validatable) && !_personalization_design.valid?
      end

      unless (_replaced_by = @replaced_by).nil?
        return false if _replaced_by.is_a?(OpenApi::Validatable) && !_replaced_by.valid?
      end

      unless (_replacement_for = @replacement_for).nil?
        return false if _replacement_for.is_a?(OpenApi::Validatable) && !_replacement_for.valid?
      end

      unless (_replacement_reason = @replacement_reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_replacement_reason, VALID_VALUES_FOR_REPLACEMENT_REASON)
      end

      unless (_shipping = @shipping).nil?
        return false if _shipping.is_a?(OpenApi::Validatable) && !_shipping.valid?
      end

      return false if @spending_controls.nil?
      unless (_spending_controls = @spending_controls).nil?
        return false if _spending_controls.is_a?(OpenApi::Validatable) && !_spending_controls.valid?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_wallets = @wallets).nil?
        return false if _wallets.is_a?(OpenApi::Validatable) && !_wallets.valid?
      end

      unless (_cvc = @cvc).nil?
        return false if _cvc.to_s.size > MAX_LENGTH_FOR_CVC
      end

      unless (_financial_account = @financial_account).nil?
        return false if _financial_account.to_s.size > MAX_LENGTH_FOR_FINANCIAL_ACCOUNT
      end

      unless (_number = @number).nil?
        return false if _number.to_s.size > MAX_LENGTH_FOR_NUMBER
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] brand Object to be assigned
    def brand=(new_value : String?)
      raise ArgumentError.new("\"brand\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("brand", new_value.to_s.size, MAX_LENGTH_FOR_BRAND)
      end

      @brand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("cancellation_reason", new_value, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      @cancellation_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cardholder Object to be assigned
    def cardholder=(new_value : Stripe::IssuingCardholder?)
      raise ArgumentError.new("\"cardholder\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @cardholder = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      raise ArgumentError.new("\"currency\" is required and cannot be null") if new_value.nil?

      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_month Object to be assigned
    def exp_month=(new_value : Int64?)
      raise ArgumentError.new("\"exp_month\" is required and cannot be null") if new_value.nil?

      @exp_month = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_year Object to be assigned
    def exp_year=(new_value : Int64?)
      raise ArgumentError.new("\"exp_year\" is required and cannot be null") if new_value.nil?

      @exp_year = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(new_value : String?)
      raise ArgumentError.new("\"last4\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last4", new_value.to_s.size, MAX_LENGTH_FOR_LAST4)
      end

      @last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      raise ArgumentError.new("\"metadata\" is required and cannot be null") if new_value.nil?

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] personalization_design Object to be assigned
    def personalization_design=(new_value : Stripe::IssuingCardPersonalizationDesign?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @personalization_design = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replaced_by Object to be assigned
    def replaced_by=(new_value : Stripe::IssuingCardReplacedBy?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @replaced_by = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replacement_for Object to be assigned
    def replacement_for=(new_value : Stripe::IssuingCardReplacementFor?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @replacement_for = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replacement_reason Object to be assigned
    def replacement_reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("replacement_reason", new_value, VALID_VALUES_FOR_REPLACEMENT_REASON)
      end

      @replacement_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(new_value : Stripe::IssuingCardShipping1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @shipping = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] spending_controls Object to be assigned
    def spending_controls=(new_value : Stripe::IssuingCardAuthorizationControls?)
      raise ArgumentError.new("\"spending_controls\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @spending_controls = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallets Object to be assigned
    def wallets=(new_value : Stripe::IssuingCardWallets1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @wallets = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc Object to be assigned
    def cvc=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cvc", new_value.to_s.size, MAX_LENGTH_FOR_CVC)
      end

      @cvc = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_account Object to be assigned
    def financial_account=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("financial_account", new_value.to_s.size, MAX_LENGTH_FOR_FINANCIAL_ACCOUNT)
      end

      @financial_account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number Object to be assigned
    def number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("number", new_value.to_s.size, MAX_LENGTH_FOR_NUMBER)
      end

      @number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@brand, @cancellation_reason, @cardholder, @created, @currency, @exp_month, @exp_year, @id, @last4, @livemode, @metadata, @object, @personalization_design, @replaced_by, @replacement_for, @replacement_reason, @shipping, @spending_controls, @status, @_type, @wallets, @cvc, @financial_account, @financial_account_present, @number)
  end
end
