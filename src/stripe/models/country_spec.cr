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
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The default currency for this country. This applies to both payment methods and bank accounts.
    @[JSON::Field(key: "default_currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter default_currency : String? = nil
    MAX_LENGTH_FOR_DEFAULT_CURRENCY = 5000

    # Unique identifier for the object. Represented as the ISO country code for this country.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [country_spec]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["country_spec"]

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

    # End of Required Properties

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"default_currency\" is required and cannot be null") if @default_currency.nil?

      unless (_default_currency = @default_currency).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_currency", _default_currency.to_s.size, MAX_LENGTH_FOR_DEFAULT_CURRENCY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"supported_bank_account_currencies\" is required and cannot be null") if @supported_bank_account_currencies.nil?

      invalid_properties.push("\"supported_payment_currencies\" is required and cannot be null") if @supported_payment_currencies.nil?

      invalid_properties.push("\"supported_payment_methods\" is required and cannot be null") if @supported_payment_methods.nil?

      invalid_properties.push("\"supported_transfer_countries\" is required and cannot be null") if @supported_transfer_countries.nil?

      invalid_properties.push("\"verification_fields\" is required and cannot be null") if @verification_fields.nil?

      unless (_verification_fields = @verification_fields).nil?
        invalid_properties.concat(_verification_fields.list_invalid_properties_for("verification_fields")) if _verification_fields.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @default_currency.nil?
      unless (_default_currency = @default_currency).nil?
        return false if _default_currency.to_s.size > MAX_LENGTH_FOR_DEFAULT_CURRENCY
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @supported_bank_account_currencies.nil?

      return false if @supported_payment_currencies.nil?

      return false if @supported_payment_methods.nil?

      return false if @supported_transfer_countries.nil?

      return false if @verification_fields.nil?
      unless (_verification_fields = @verification_fields).nil?
        return false if _verification_fields.is_a?(OpenApi::Validatable) && !_verification_fields.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_currency Object to be assigned
    def default_currency=(default_currency : String?)
      if default_currency.nil?
        raise ArgumentError.new("\"default_currency\" is required and cannot be null")
      end
      _default_currency = default_currency.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_currency", _default_currency.to_s.size, MAX_LENGTH_FOR_DEFAULT_CURRENCY)
      @default_currency = _default_currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_bank_account_currencies Object to be assigned
    def supported_bank_account_currencies=(supported_bank_account_currencies : Hash(String, Array(String))?)
      if supported_bank_account_currencies.nil?
        raise ArgumentError.new("\"supported_bank_account_currencies\" is required and cannot be null")
      end
      _supported_bank_account_currencies = supported_bank_account_currencies.not_nil!
      @supported_bank_account_currencies = _supported_bank_account_currencies
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_payment_currencies Object to be assigned
    def supported_payment_currencies=(supported_payment_currencies : Array(String)?)
      if supported_payment_currencies.nil?
        raise ArgumentError.new("\"supported_payment_currencies\" is required and cannot be null")
      end
      _supported_payment_currencies = supported_payment_currencies.not_nil!
      @supported_payment_currencies = _supported_payment_currencies
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_payment_methods Object to be assigned
    def supported_payment_methods=(supported_payment_methods : Array(String)?)
      if supported_payment_methods.nil?
        raise ArgumentError.new("\"supported_payment_methods\" is required and cannot be null")
      end
      _supported_payment_methods = supported_payment_methods.not_nil!
      @supported_payment_methods = _supported_payment_methods
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_transfer_countries Object to be assigned
    def supported_transfer_countries=(supported_transfer_countries : Array(String)?)
      if supported_transfer_countries.nil?
        raise ArgumentError.new("\"supported_transfer_countries\" is required and cannot be null")
      end
      _supported_transfer_countries = supported_transfer_countries.not_nil!
      @supported_transfer_countries = _supported_transfer_countries
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_fields Object to be assigned
    def verification_fields=(verification_fields : Stripe::CountrySpecVerificationFields?)
      if verification_fields.nil?
        raise ArgumentError.new("\"verification_fields\" is required and cannot be null")
      end
      _verification_fields = verification_fields.not_nil!
      _verification_fields.validate if _verification_fields.is_a?(OpenApi::Validatable)
      @verification_fields = _verification_fields
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@default_currency, @id, @object, @supported_bank_account_currencies, @supported_payment_currencies, @supported_payment_methods, @supported_transfer_countries, @verification_fields)
  end
end
