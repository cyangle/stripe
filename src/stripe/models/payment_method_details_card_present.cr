#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_flows_private_payment_methods_card_present_common_wallet"
require "./payment_method_details_card_present_offline1"
require "./payment_method_details_card_present_receipt1"

module Stripe
  #
  class PaymentMethodDetailsCardPresent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The authorized amount
    @[JSON::Field(key: "amount_authorized", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter amount_authorized : Int64? = nil

    # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter brand : String? = nil
    MAX_LENGTH_FOR_BRAND = 5000

    # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
    @[JSON::Field(key: "brand_product", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter brand_product : String? = nil
    MAX_LENGTH_FOR_BRAND_PRODUCT = 5000

    # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
    @[JSON::Field(key: "cardholder_name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter cardholder_name : String? = nil
    MAX_LENGTH_FOR_CARDHOLDER_NAME = 5000

    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # Authorization response cryptogram.
    @[JSON::Field(key: "emv_auth_data", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter emv_auth_data : String? = nil
    MAX_LENGTH_FOR_EMV_AUTH_DATA = 5000

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.  *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    @[JSON::Field(key: "funding", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter funding : String? = nil
    MAX_LENGTH_FOR_FUNDING = 5000

    # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
    @[JSON::Field(key: "generated_card", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter generated_card : String? = nil
    MAX_LENGTH_FOR_GENERATED_CARD = 5000

    # Whether this [PaymentIntent](https://stripe.com/docs/api/payment_intents) is eligible for incremental authorizations. Request support using [request_incremental_authorization_support](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-payment_method_options-card_present-request_incremental_authorization_support).
    @[JSON::Field(key: "incremental_authorization_supported", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter incremental_authorization_supported : Bool? = nil

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "network", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter network : String? = nil
    MAX_LENGTH_FOR_NETWORK = 5000

    # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. The first three digits of the Trace ID is the Financial Network Code, the next 6 digits is the Banknet Reference Number, and the last 4 digits represent the date (MM/DD). This field will be available for successful Visa, Mastercard, or American Express transactions and always null for other card brands.
    @[JSON::Field(key: "network_transaction_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter network_transaction_id : String? = nil
    MAX_LENGTH_FOR_NETWORK_TRANSACTION_ID = 5000

    @[JSON::Field(key: "offline", type: Stripe::PaymentMethodDetailsCardPresentOffline1?, default: nil, required: true, nullable: true, emit_null: true)]
    getter offline : Stripe::PaymentMethodDetailsCardPresentOffline1? = nil

    # Defines whether the authorized amount can be over-captured or not
    @[JSON::Field(key: "overcapture_supported", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter overcapture_supported : Bool? = nil

    # EMV tag 5F2D. Preferred languages specified by the integrated circuit chip.
    @[JSON::Field(key: "preferred_locales", type: Array(String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter preferred_locales : Array(String)? = nil

    # How card details were read in this transaction.
    @[JSON::Field(key: "read_method", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter read_method : String? = nil
    ERROR_MESSAGE_FOR_READ_METHOD = "invalid value for \"read_method\", must be one of [contact_emv, contactless_emv, contactless_magstripe_mode, magnetic_stripe_fallback, magnetic_stripe_track2]."
    VALID_VALUES_FOR_READ_METHOD  = String.static_array("contact_emv", "contactless_emv", "contactless_magstripe_mode", "magnetic_stripe_fallback", "magnetic_stripe_track2")

    @[JSON::Field(key: "receipt", type: Stripe::PaymentMethodDetailsCardPresentReceipt1?, default: nil, required: true, nullable: true, emit_null: true)]
    getter receipt : Stripe::PaymentMethodDetailsCardPresentReceipt1? = nil

    # End of Required Properties

    # Optional Properties

    # When using manual capture, a future timestamp after which the charge will be automatically refunded if uncaptured.
    @[JSON::Field(key: "capture_before", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_before : Int64? = nil

    # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
    @[JSON::Field(key: "iin", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: iin.nil? && !iin_present?)]
    getter iin : String? = nil
    MAX_LENGTH_FOR_IIN = 5000

    @[JSON::Field(ignore: true)]
    property? iin_present : Bool = false

    # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
    @[JSON::Field(key: "issuer", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: issuer.nil? && !issuer_present?)]
    getter issuer : String? = nil
    MAX_LENGTH_FOR_ISSUER = 5000

    @[JSON::Field(ignore: true)]
    property? issuer_present : Bool = false

    @[JSON::Field(key: "wallet", type: Stripe::PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet?, default: nil, required: false, nullable: false, emit_null: false)]
    getter wallet : Stripe::PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_authorized : Int64? = nil,
      @brand : String? = nil,
      @brand_product : String? = nil,
      @cardholder_name : String? = nil,
      @country : String? = nil,
      @emv_auth_data : String? = nil,
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      @fingerprint : String? = nil,
      @funding : String? = nil,
      @generated_card : String? = nil,
      @incremental_authorization_supported : Bool? = nil,
      @last4 : String? = nil,
      @network : String? = nil,
      @network_transaction_id : String? = nil,
      @offline : Stripe::PaymentMethodDetailsCardPresentOffline1? = nil,
      @overcapture_supported : Bool? = nil,
      @preferred_locales : Array(String)? = nil,
      @read_method : String? = nil,
      @receipt : Stripe::PaymentMethodDetailsCardPresentReceipt1? = nil,
      # Optional properties
      @capture_before : Int64? = nil,
      @description : String? = nil,
      @iin : String? = nil,
      @issuer : String? = nil,
      @wallet : Stripe::PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_brand = @brand).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("brand", _brand.to_s.size, MAX_LENGTH_FOR_BRAND)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_brand_product = @brand_product).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("brand_product", _brand_product.to_s.size, MAX_LENGTH_FOR_BRAND_PRODUCT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_cardholder_name = @cardholder_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cardholder_name", _cardholder_name.to_s.size, MAX_LENGTH_FOR_CARDHOLDER_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_emv_auth_data = @emv_auth_data).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("emv_auth_data", _emv_auth_data.to_s.size, MAX_LENGTH_FOR_EMV_AUTH_DATA)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      unless (_fingerprint = @fingerprint).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_funding = @funding).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("funding", _funding.to_s.size, MAX_LENGTH_FOR_FUNDING)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_generated_card = @generated_card).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("generated_card", _generated_card.to_s.size, MAX_LENGTH_FOR_GENERATED_CARD)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"incremental_authorization_supported\" is required and cannot be null") if @incremental_authorization_supported.nil?

      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_network = @network).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("network", _network.to_s.size, MAX_LENGTH_FOR_NETWORK)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_network_transaction_id = @network_transaction_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("network_transaction_id", _network_transaction_id.to_s.size, MAX_LENGTH_FOR_NETWORK_TRANSACTION_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_offline = @offline).nil?
        invalid_properties.concat(_offline.list_invalid_properties_for("offline")) if _offline.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"overcapture_supported\" is required and cannot be null") if @overcapture_supported.nil?

      unless (_read_method = @read_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_READ_METHOD) unless OpenApi::EnumValidator.valid?(_read_method, VALID_VALUES_FOR_READ_METHOD)
      end
      unless (_receipt = @receipt).nil?
        invalid_properties.concat(_receipt.list_invalid_properties_for("receipt")) if _receipt.is_a?(OpenApi::Validatable)
      end

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_iin = @iin).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("iin", _iin.to_s.size, MAX_LENGTH_FOR_IIN)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_issuer = @issuer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("issuer", _issuer.to_s.size, MAX_LENGTH_FOR_ISSUER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_wallet = @wallet).nil?
        invalid_properties.concat(_wallet.list_invalid_properties_for("wallet")) if _wallet.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_brand = @brand).nil?
        return false if _brand.to_s.size > MAX_LENGTH_FOR_BRAND
      end

      unless (_brand_product = @brand_product).nil?
        return false if _brand_product.to_s.size > MAX_LENGTH_FOR_BRAND_PRODUCT
      end

      unless (_cardholder_name = @cardholder_name).nil?
        return false if _cardholder_name.to_s.size > MAX_LENGTH_FOR_CARDHOLDER_NAME
      end

      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      unless (_emv_auth_data = @emv_auth_data).nil?
        return false if _emv_auth_data.to_s.size > MAX_LENGTH_FOR_EMV_AUTH_DATA
      end

      return false if @exp_month.nil?

      return false if @exp_year.nil?

      unless (_fingerprint = @fingerprint).nil?
        return false if _fingerprint.to_s.size > MAX_LENGTH_FOR_FINGERPRINT
      end

      unless (_funding = @funding).nil?
        return false if _funding.to_s.size > MAX_LENGTH_FOR_FUNDING
      end

      unless (_generated_card = @generated_card).nil?
        return false if _generated_card.to_s.size > MAX_LENGTH_FOR_GENERATED_CARD
      end

      return false if @incremental_authorization_supported.nil?

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_network = @network).nil?
        return false if _network.to_s.size > MAX_LENGTH_FOR_NETWORK
      end

      unless (_network_transaction_id = @network_transaction_id).nil?
        return false if _network_transaction_id.to_s.size > MAX_LENGTH_FOR_NETWORK_TRANSACTION_ID
      end

      unless (_offline = @offline).nil?
        return false if _offline.is_a?(OpenApi::Validatable) && !_offline.valid?
      end

      return false if @overcapture_supported.nil?

      unless (_read_method = @read_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_read_method, VALID_VALUES_FOR_READ_METHOD)
      end

      unless (_receipt = @receipt).nil?
        return false if _receipt.is_a?(OpenApi::Validatable) && !_receipt.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_iin = @iin).nil?
        return false if _iin.to_s.size > MAX_LENGTH_FOR_IIN
      end

      unless (_issuer = @issuer).nil?
        return false if _issuer.to_s.size > MAX_LENGTH_FOR_ISSUER
      end

      unless (_wallet = @wallet).nil?
        return false if _wallet.is_a?(OpenApi::Validatable) && !_wallet.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_authorized Object to be assigned
    def amount_authorized=(new_value : Int64?)
      @amount_authorized = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] brand Object to be assigned
    def brand=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("brand", new_value.to_s.size, MAX_LENGTH_FOR_BRAND)
      end

      @brand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] brand_product Object to be assigned
    def brand_product=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("brand_product", new_value.to_s.size, MAX_LENGTH_FOR_BRAND_PRODUCT)
      end

      @brand_product = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cardholder_name Object to be assigned
    def cardholder_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cardholder_name", new_value.to_s.size, MAX_LENGTH_FOR_CARDHOLDER_NAME)
      end

      @cardholder_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("country", new_value.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      end

      @country = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] emv_auth_data Object to be assigned
    def emv_auth_data=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("emv_auth_data", new_value.to_s.size, MAX_LENGTH_FOR_EMV_AUTH_DATA)
      end

      @emv_auth_data = new_value
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
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("fingerprint", new_value.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
      end

      @fingerprint = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding Object to be assigned
    def funding=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("funding", new_value.to_s.size, MAX_LENGTH_FOR_FUNDING)
      end

      @funding = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_card Object to be assigned
    def generated_card=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("generated_card", new_value.to_s.size, MAX_LENGTH_FOR_GENERATED_CARD)
      end

      @generated_card = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] incremental_authorization_supported Object to be assigned
    def incremental_authorization_supported=(new_value : Bool?)
      raise ArgumentError.new("\"incremental_authorization_supported\" is required and cannot be null") if new_value.nil?

      @incremental_authorization_supported = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last4", new_value.to_s.size, MAX_LENGTH_FOR_LAST4)
      end

      @last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("network", new_value.to_s.size, MAX_LENGTH_FOR_NETWORK)
      end

      @network = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_transaction_id Object to be assigned
    def network_transaction_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("network_transaction_id", new_value.to_s.size, MAX_LENGTH_FOR_NETWORK_TRANSACTION_ID)
      end

      @network_transaction_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] offline Object to be assigned
    def offline=(new_value : Stripe::PaymentMethodDetailsCardPresentOffline1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @offline = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] overcapture_supported Object to be assigned
    def overcapture_supported=(new_value : Bool?)
      raise ArgumentError.new("\"overcapture_supported\" is required and cannot be null") if new_value.nil?

      @overcapture_supported = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_locales Object to be assigned
    def preferred_locales=(new_value : Array(String)?)
      @preferred_locales = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] read_method Object to be assigned
    def read_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("read_method", new_value, VALID_VALUES_FOR_READ_METHOD)
      end

      @read_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt Object to be assigned
    def receipt=(new_value : Stripe::PaymentMethodDetailsCardPresentReceipt1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @receipt = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_before Object to be assigned
    def capture_before=(new_value : Int64?)
      @capture_before = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iin Object to be assigned
    def iin=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("iin", new_value.to_s.size, MAX_LENGTH_FOR_IIN)
      end

      @iin = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuer Object to be assigned
    def issuer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("issuer", new_value.to_s.size, MAX_LENGTH_FOR_ISSUER)
      end

      @issuer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet Object to be assigned
    def wallet=(new_value : Stripe::PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @wallet = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_authorized, @brand, @brand_product, @cardholder_name, @country, @emv_auth_data, @exp_month, @exp_year, @fingerprint, @funding, @generated_card, @incremental_authorization_supported, @last4, @network, @network_transaction_id, @offline, @overcapture_supported, @preferred_locales, @read_method, @receipt, @capture_before, @description, @description_present, @iin, @iin_present, @issuer, @issuer_present, @wallet)
  end
end
