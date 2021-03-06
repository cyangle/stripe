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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodDetailsCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64)]
    property exp_month : Int64

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64)]
    property exp_year : Int64

    # Optional properties

    # Card brand. Can be `amex`, `diners`, `discover`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "brand", type: String?, presence: true, ignore_serialize: brand.nil? && !brand_present?)]
    getter brand : String?

    @[JSON::Field(ignore: true)]
    property? brand_present : Bool = false

    @[JSON::Field(key: "checks", type: PaymentMethodDetailsCardChecks1?, presence: true, ignore_serialize: checks.nil? && !checks_present?)]
    property checks : PaymentMethodDetailsCardChecks1?

    @[JSON::Field(ignore: true)]
    property? checks_present : Bool = false

    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    @[JSON::Field(key: "country", type: String?, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String?

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.  *Starting May 1, 2021, card fingerprint in India for Connect will change to allow two fingerprints for the same card --- one for India and one for the rest of the world.*
    @[JSON::Field(key: "fingerprint", type: String?, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String?

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    @[JSON::Field(key: "funding", type: String?, presence: true, ignore_serialize: funding.nil? && !funding_present?)]
    getter funding : String?

    @[JSON::Field(ignore: true)]
    property? funding_present : Bool = false

    @[JSON::Field(key: "installments", type: PaymentMethodDetailsCardInstallments1?, presence: true, ignore_serialize: installments.nil? && !installments_present?)]
    property installments : PaymentMethodDetailsCardInstallments1?

    @[JSON::Field(ignore: true)]
    property? installments_present : Bool = false

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String?

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # ID of the mandate used to make this payment or created by it.
    @[JSON::Field(key: "mandate", type: String?, presence: true, ignore_serialize: mandate.nil? && !mandate_present?)]
    getter mandate : String?

    @[JSON::Field(ignore: true)]
    property? mandate_present : Bool = false

    # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `interac`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "network", type: String?, presence: true, ignore_serialize: network.nil? && !network_present?)]
    getter network : String?

    @[JSON::Field(ignore: true)]
    property? network_present : Bool = false

    @[JSON::Field(key: "three_d_secure", type: PaymentMethodDetailsCardThreeDSecure?, presence: true, ignore_serialize: three_d_secure.nil? && !three_d_secure_present?)]
    property three_d_secure : PaymentMethodDetailsCardThreeDSecure?

    @[JSON::Field(ignore: true)]
    property? three_d_secure_present : Bool = false

    @[JSON::Field(key: "wallet", type: PaymentMethodDetailsCardWallet1?, presence: true, ignore_serialize: wallet.nil? && !wallet_present?)]
    property wallet : PaymentMethodDetailsCardWallet1?

    @[JSON::Field(ignore: true)]
    property? wallet_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @exp_month : Int64,
      @exp_year : Int64,
      # Optional properties
      @brand : String? = nil,
      @checks : PaymentMethodDetailsCardChecks1? = nil,
      @country : String? = nil,
      @fingerprint : String? = nil,
      @funding : String? = nil,
      @installments : PaymentMethodDetailsCardInstallments1? = nil,
      @last4 : String? = nil,
      @mandate : String? = nil,
      @network : String? = nil,
      @three_d_secure : PaymentMethodDetailsCardThreeDSecure? = nil,
      @wallet : PaymentMethodDetailsCardWallet1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@brand.nil? && @brand.to_s.size > 5000
        invalid_properties.push("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
      end

      if !@country.nil? && @country.to_s.size > 5000
        invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
        invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      if !@funding.nil? && @funding.to_s.size > 5000
        invalid_properties.push("invalid value for \"funding\", the character length must be smaller than or equal to 5000.")
      end

      if !@last4.nil? && @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      if !@mandate.nil? && @mandate.to_s.size > 5000
        invalid_properties.push("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
      end

      if !@network.nil? && @network.to_s.size > 5000
        invalid_properties.push("invalid value for \"network\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@brand.nil? && @brand.to_s.size > 5000
      return false if !@country.nil? && @country.to_s.size > 5000
      return false if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
      return false if !@funding.nil? && @funding.to_s.size > 5000
      return false if !@last4.nil? && @last4.to_s.size > 5000
      return false if !@mandate.nil? && @mandate.to_s.size > 5000
      return false if !@network.nil? && @network.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] brand Value to be assigned
    def brand=(brand : String?)
      if !brand.nil? && brand.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
      end

      @brand = brand
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country : String?)
      if !country.nil? && country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] fingerprint Value to be assigned
    def fingerprint=(fingerprint : String?)
      if !fingerprint.nil? && fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = fingerprint
    end

    # Custom attribute writer method with validation
    # @param [Object] funding Value to be assigned
    def funding=(funding : String?)
      if !funding.nil? && funding.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"funding\", the character length must be smaller than or equal to 5000.")
      end

      @funding = funding
    end

    # Custom attribute writer method with validation
    # @param [Object] last4 Value to be assigned
    def last4=(last4 : String?)
      if !last4.nil? && last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Custom attribute writer method with validation
    # @param [Object] mandate Value to be assigned
    def mandate=(mandate : String?)
      if !mandate.nil? && mandate.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"mandate\", the character length must be smaller than or equal to 5000.")
      end

      @mandate = mandate
    end

    # Custom attribute writer method with validation
    # @param [Object] network Value to be assigned
    def network=(network : String?)
      if !network.nil? && network.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"network\", the character length must be smaller than or equal to 5000.")
      end

      @network = network
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
