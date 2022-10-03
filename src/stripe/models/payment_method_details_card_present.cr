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
  #
  class PaymentMethodDetailsCardPresent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # The authorized amount
    @[JSON::Field(key: "amount_authorized", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_authorized.nil? && !amount_authorized_present?)]
    getter amount_authorized : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_authorized_present : Bool = false

    # Card brand. Can be `amex`, `diners`, `discover`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: brand.nil? && !brand_present?)]
    getter brand : String? = nil
    MAX_LENGTH_FOR_BRAND = 5000

    @[JSON::Field(ignore: true)]
    property? brand_present : Bool = false

    # When using manual capture, a future timestamp after which the charge will be automatically refunded if uncaptured.
    @[JSON::Field(key: "capture_before", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_before : Int64? = nil

    # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
    @[JSON::Field(key: "cardholder_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cardholder_name.nil? && !cardholder_name_present?)]
    getter cardholder_name : String? = nil
    MAX_LENGTH_FOR_CARDHOLDER_NAME = 5000

    @[JSON::Field(ignore: true)]
    property? cardholder_name_present : Bool = false

    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    # Authorization response cryptogram.
    @[JSON::Field(key: "emv_auth_data", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: emv_auth_data.nil? && !emv_auth_data_present?)]
    getter emv_auth_data : String? = nil
    MAX_LENGTH_FOR_EMV_AUTH_DATA = 5000

    @[JSON::Field(ignore: true)]
    property? emv_auth_data_present : Bool = false

    # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.  *Starting May 1, 2021, card fingerprint in India for Connect will change to allow two fingerprints for the same card --- one for India and one for the rest of the world.*
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    @[JSON::Field(key: "funding", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: funding.nil? && !funding_present?)]
    getter funding : String? = nil
    MAX_LENGTH_FOR_FUNDING = 5000

    @[JSON::Field(ignore: true)]
    property? funding_present : Bool = false

    # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
    @[JSON::Field(key: "generated_card", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: generated_card.nil? && !generated_card_present?)]
    getter generated_card : String? = nil
    MAX_LENGTH_FOR_GENERATED_CARD = 5000

    @[JSON::Field(ignore: true)]
    property? generated_card_present : Bool = false

    # Whether this [PaymentIntent](https://stripe.com/docs/api/payment_intents) is eligible for incremental authorizations. Request support using [request_incremental_authorization_support](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-payment_method_options-card_present-request_incremental_authorization_support).
    @[JSON::Field(key: "incremental_authorization_supported", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: incremental_authorization_supported.nil? && !incremental_authorization_supported_present?)]
    getter incremental_authorization_supported : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? incremental_authorization_supported_present : Bool = false

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `interac`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "network", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network.nil? && !network_present?)]
    getter network : String? = nil
    MAX_LENGTH_FOR_NETWORK = 5000

    @[JSON::Field(ignore: true)]
    property? network_present : Bool = false

    # Defines whether the authorized amount can be over-captured or not
    @[JSON::Field(key: "overcapture_supported", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: overcapture_supported.nil? && !overcapture_supported_present?)]
    getter overcapture_supported : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? overcapture_supported_present : Bool = false

    # How card details were read in this transaction.
    @[JSON::Field(key: "read_method", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: read_method.nil? && !read_method_present?)]
    getter read_method : String? = nil
    ERROR_MESSAGE_FOR_READ_METHOD = "invalid value for \"read_method\", must be one of [contact_emv, contactless_emv, contactless_magstripe_mode, magnetic_stripe_fallback, magnetic_stripe_track2]."
    VALID_VALUES_FOR_READ_METHOD  = StaticArray["contact_emv", "contactless_emv", "contactless_magstripe_mode", "magnetic_stripe_fallback", "magnetic_stripe_track2"]

    @[JSON::Field(ignore: true)]
    property? read_method_present : Bool = false

    @[JSON::Field(key: "receipt", type: Stripe::PaymentMethodDetailsCardPresentReceipt1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: receipt.nil? && !receipt_present?)]
    getter receipt : Stripe::PaymentMethodDetailsCardPresentReceipt1? = nil

    @[JSON::Field(ignore: true)]
    property? receipt_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      # Optional properties
      @amount_authorized : Int64? = nil,
      @brand : String? = nil,
      @capture_before : Int64? = nil,
      @cardholder_name : String? = nil,
      @country : String? = nil,
      @emv_auth_data : String? = nil,
      @fingerprint : String? = nil,
      @funding : String? = nil,
      @generated_card : String? = nil,
      @incremental_authorization_supported : Bool? = nil,
      @last4 : String? = nil,
      @network : String? = nil,
      @overcapture_supported : Bool? = nil,
      @read_method : String? = nil,
      @receipt : Stripe::PaymentMethodDetailsCardPresentReceipt1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      unless (_brand = @brand).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("brand", _brand.to_s.size, MAX_LENGTH_FOR_BRAND)
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

      unless (_read_method = @read_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_READ_METHOD) unless OpenApi::EnumValidator.valid?(_read_method, VALID_VALUES_FOR_READ_METHOD)
      end
      unless (_receipt = @receipt).nil?
        invalid_properties.concat(_receipt.list_invalid_properties_for("receipt")) if _receipt.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @exp_month.nil?

      return false if @exp_year.nil?

      unless (_brand = @brand).nil?
        return false if _brand.to_s.size > MAX_LENGTH_FOR_BRAND
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

      unless (_fingerprint = @fingerprint).nil?
        return false if _fingerprint.to_s.size > MAX_LENGTH_FOR_FINGERPRINT
      end

      unless (_funding = @funding).nil?
        return false if _funding.to_s.size > MAX_LENGTH_FOR_FUNDING
      end

      unless (_generated_card = @generated_card).nil?
        return false if _generated_card.to_s.size > MAX_LENGTH_FOR_GENERATED_CARD
      end

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_network = @network).nil?
        return false if _network.to_s.size > MAX_LENGTH_FOR_NETWORK
      end

      unless (_read_method = @read_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_read_method, VALID_VALUES_FOR_READ_METHOD)
      end

      unless (_receipt = @receipt).nil?
        return false if _receipt.is_a?(OpenApi::Validatable) && !_receipt.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_month Object to be assigned
    def exp_month=(exp_month : Int64?)
      if exp_month.nil?
        raise ArgumentError.new("\"exp_month\" is required and cannot be null")
      end
      _exp_month = exp_month.not_nil!
      @exp_month = _exp_month
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_year Object to be assigned
    def exp_year=(exp_year : Int64?)
      if exp_year.nil?
        raise ArgumentError.new("\"exp_year\" is required and cannot be null")
      end
      _exp_year = exp_year.not_nil!
      @exp_year = _exp_year
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_authorized Object to be assigned
    def amount_authorized=(amount_authorized : Int64?)
      if amount_authorized.nil?
        return @amount_authorized = nil
      end
      _amount_authorized = amount_authorized.not_nil!
      @amount_authorized = _amount_authorized
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] brand Object to be assigned
    def brand=(brand : String?)
      if brand.nil?
        return @brand = nil
      end
      _brand = brand.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("brand", _brand.to_s.size, MAX_LENGTH_FOR_BRAND)
      @brand = _brand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_before Object to be assigned
    def capture_before=(capture_before : Int64?)
      if capture_before.nil?
        return @capture_before = nil
      end
      _capture_before = capture_before.not_nil!
      @capture_before = _capture_before
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cardholder_name Object to be assigned
    def cardholder_name=(cardholder_name : String?)
      if cardholder_name.nil?
        return @cardholder_name = nil
      end
      _cardholder_name = cardholder_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("cardholder_name", _cardholder_name.to_s.size, MAX_LENGTH_FOR_CARDHOLDER_NAME)
      @cardholder_name = _cardholder_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] emv_auth_data Object to be assigned
    def emv_auth_data=(emv_auth_data : String?)
      if emv_auth_data.nil?
        return @emv_auth_data = nil
      end
      _emv_auth_data = emv_auth_data.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("emv_auth_data", _emv_auth_data.to_s.size, MAX_LENGTH_FOR_EMV_AUTH_DATA)
      @emv_auth_data = _emv_auth_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("fingerprint", _fingerprint.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding Object to be assigned
    def funding=(funding : String?)
      if funding.nil?
        return @funding = nil
      end
      _funding = funding.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("funding", _funding.to_s.size, MAX_LENGTH_FOR_FUNDING)
      @funding = _funding
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_card Object to be assigned
    def generated_card=(generated_card : String?)
      if generated_card.nil?
        return @generated_card = nil
      end
      _generated_card = generated_card.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("generated_card", _generated_card.to_s.size, MAX_LENGTH_FOR_GENERATED_CARD)
      @generated_card = _generated_card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] incremental_authorization_supported Object to be assigned
    def incremental_authorization_supported=(incremental_authorization_supported : Bool?)
      if incremental_authorization_supported.nil?
        return @incremental_authorization_supported = nil
      end
      _incremental_authorization_supported = incremental_authorization_supported.not_nil!
      @incremental_authorization_supported = _incremental_authorization_supported
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
      @last4 = _last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(network : String?)
      if network.nil?
        return @network = nil
      end
      _network = network.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("network", _network.to_s.size, MAX_LENGTH_FOR_NETWORK)
      @network = _network
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] overcapture_supported Object to be assigned
    def overcapture_supported=(overcapture_supported : Bool?)
      if overcapture_supported.nil?
        return @overcapture_supported = nil
      end
      _overcapture_supported = overcapture_supported.not_nil!
      @overcapture_supported = _overcapture_supported
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] read_method Object to be assigned
    def read_method=(read_method : String?)
      if read_method.nil?
        return @read_method = nil
      end
      _read_method = read_method.not_nil!
      OpenApi::EnumValidator.validate("read_method", _read_method, VALID_VALUES_FOR_READ_METHOD)
      @read_method = _read_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt Object to be assigned
    def receipt=(receipt : Stripe::PaymentMethodDetailsCardPresentReceipt1?)
      if receipt.nil?
        return @receipt = nil
      end
      _receipt = receipt.not_nil!
      _receipt.validate if _receipt.is_a?(OpenApi::Validatable)
      @receipt = _receipt
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@exp_month, @exp_year, @amount_authorized, @amount_authorized_present, @brand, @brand_present, @capture_before, @cardholder_name, @cardholder_name_present, @country, @country_present, @emv_auth_data, @emv_auth_data_present, @fingerprint, @fingerprint_present, @funding, @funding_present, @generated_card, @generated_card_present, @incremental_authorization_supported, @incremental_authorization_supported_present, @last4, @last4_present, @network, @network_present, @overcapture_supported, @overcapture_supported_present, @read_method, @read_method_present, @receipt, @receipt_present)
  end
end
