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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostAccountBankAccountsIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The name of the person or business that owns the bank account.
    @[JSON::Field(key: "account_holder_name", type: String?, presence: true, ignore_serialize: account_holder_name.nil? && !account_holder_name_present?)]
    getter account_holder_name : String?

    @[JSON::Field(ignore: true)]
    property? account_holder_name_present : Bool = false

    # The type of entity that holds the account. This can be either `individual` or `company`.
    @[JSON::Field(key: "account_holder_type", type: String?, presence: true, ignore_serialize: account_holder_type.nil? && !account_holder_type_present?)]
    getter account_holder_type : String?

    @[JSON::Field(ignore: true)]
    property? account_holder_type_present : Bool = false

    ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE = EnumValidator.new("account_holder_type", "String", ["", "company", "individual"])

    # The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
    @[JSON::Field(key: "account_type", type: String?, presence: true, ignore_serialize: account_type.nil? && !account_type_present?)]
    getter account_type : String?

    @[JSON::Field(ignore: true)]
    property? account_type_present : Bool = false

    ENUM_VALIDATOR_FOR_ACCOUNT_TYPE = EnumValidator.new("account_type", "String", ["checking", "futsu", "savings", "toza"])

    # City/District/Suburb/Town/Village.
    @[JSON::Field(key: "address_city", type: String?, presence: true, ignore_serialize: address_city.nil? && !address_city_present?)]
    getter address_city : String?

    @[JSON::Field(ignore: true)]
    property? address_city_present : Bool = false

    # Billing address country, if provided when creating card.
    @[JSON::Field(key: "address_country", type: String?, presence: true, ignore_serialize: address_country.nil? && !address_country_present?)]
    getter address_country : String?

    @[JSON::Field(ignore: true)]
    property? address_country_present : Bool = false

    # Address line 1 (Street address/PO Box/Company name).
    @[JSON::Field(key: "address_line1", type: String?, presence: true, ignore_serialize: address_line1.nil? && !address_line1_present?)]
    getter address_line1 : String?

    @[JSON::Field(ignore: true)]
    property? address_line1_present : Bool = false

    # Address line 2 (Apartment/Suite/Unit/Building).
    @[JSON::Field(key: "address_line2", type: String?, presence: true, ignore_serialize: address_line2.nil? && !address_line2_present?)]
    getter address_line2 : String?

    @[JSON::Field(ignore: true)]
    property? address_line2_present : Bool = false

    # State/County/Province/Region.
    @[JSON::Field(key: "address_state", type: String?, presence: true, ignore_serialize: address_state.nil? && !address_state_present?)]
    getter address_state : String?

    @[JSON::Field(ignore: true)]
    property? address_state_present : Bool = false

    # ZIP or postal code.
    @[JSON::Field(key: "address_zip", type: String?, presence: true, ignore_serialize: address_zip.nil? && !address_zip_present?)]
    getter address_zip : String?

    @[JSON::Field(ignore: true)]
    property? address_zip_present : Bool = false

    # When set to true, this becomes the default external account for its currency.
    @[JSON::Field(key: "default_for_currency", type: Bool?, presence: true, ignore_serialize: default_for_currency.nil? && !default_for_currency_present?)]
    property default_for_currency : Bool?

    @[JSON::Field(ignore: true)]
    property? default_for_currency_present : Bool = false

    # Two digit number representing the card’s expiration month.
    @[JSON::Field(key: "exp_month", type: String?, presence: true, ignore_serialize: exp_month.nil? && !exp_month_present?)]
    getter exp_month : String?

    @[JSON::Field(ignore: true)]
    property? exp_month_present : Bool = false

    # Four digit number representing the card’s expiration year.
    @[JSON::Field(key: "exp_year", type: String?, presence: true, ignore_serialize: exp_year.nil? && !exp_year_present?)]
    getter exp_year : String?

    @[JSON::Field(ignore: true)]
    property? exp_year_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Cardholder name.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_holder_name : String? = nil,
      @account_holder_type : String? = nil,
      @account_type : String? = nil,
      @address_city : String? = nil,
      @address_country : String? = nil,
      @address_line1 : String? = nil,
      @address_line2 : String? = nil,
      @address_state : String? = nil,
      @address_zip : String? = nil,
      @default_for_currency : Bool? = nil,
      @exp_month : String? = nil,
      @exp_year : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@account_holder_name.nil? && @account_holder_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE.error_message) unless ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE.valid?(@account_holder_type)

      if !@account_holder_type.nil? && @account_holder_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_holder_type\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.error_message) unless ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.valid?(@account_type)

      if !@account_type.nil? && @account_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_type\", the character length must be smaller than or equal to 5000.")
      end

      if !@address_city.nil? && @address_city.to_s.size > 5000
        invalid_properties.push("invalid value for \"address_city\", the character length must be smaller than or equal to 5000.")
      end

      if !@address_country.nil? && @address_country.to_s.size > 5000
        invalid_properties.push("invalid value for \"address_country\", the character length must be smaller than or equal to 5000.")
      end

      if !@address_line1.nil? && @address_line1.to_s.size > 5000
        invalid_properties.push("invalid value for \"address_line1\", the character length must be smaller than or equal to 5000.")
      end

      if !@address_line2.nil? && @address_line2.to_s.size > 5000
        invalid_properties.push("invalid value for \"address_line2\", the character length must be smaller than or equal to 5000.")
      end

      if !@address_state.nil? && @address_state.to_s.size > 5000
        invalid_properties.push("invalid value for \"address_state\", the character length must be smaller than or equal to 5000.")
      end

      if !@address_zip.nil? && @address_zip.to_s.size > 5000
        invalid_properties.push("invalid value for \"address_zip\", the character length must be smaller than or equal to 5000.")
      end

      if !@exp_month.nil? && @exp_month.to_s.size > 5000
        invalid_properties.push("invalid value for \"exp_month\", the character length must be smaller than or equal to 5000.")
      end

      if !@exp_year.nil? && @exp_year.to_s.size > 5000
        invalid_properties.push("invalid value for \"exp_year\", the character length must be smaller than or equal to 5000.")
      end

      if !@name.nil? && @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_holder_name.nil? && @account_holder_name.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE.valid?(@account_holder_type)
      return false if !@account_holder_type.nil? && @account_holder_type.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.valid?(@account_type)
      return false if !@account_type.nil? && @account_type.to_s.size > 5000
      return false if !@address_city.nil? && @address_city.to_s.size > 5000
      return false if !@address_country.nil? && @address_country.to_s.size > 5000
      return false if !@address_line1.nil? && @address_line1.to_s.size > 5000
      return false if !@address_line2.nil? && @address_line2.to_s.size > 5000
      return false if !@address_state.nil? && @address_state.to_s.size > 5000
      return false if !@address_zip.nil? && @address_zip.to_s.size > 5000
      return false if !@exp_month.nil? && @exp_month.to_s.size > 5000
      return false if !@exp_year.nil? && @exp_year.to_s.size > 5000
      return false if !@name.nil? && @name.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_holder_name Value to be assigned
    def account_holder_name=(account_holder_name)
      if !account_holder_name.nil? && account_holder_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      @account_holder_name = account_holder_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_type Object to be assigned
    def account_holder_type=(account_holder_type)
      ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE.valid!(account_holder_type)
      @account_holder_type = account_holder_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type)
      ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.valid!(account_type)
      @account_type = account_type
    end

    # Custom attribute writer method with validation
    # @param [Object] address_city Value to be assigned
    def address_city=(address_city)
      if !address_city.nil? && address_city.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"address_city\", the character length must be smaller than or equal to 5000.")
      end

      @address_city = address_city
    end

    # Custom attribute writer method with validation
    # @param [Object] address_country Value to be assigned
    def address_country=(address_country)
      if !address_country.nil? && address_country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"address_country\", the character length must be smaller than or equal to 5000.")
      end

      @address_country = address_country
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line1 Value to be assigned
    def address_line1=(address_line1)
      if !address_line1.nil? && address_line1.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"address_line1\", the character length must be smaller than or equal to 5000.")
      end

      @address_line1 = address_line1
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line2 Value to be assigned
    def address_line2=(address_line2)
      if !address_line2.nil? && address_line2.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"address_line2\", the character length must be smaller than or equal to 5000.")
      end

      @address_line2 = address_line2
    end

    # Custom attribute writer method with validation
    # @param [Object] address_state Value to be assigned
    def address_state=(address_state)
      if !address_state.nil? && address_state.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"address_state\", the character length must be smaller than or equal to 5000.")
      end

      @address_state = address_state
    end

    # Custom attribute writer method with validation
    # @param [Object] address_zip Value to be assigned
    def address_zip=(address_zip)
      if !address_zip.nil? && address_zip.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"address_zip\", the character length must be smaller than or equal to 5000.")
      end

      @address_zip = address_zip
    end

    # Custom attribute writer method with validation
    # @param [Object] exp_month Value to be assigned
    def exp_month=(exp_month)
      if !exp_month.nil? && exp_month.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"exp_month\", the character length must be smaller than or equal to 5000.")
      end

      @exp_month = exp_month
    end

    # Custom attribute writer method with validation
    # @param [Object] exp_year Value to be assigned
    def exp_year=(exp_year)
      if !exp_year.nil? && exp_year.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"exp_year\", the character length must be smaller than or equal to 5000.")
      end

      @exp_year = exp_year
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
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
    def_equals_and_hash(@account_holder_name, @account_holder_type, @account_type, @address_city, @address_country, @address_line1, @address_line2, @address_state, @address_zip, @default_for_currency, @exp_month, @exp_year, @expand, @metadata, @name)
  end
end
