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
    include OpenApi::Json

    # Required properties

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    # Optional properties

    # Card brand. Can be `amex`, `diners`, `discover`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: brand.nil? && !brand_present?)]
    getter brand : String? = nil

    @[JSON::Field(ignore: true)]
    property? brand_present : Bool = false

    @[JSON::Field(key: "checks", type: Stripe::PaymentMethodDetailsCardChecks1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: checks.nil? && !checks_present?)]
    getter checks : Stripe::PaymentMethodDetailsCardChecks1? = nil

    @[JSON::Field(ignore: true)]
    property? checks_present : Bool = false

    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

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

    @[JSON::Field(key: "installments", type: Stripe::PaymentMethodDetailsCardInstallments1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: installments.nil? && !installments_present?)]
    getter installments : Stripe::PaymentMethodDetailsCardInstallments1? = nil

    @[JSON::Field(ignore: true)]
    property? installments_present : Bool = false

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # ID of the mandate used to make this payment or created by it.
    @[JSON::Field(key: "mandate", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: mandate.nil? && !mandate_present?)]
    getter mandate : String? = nil

    @[JSON::Field(ignore: true)]
    property? mandate_present : Bool = false

    # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `interac`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "network", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network.nil? && !network_present?)]
    getter network : String? = nil

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
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?
      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?
      if _brand = @brand
        if _brand.to_s.size > 5000
          invalid_properties.push("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model checks : Stripe::PaymentMethodDetailsCardChecks1?
      if _country = @country
        if _country.to_s.size > 5000
          invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
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
      # This is a model installments : Stripe::PaymentMethodDetailsCardInstallments1?
      if _last4 = @last4
        if _last4.to_s.size > 5000
          invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _mandate = @mandate
        if _mandate.to_s.size > 5000
          invalid_properties.push("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _network = @network
        if _network.to_s.size > 5000
          invalid_properties.push("invalid value for \"network\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model three_d_secure : Stripe::PaymentMethodDetailsCardThreeDSecure?
      # This is a model wallet : Stripe::PaymentMethodDetailsCardWallet1?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @exp_month.nil?
      return false if @exp_year.nil?
      if _brand = @brand
        return false if _brand.to_s.size > 5000
      end
      if _country = @country
        return false if _country.to_s.size > 5000
      end
      if _fingerprint = @fingerprint
        return false if _fingerprint.to_s.size > 5000
      end
      if _funding = @funding
        return false if _funding.to_s.size > 5000
      end
      if _last4 = @last4
        return false if _last4.to_s.size > 5000
      end
      if _mandate = @mandate
        return false if _mandate.to_s.size > 5000
      end
      if _network = @network
        return false if _network.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_month Object to be assigned
    def exp_month=(exp_month : Int64?)
      if exp_month.nil?
        raise ArgumentError.new("\"exp_month\" is required and cannot be null")
      end
      @exp_month = exp_month
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_year Object to be assigned
    def exp_year=(exp_year : Int64?)
      if exp_year.nil?
        raise ArgumentError.new("\"exp_year\" is required and cannot be null")
      end
      @exp_year = exp_year
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

      @brand = brand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] checks Object to be assigned
    def checks=(checks : Stripe::PaymentMethodDetailsCardChecks1?)
      if checks.nil?
        return @checks = nil
      end
      @checks = checks
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

      @country = country
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

      @fingerprint = fingerprint
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

      @funding = funding
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] installments Object to be assigned
    def installments=(installments : Stripe::PaymentMethodDetailsCardInstallments1?)
      if installments.nil?
        return @installments = nil
      end
      @installments = installments
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

      @last4 = last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate Object to be assigned
    def mandate=(mandate : String?)
      if mandate.nil?
        return @mandate = nil
      end
      _mandate = mandate.not_nil!
      if _mandate.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
      end

      @mandate = mandate
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

      @network = network
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] three_d_secure Object to be assigned
    def three_d_secure=(three_d_secure : Stripe::PaymentMethodDetailsCardThreeDSecure?)
      if three_d_secure.nil?
        return @three_d_secure = nil
      end
      @three_d_secure = three_d_secure
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet Object to be assigned
    def wallet=(wallet : Stripe::PaymentMethodDetailsCardWallet1?)
      if wallet.nil?
        return @wallet = nil
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
    def_equals_and_hash(@exp_month, @exp_year, @brand, @brand_present, @checks, @checks_present, @country, @country_present, @fingerprint, @fingerprint_present, @funding, @funding_present, @installments, @installments_present, @last4, @last4_present, @mandate, @mandate_present, @network, @network_present, @three_d_secure, @three_d_secure_present, @wallet, @wallet_present)
  end
end
