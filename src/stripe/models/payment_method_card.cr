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
  class PaymentMethodCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Card brand. Can be `amex`, `diners`, `discover`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter brand : String? = nil

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    @[JSON::Field(key: "funding", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter funding : String? = nil

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter last4 : String? = nil

    # Optional properties

    @[JSON::Field(key: "checks", type: Stripe::PaymentMethodCardChecks1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: checks.nil? && !checks_present?)]
    getter checks : Stripe::PaymentMethodCardChecks1? = nil

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

    @[JSON::Field(key: "generated_from", type: Stripe::PaymentMethodCardGeneratedFrom?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: generated_from.nil? && !generated_from_present?)]
    getter generated_from : Stripe::PaymentMethodCardGeneratedFrom? = nil

    @[JSON::Field(ignore: true)]
    property? generated_from_present : Bool = false

    @[JSON::Field(key: "networks", type: Stripe::PaymentMethodCardNetworks?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: networks.nil? && !networks_present?)]
    getter networks : Stripe::PaymentMethodCardNetworks? = nil

    @[JSON::Field(ignore: true)]
    property? networks_present : Bool = false

    @[JSON::Field(key: "three_d_secure_usage", type: Stripe::PaymentMethodCardThreeDSecureUsage?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: three_d_secure_usage.nil? && !three_d_secure_usage_present?)]
    getter three_d_secure_usage : Stripe::PaymentMethodCardThreeDSecureUsage? = nil

    @[JSON::Field(ignore: true)]
    property? three_d_secure_usage_present : Bool = false

    @[JSON::Field(key: "wallet", type: Stripe::PaymentMethodCardWallet1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: wallet.nil? && !wallet_present?)]
    getter wallet : Stripe::PaymentMethodCardWallet1? = nil

    @[JSON::Field(ignore: true)]
    property? wallet_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @brand : String? = nil,
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      @funding : String? = nil,
      @last4 : String? = nil,
      # Optional properties
      @checks : Stripe::PaymentMethodCardChecks1? = nil,
      @country : String? = nil,
      @fingerprint : String? = nil,
      @generated_from : Stripe::PaymentMethodCardGeneratedFrom? = nil,
      @networks : Stripe::PaymentMethodCardNetworks? = nil,
      @three_d_secure_usage : Stripe::PaymentMethodCardThreeDSecureUsage? = nil,
      @wallet : Stripe::PaymentMethodCardWallet1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"brand\" is required and cannot be null") if @brand.nil?
      if _brand = @brand
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("brand", _brand.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      invalid_properties.push("\"funding\" is required and cannot be null") if @funding.nil?
      if _funding = @funding
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("funding", _funding.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"last4\" is required and cannot be null") if @last4.nil?
      if _last4 = @last4
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _checks = @checks
        invalid_properties.concat(_checks.list_invalid_properties_for("checks")) if _checks.is_a?(OpenApi::Validatable)
      end
      if _country = @country
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _fingerprint = @fingerprint
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _generated_from = @generated_from
        invalid_properties.concat(_generated_from.list_invalid_properties_for("generated_from")) if _generated_from.is_a?(OpenApi::Validatable)
      end
      if _networks = @networks
        invalid_properties.concat(_networks.list_invalid_properties_for("networks")) if _networks.is_a?(OpenApi::Validatable)
      end
      if _three_d_secure_usage = @three_d_secure_usage
        invalid_properties.concat(_three_d_secure_usage.list_invalid_properties_for("three_d_secure_usage")) if _three_d_secure_usage.is_a?(OpenApi::Validatable)
      end
      if _wallet = @wallet
        invalid_properties.concat(_wallet.list_invalid_properties_for("wallet")) if _wallet.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @brand.nil?
      if _brand = @brand
        return false if _brand.to_s.size > 5000
      end
      return false if @exp_month.nil?

      return false if @exp_year.nil?

      return false if @funding.nil?
      if _funding = @funding
        return false if _funding.to_s.size > 5000
      end
      return false if @last4.nil?
      if _last4 = @last4
        return false if _last4.to_s.size > 5000
      end
      if _checks = @checks
        return false if _checks.is_a?(OpenApi::Validatable) && !_checks.valid?
      end
      if _country = @country
        return false if _country.to_s.size > 5000
      end
      if _fingerprint = @fingerprint
        return false if _fingerprint.to_s.size > 5000
      end
      if _generated_from = @generated_from
        return false if _generated_from.is_a?(OpenApi::Validatable) && !_generated_from.valid?
      end
      if _networks = @networks
        return false if _networks.is_a?(OpenApi::Validatable) && !_networks.valid?
      end
      if _three_d_secure_usage = @three_d_secure_usage
        return false if _three_d_secure_usage.is_a?(OpenApi::Validatable) && !_three_d_secure_usage.valid?
      end
      if _wallet = @wallet
        return false if _wallet.is_a?(OpenApi::Validatable) && !_wallet.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] brand Object to be assigned
    def brand=(brand : String?)
      if brand.nil?
        raise ArgumentError.new("\"brand\" is required and cannot be null")
      end
      _brand = brand.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("brand", _brand.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @brand = _brand
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
    # @param [Object] funding Object to be assigned
    def funding=(funding : String?)
      if funding.nil?
        raise ArgumentError.new("\"funding\" is required and cannot be null")
      end
      _funding = funding.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("funding", _funding.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @funding = _funding
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        raise ArgumentError.new("\"last4\" is required and cannot be null")
      end
      _last4 = last4.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @last4 = _last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] checks Object to be assigned
    def checks=(checks : Stripe::PaymentMethodCardChecks1?)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_from Object to be assigned
    def generated_from=(generated_from : Stripe::PaymentMethodCardGeneratedFrom?)
      if generated_from.nil?
        return @generated_from = nil
      end
      _generated_from = generated_from.not_nil!
      _generated_from.validate if _generated_from.is_a?(OpenApi::Validatable)
      @generated_from = _generated_from
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] networks Object to be assigned
    def networks=(networks : Stripe::PaymentMethodCardNetworks?)
      if networks.nil?
        return @networks = nil
      end
      _networks = networks.not_nil!
      _networks.validate if _networks.is_a?(OpenApi::Validatable)
      @networks = _networks
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] three_d_secure_usage Object to be assigned
    def three_d_secure_usage=(three_d_secure_usage : Stripe::PaymentMethodCardThreeDSecureUsage?)
      if three_d_secure_usage.nil?
        return @three_d_secure_usage = nil
      end
      _three_d_secure_usage = three_d_secure_usage.not_nil!
      _three_d_secure_usage.validate if _three_d_secure_usage.is_a?(OpenApi::Validatable)
      @three_d_secure_usage = _three_d_secure_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet Object to be assigned
    def wallet=(wallet : Stripe::PaymentMethodCardWallet1?)
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
    def_equals_and_hash(@brand, @exp_month, @exp_year, @funding, @last4, @checks, @checks_present, @country, @country_present, @fingerprint, @fingerprint_present, @generated_from, @generated_from_present, @networks, @networks_present, @three_d_secure_usage, @three_d_secure_usage_present, @wallet, @wallet_present)
  end
end
