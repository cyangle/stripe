#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
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

    # Required Properties

    # Card brand. Can be `amex`, `diners`, `discover`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter brand : String? = nil
    MAX_LENGTH_FOR_BRAND = 5000

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    @[JSON::Field(key: "funding", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter funding : String? = nil
    MAX_LENGTH_FOR_FUNDING = 5000

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "checks", type: Stripe::PaymentMethodCardChecks1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: checks.nil? && !checks_present?)]
    getter checks : Stripe::PaymentMethodCardChecks1? = nil

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

      unless (_brand = @brand).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("brand", _brand.to_s.size, MAX_LENGTH_FOR_BRAND)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      invalid_properties.push("\"funding\" is required and cannot be null") if @funding.nil?

      unless (_funding = @funding).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("funding", _funding.to_s.size, MAX_LENGTH_FOR_FUNDING)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"last4\" is required and cannot be null") if @last4.nil?

      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
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
      unless (_generated_from = @generated_from).nil?
        invalid_properties.concat(_generated_from.list_invalid_properties_for("generated_from")) if _generated_from.is_a?(OpenApi::Validatable)
      end
      unless (_networks = @networks).nil?
        invalid_properties.concat(_networks.list_invalid_properties_for("networks")) if _networks.is_a?(OpenApi::Validatable)
      end
      unless (_three_d_secure_usage = @three_d_secure_usage).nil?
        invalid_properties.concat(_three_d_secure_usage.list_invalid_properties_for("three_d_secure_usage")) if _three_d_secure_usage.is_a?(OpenApi::Validatable)
      end
      unless (_wallet = @wallet).nil?
        invalid_properties.concat(_wallet.list_invalid_properties_for("wallet")) if _wallet.is_a?(OpenApi::Validatable)
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

      return false if @exp_month.nil?

      return false if @exp_year.nil?

      return false if @funding.nil?
      unless (_funding = @funding).nil?
        return false if _funding.to_s.size > MAX_LENGTH_FOR_FUNDING
      end

      return false if @last4.nil?
      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
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

      unless (_generated_from = @generated_from).nil?
        return false if _generated_from.is_a?(OpenApi::Validatable) && !_generated_from.valid?
      end

      unless (_networks = @networks).nil?
        return false if _networks.is_a?(OpenApi::Validatable) && !_networks.valid?
      end

      unless (_three_d_secure_usage = @three_d_secure_usage).nil?
        return false if _three_d_secure_usage.is_a?(OpenApi::Validatable) && !_three_d_secure_usage.valid?
      end

      unless (_wallet = @wallet).nil?
        return false if _wallet.is_a?(OpenApi::Validatable) && !_wallet.valid?
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
    # @param [Object] funding Object to be assigned
    def funding=(new_value : String?)
      raise ArgumentError.new("\"funding\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("funding", new_value.to_s.size, MAX_LENGTH_FOR_FUNDING)
      end

      @funding = new_value
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
    # @param [Object] checks Object to be assigned
    def checks=(new_value : Stripe::PaymentMethodCardChecks1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @checks = new_value
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
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("fingerprint", new_value.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
      end

      @fingerprint = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_from Object to be assigned
    def generated_from=(new_value : Stripe::PaymentMethodCardGeneratedFrom?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @generated_from = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] networks Object to be assigned
    def networks=(new_value : Stripe::PaymentMethodCardNetworks?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @networks = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] three_d_secure_usage Object to be assigned
    def three_d_secure_usage=(new_value : Stripe::PaymentMethodCardThreeDSecureUsage?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @three_d_secure_usage = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet Object to be assigned
    def wallet=(new_value : Stripe::PaymentMethodCardWallet1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @wallet = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@brand, @exp_month, @exp_year, @funding, @last4, @checks, @checks_present, @country, @country_present, @fingerprint, @fingerprint_present, @generated_from, @generated_from_present, @networks, @networks_present, @three_d_secure_usage, @three_d_secure_usage_present, @wallet, @wallet_present)
  end
end
