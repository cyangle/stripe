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
  # Stripe needs to collect certain pieces of information about each account created. These requirements can differ depending on the account's country. The Country Specs API makes these rules available to your integration.  You can also view the information from this API call as [an online guide](/docs/connect/required-verification-information).
  class CountrySpec
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The default currency for this country. This applies to both payment methods and bank accounts.
    @[JSON::Field(key: "default_currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter default_currency : String? = nil

    # Unique identifier for the object. Represented as the ISO country code for this country.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["country_spec"])

    # Currencies that can be accepted in the specific country (for transfers).
    @[JSON::Field(key: "supported_bank_account_currencies", type: Hash(String, Array(String))?, default: nil, required: true, nullable: false, emit_null: false)]
    getter supported_bank_account_currencies : Hash(String, Array(String))? = nil

    # Currencies that can be accepted in the specified country (for payments).
    @[JSON::Field(key: "supported_payment_currencies", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter supported_payment_currencies : Array(String)? = nil

    # Payment methods available in the specified country. You may need to enable some payment methods (e.g., [ACH](https://stripe.com/docs/ach)) on your account before they appear in this list. The `stripe` payment method refers to [charging through your platform](https://stripe.com/docs/connect/destination-charges).
    @[JSON::Field(key: "supported_payment_methods", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter supported_payment_methods : Array(String)? = nil

    # Countries that can accept transfers from the specified country.
    @[JSON::Field(key: "supported_transfer_countries", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter supported_transfer_countries : Array(String)? = nil

    @[JSON::Field(key: "verification_fields", type: Stripe::CountrySpecVerificationFields?, default: nil, required: true, nullable: false, emit_null: false)]
    getter verification_fields : Stripe::CountrySpecVerificationFields? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @default_currency : String? = nil,
      @id : String? = nil,
      @object : String? = nil,
      @supported_bank_account_currencies : Hash(String, Array(String))? = nil,
      @supported_payment_currencies : Array(String)? = nil,
      @supported_payment_methods : Array(String)? = nil,
      @supported_transfer_countries : Array(String)? = nil,
      @verification_fields : Stripe::CountrySpecVerificationFields? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"default_currency\" is required and cannot be null") if @default_currency.nil?
      if _default_currency = @default_currency
        if _default_currency.to_s.size > 5000
          invalid_properties.push("invalid value for \"default_currency\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"supported_bank_account_currencies\" is required and cannot be null") if @supported_bank_account_currencies.nil?
      invalid_properties.push("\"supported_payment_currencies\" is required and cannot be null") if @supported_payment_currencies.nil?
      invalid_properties.push("\"supported_payment_methods\" is required and cannot be null") if @supported_payment_methods.nil?
      invalid_properties.push("\"supported_transfer_countries\" is required and cannot be null") if @supported_transfer_countries.nil?
      invalid_properties.push("\"verification_fields\" is required and cannot be null") if @verification_fields.nil?
      # This is a model verification_fields : Stripe::CountrySpecVerificationFields?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @default_currency.nil?
      if _default_currency = @default_currency
        return false if _default_currency.to_s.size > 5000
      end
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @supported_bank_account_currencies.nil?
      return false if @supported_payment_currencies.nil?
      return false if @supported_payment_methods.nil?
      return false if @supported_transfer_countries.nil?
      return false if @verification_fields.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_currency Object to be assigned
    def default_currency=(default_currency : String?)
      if default_currency.nil?
        raise ArgumentError.new("\"default_currency\" is required and cannot be null")
      end
      _default_currency = default_currency.not_nil!
      if _default_currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_currency\", the character length must be smaller than or equal to 5000.")
      end

      @default_currency = default_currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_bank_account_currencies Object to be assigned
    def supported_bank_account_currencies=(supported_bank_account_currencies : Hash(String, Array(String))?)
      if supported_bank_account_currencies.nil?
        raise ArgumentError.new("\"supported_bank_account_currencies\" is required and cannot be null")
      end
      @supported_bank_account_currencies = supported_bank_account_currencies
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_payment_currencies Object to be assigned
    def supported_payment_currencies=(supported_payment_currencies : Array(String)?)
      if supported_payment_currencies.nil?
        raise ArgumentError.new("\"supported_payment_currencies\" is required and cannot be null")
      end
      @supported_payment_currencies = supported_payment_currencies
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_payment_methods Object to be assigned
    def supported_payment_methods=(supported_payment_methods : Array(String)?)
      if supported_payment_methods.nil?
        raise ArgumentError.new("\"supported_payment_methods\" is required and cannot be null")
      end
      @supported_payment_methods = supported_payment_methods
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_transfer_countries Object to be assigned
    def supported_transfer_countries=(supported_transfer_countries : Array(String)?)
      if supported_transfer_countries.nil?
        raise ArgumentError.new("\"supported_transfer_countries\" is required and cannot be null")
      end
      @supported_transfer_countries = supported_transfer_countries
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_fields Object to be assigned
    def verification_fields=(verification_fields : Stripe::CountrySpecVerificationFields?)
      if verification_fields.nil?
        raise ArgumentError.new("\"verification_fields\" is required and cannot be null")
      end
      @verification_fields = verification_fields
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
    def_equals_and_hash(@default_currency, @id, @object, @supported_bank_account_currencies, @supported_payment_currencies, @supported_payment_methods, @supported_transfer_countries, @verification_fields)
  end
end
