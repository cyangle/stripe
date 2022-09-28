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
  class PaymentMethodDetailsInteracPresent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    # Optional properties

    # Card brand. Can be `interac`, `mastercard` or `visa`.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: brand.nil? && !brand_present?)]
    getter brand : String? = nil

    @[JSON::Field(ignore: true)]
    property? brand_present : Bool = false

    # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
    @[JSON::Field(key: "cardholder_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cardholder_name.nil? && !cardholder_name_present?)]
    getter cardholder_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? cardholder_name_present : Bool = false

    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    # Authorization response cryptogram.
    @[JSON::Field(key: "emv_auth_data", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: emv_auth_data.nil? && !emv_auth_data_present?)]
    getter emv_auth_data : String? = nil

    @[JSON::Field(ignore: true)]
    property? emv_auth_data_present : Bool = false

    # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.  *Starting May 1, 2021, card fingerprint in India for Connect will change to allow two fingerprints for the same card --- one for India and one for the rest of the world.*
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    @[JSON::Field(key: "funding", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: funding.nil? && !funding_present?)]
    getter funding : String? = nil

    @[JSON::Field(ignore: true)]
    property? funding_present : Bool = false

    # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
    @[JSON::Field(key: "generated_card", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: generated_card.nil? && !generated_card_present?)]
    getter generated_card : String? = nil

    @[JSON::Field(ignore: true)]
    property? generated_card_present : Bool = false

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `interac`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "network", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network.nil? && !network_present?)]
    getter network : String? = nil

    @[JSON::Field(ignore: true)]
    property? network_present : Bool = false

    # EMV tag 5F2D. Preferred languages specified by the integrated circuit chip.
    @[JSON::Field(key: "preferred_locales", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preferred_locales.nil? && !preferred_locales_present?)]
    getter preferred_locales : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? preferred_locales_present : Bool = false

    # How card details were read in this transaction.
    @[JSON::Field(key: "read_method", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: read_method.nil? && !read_method_present?)]
    getter read_method : String? = nil

    @[JSON::Field(ignore: true)]
    property? read_method_present : Bool = false

    ENUM_VALIDATOR_FOR_READ_METHOD = EnumValidator.new("read_method", "String", ["contact_emv", "contactless_emv", "contactless_magstripe_mode", "magnetic_stripe_fallback", "magnetic_stripe_track2"])

    @[JSON::Field(key: "receipt", type: Stripe::PaymentMethodDetailsInteracPresentReceipt1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: receipt.nil? && !receipt_present?)]
    getter receipt : Stripe::PaymentMethodDetailsInteracPresentReceipt1? = nil

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
      @brand : String? = nil,
      @cardholder_name : String? = nil,
      @country : String? = nil,
      @emv_auth_data : String? = nil,
      @fingerprint : String? = nil,
      @funding : String? = nil,
      @generated_card : String? = nil,
      @last4 : String? = nil,
      @network : String? = nil,
      @preferred_locales : Array(String)? = nil,
      @read_method : String? = nil,
      @receipt : Stripe::PaymentMethodDetailsInteracPresentReceipt1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      if _brand = @brand
        if _brand.to_s.size > 5000
          invalid_properties.push("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _cardholder_name = @cardholder_name
        if _cardholder_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"cardholder_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _country = @country
        if _country.to_s.size > 5000
          invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _emv_auth_data = @emv_auth_data
        if _emv_auth_data.to_s.size > 5000
          invalid_properties.push("invalid value for \"emv_auth_data\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _fingerprint = @fingerprint
        if _fingerprint.to_s.size > 5000
          invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _funding = @funding
        if _funding.to_s.size > 5000
          invalid_properties.push("invalid value for \"funding\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _generated_card = @generated_card
        if _generated_card.to_s.size > 5000
          invalid_properties.push("invalid value for \"generated_card\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _last4 = @last4
        if _last4.to_s.size > 5000
          invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _network = @network
        if _network.to_s.size > 5000
          invalid_properties.push("invalid value for \"network\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_READ_METHOD.error_message) unless ENUM_VALIDATOR_FOR_READ_METHOD.valid?(@read_method)
      if _receipt = @receipt
        if _receipt.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_receipt.list_invalid_properties_for("receipt"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @exp_month.nil?

      return false if @exp_year.nil?

      if _brand = @brand
        return false if _brand.to_s.size > 5000
      end
      if _cardholder_name = @cardholder_name
        return false if _cardholder_name.to_s.size > 5000
      end
      if _country = @country
        return false if _country.to_s.size > 5000
      end
      if _emv_auth_data = @emv_auth_data
        return false if _emv_auth_data.to_s.size > 5000
      end
      if _fingerprint = @fingerprint
        return false if _fingerprint.to_s.size > 5000
      end
      if _funding = @funding
        return false if _funding.to_s.size > 5000
      end
      if _generated_card = @generated_card
        return false if _generated_card.to_s.size > 5000
      end
      if _last4 = @last4
        return false if _last4.to_s.size > 5000
      end
      if _network = @network
        return false if _network.to_s.size > 5000
      end

      return false unless ENUM_VALIDATOR_FOR_READ_METHOD.valid?(@read_method)
      if _receipt = @receipt
        if _receipt.is_a?(OpenApi::Validatable)
          return false unless _receipt.valid?
        end
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
    # @param [Object] brand Object to be assigned
    def brand=(brand : String?)
      if brand.nil?
        return @brand = nil
      end
      _brand = brand.not_nil!
      if _brand.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
      end

      @brand = _brand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cardholder_name Object to be assigned
    def cardholder_name=(cardholder_name : String?)
      if cardholder_name.nil?
        return @cardholder_name = nil
      end
      _cardholder_name = cardholder_name.not_nil!
      if _cardholder_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cardholder_name\", the character length must be smaller than or equal to 5000.")
      end

      @cardholder_name = _cardholder_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      if _country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] emv_auth_data Object to be assigned
    def emv_auth_data=(emv_auth_data : String?)
      if emv_auth_data.nil?
        return @emv_auth_data = nil
      end
      _emv_auth_data = emv_auth_data.not_nil!
      if _emv_auth_data.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"emv_auth_data\", the character length must be smaller than or equal to 5000.")
      end

      @emv_auth_data = _emv_auth_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      if _fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding Object to be assigned
    def funding=(funding : String?)
      if funding.nil?
        return @funding = nil
      end
      _funding = funding.not_nil!
      if _funding.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"funding\", the character length must be smaller than or equal to 5000.")
      end

      @funding = _funding
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_card Object to be assigned
    def generated_card=(generated_card : String?)
      if generated_card.nil?
        return @generated_card = nil
      end
      _generated_card = generated_card.not_nil!
      if _generated_card.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"generated_card\", the character length must be smaller than or equal to 5000.")
      end

      @generated_card = _generated_card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      if _last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = _last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(network : String?)
      if network.nil?
        return @network = nil
      end
      _network = network.not_nil!
      if _network.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"network\", the character length must be smaller than or equal to 5000.")
      end

      @network = _network
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_locales Object to be assigned
    def preferred_locales=(preferred_locales : Array(String)?)
      if preferred_locales.nil?
        return @preferred_locales = nil
      end
      _preferred_locales = preferred_locales.not_nil!
      @preferred_locales = _preferred_locales
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] read_method Object to be assigned
    def read_method=(read_method : String?)
      if read_method.nil?
        return @read_method = nil
      end
      _read_method = read_method.not_nil!
      ENUM_VALIDATOR_FOR_READ_METHOD.valid!(_read_method)
      @read_method = _read_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt Object to be assigned
    def receipt=(receipt : Stripe::PaymentMethodDetailsInteracPresentReceipt1?)
      if receipt.nil?
        return @receipt = nil
      end
      _receipt = receipt.not_nil!
      if _receipt.is_a?(OpenApi::Validatable)
        _receipt.validate
      end
      @receipt = _receipt
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@exp_month, @exp_year, @brand, @brand_present, @cardholder_name, @cardholder_name_present, @country, @country_present, @emv_auth_data, @emv_auth_data_present, @fingerprint, @fingerprint_present, @funding, @funding_present, @generated_card, @generated_card_present, @last4, @last4_present, @network, @network_present, @preferred_locales, @preferred_locales_present, @read_method, @read_method_present, @receipt, @receipt_present)
  end
end
