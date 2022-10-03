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
  class PaymentMethodDetailsCard
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

    # Card brand. Can be `amex`, `diners`, `discover`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: brand.nil? && !brand_present?)]
    getter brand : String? = nil
    MAX_LENGTH_FOR_BRAND = 5000

    @[JSON::Field(ignore: true)]
    property? brand_present : Bool = false

    @[JSON::Field(key: "checks", type: Stripe::PaymentMethodDetailsCardChecks1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: checks.nil? && !checks_present?)]
    getter checks : Stripe::PaymentMethodDetailsCardChecks1? = nil

    @[JSON::Field(ignore: true)]
    property? checks_present : Bool = false

    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

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

    @[JSON::Field(key: "installments", type: Stripe::PaymentMethodDetailsCardInstallments1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: installments.nil? && !installments_present?)]
    getter installments : Stripe::PaymentMethodDetailsCardInstallments1? = nil

    @[JSON::Field(ignore: true)]
    property? installments_present : Bool = false

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # ID of the mandate used to make this payment or created by it.
    @[JSON::Field(key: "mandate", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: mandate.nil? && !mandate_present?)]
    getter mandate : String? = nil
    MAX_LENGTH_FOR_MANDATE = 5000

    @[JSON::Field(ignore: true)]
    property? mandate_present : Bool = false

    # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `interac`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "network", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network.nil? && !network_present?)]
    getter network : String? = nil
    MAX_LENGTH_FOR_NETWORK = 5000

    @[JSON::Field(ignore: true)]
    property? network_present : Bool = false

    @[JSON::Field(key: "three_d_secure", type: Stripe::PaymentMethodDetailsCardThreeDSecure?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: three_d_secure.nil? && !three_d_secure_present?)]
    getter three_d_secure : Stripe::PaymentMethodDetailsCardThreeDSecure? = nil

    @[JSON::Field(ignore: true)]
    property? three_d_secure_present : Bool = false

    @[JSON::Field(key: "wallet", type: Stripe::PaymentMethodDetailsCardWallet1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: wallet.nil? && !wallet_present?)]
    getter wallet : Stripe::PaymentMethodDetailsCardWallet1? = nil

    @[JSON::Field(ignore: true)]
    property? wallet_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      # Optional properties
      @brand : String? = nil,
      @checks : Stripe::PaymentMethodDetailsCardChecks1? = nil,
      @country : String? = nil,
      @fingerprint : String? = nil,
      @funding : String? = nil,
      @installments : Stripe::PaymentMethodDetailsCardInstallments1? = nil,
      @last4 : String? = nil,
      @mandate : String? = nil,
      @network : String? = nil,
      @three_d_secure : Stripe::PaymentMethodDetailsCardThreeDSecure? = nil,
      @wallet : Stripe::PaymentMethodDetailsCardWallet1? = nil
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
      unless (_checks = @checks).nil?
        invalid_properties.concat(_checks.list_invalid_properties_for("checks")) if _checks.is_a?(OpenApi::Validatable)
      end
      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
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
      unless (_installments = @installments).nil?
        invalid_properties.concat(_installments.list_invalid_properties_for("installments")) if _installments.is_a?(OpenApi::Validatable)
      end
      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_mandate = @mandate).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("mandate", _mandate.to_s.size, MAX_LENGTH_FOR_MANDATE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_network = @network).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("network", _network.to_s.size, MAX_LENGTH_FOR_NETWORK)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_three_d_secure = @three_d_secure).nil?
        invalid_properties.concat(_three_d_secure.list_invalid_properties_for("three_d_secure")) if _three_d_secure.is_a?(OpenApi::Validatable)
      end
      unless (_wallet = @wallet).nil?
        invalid_properties.concat(_wallet.list_invalid_properties_for("wallet")) if _wallet.is_a?(OpenApi::Validatable)
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

      unless (_checks = @checks).nil?
        return false if _checks.is_a?(OpenApi::Validatable) && !_checks.valid?
      end

      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      unless (_fingerprint = @fingerprint).nil?
        return false if _fingerprint.to_s.size > MAX_LENGTH_FOR_FINGERPRINT
      end

      unless (_funding = @funding).nil?
        return false if _funding.to_s.size > MAX_LENGTH_FOR_FUNDING
      end

      unless (_installments = @installments).nil?
        return false if _installments.is_a?(OpenApi::Validatable) && !_installments.valid?
      end

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_mandate = @mandate).nil?
        return false if _mandate.to_s.size > MAX_LENGTH_FOR_MANDATE
      end

      unless (_network = @network).nil?
        return false if _network.to_s.size > MAX_LENGTH_FOR_NETWORK
      end

      unless (_three_d_secure = @three_d_secure).nil?
        return false if _three_d_secure.is_a?(OpenApi::Validatable) && !_three_d_secure.valid?
      end

      unless (_wallet = @wallet).nil?
        return false if _wallet.is_a?(OpenApi::Validatable) && !_wallet.valid?
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
      OpenApi::PrimitiveValidator.validate_max_length("brand", _brand.to_s.size, MAX_LENGTH_FOR_BRAND)
      @brand = _brand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] checks Object to be assigned
    def checks=(checks : Stripe::PaymentMethodDetailsCardChecks1?)
      if checks.nil?
        return @checks = nil
      end
      _checks = checks.not_nil!
      _checks.validate if _checks.is_a?(OpenApi::Validatable)
      @checks = _checks
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
    # @param [Object] installments Object to be assigned
    def installments=(installments : Stripe::PaymentMethodDetailsCardInstallments1?)
      if installments.nil?
        return @installments = nil
      end
      _installments = installments.not_nil!
      _installments.validate if _installments.is_a?(OpenApi::Validatable)
      @installments = _installments
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
    # @param [Object] mandate Object to be assigned
    def mandate=(mandate : String?)
      if mandate.nil?
        return @mandate = nil
      end
      _mandate = mandate.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("mandate", _mandate.to_s.size, MAX_LENGTH_FOR_MANDATE)
      @mandate = _mandate
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
    # @param [Object] three_d_secure Object to be assigned
    def three_d_secure=(three_d_secure : Stripe::PaymentMethodDetailsCardThreeDSecure?)
      if three_d_secure.nil?
        return @three_d_secure = nil
      end
      _three_d_secure = three_d_secure.not_nil!
      _three_d_secure.validate if _three_d_secure.is_a?(OpenApi::Validatable)
      @three_d_secure = _three_d_secure
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet Object to be assigned
    def wallet=(wallet : Stripe::PaymentMethodDetailsCardWallet1?)
      if wallet.nil?
        return @wallet = nil
      end
      _wallet = wallet.not_nil!
      _wallet.validate if _wallet.is_a?(OpenApi::Validatable)
      @wallet = _wallet
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@exp_month, @exp_year, @brand, @brand_present, @checks, @checks_present, @country, @country_present, @fingerprint, @fingerprint_present, @funding, @funding_present, @installments, @installments_present, @last4, @last4_present, @mandate, @mandate_present, @network, @network_present, @three_d_secure, @three_d_secure_present, @wallet, @wallet_present)
  end
end
