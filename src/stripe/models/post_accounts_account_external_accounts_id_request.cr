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
  class PostAccountsAccountExternalAccountsIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The name of the person or business that owns the bank account.
    @[JSON::Field(key: "account_holder_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_holder_name : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME = 5000

    # The type of entity that holds the account. This can be either `individual` or `company`.
    @[JSON::Field(key: "account_holder_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_holder_type : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_HOLDER_TYPE    = 5000
    ERROR_MESSAGE_FOR_ACCOUNT_HOLDER_TYPE = "invalid value for \"account_holder_type\", must be one of [, company, individual]."
    VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE  = String.static_array("", "company", "individual")

    # The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
    @[JSON::Field(key: "account_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_type : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_TYPE    = 5000
    ERROR_MESSAGE_FOR_ACCOUNT_TYPE = "invalid value for \"account_type\", must be one of [checking, futsu, savings, toza]."
    VALID_VALUES_FOR_ACCOUNT_TYPE  = String.static_array("checking", "futsu", "savings", "toza")

    # City/District/Suburb/Town/Village.
    @[JSON::Field(key: "address_city", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_city : String? = nil
    MAX_LENGTH_FOR_ADDRESS_CITY = 5000

    # Billing address country, if provided when creating card.
    @[JSON::Field(key: "address_country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_country : String? = nil
    MAX_LENGTH_FOR_ADDRESS_COUNTRY = 5000

    # Address line 1 (Street address/PO Box/Company name).
    @[JSON::Field(key: "address_line1", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_line1 : String? = nil
    MAX_LENGTH_FOR_ADDRESS_LINE1 = 5000

    # Address line 2 (Apartment/Suite/Unit/Building).
    @[JSON::Field(key: "address_line2", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_line2 : String? = nil
    MAX_LENGTH_FOR_ADDRESS_LINE2 = 5000

    # State/County/Province/Region.
    @[JSON::Field(key: "address_state", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_state : String? = nil
    MAX_LENGTH_FOR_ADDRESS_STATE = 5000

    # ZIP or postal code.
    @[JSON::Field(key: "address_zip", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_zip : String? = nil
    MAX_LENGTH_FOR_ADDRESS_ZIP = 5000

    # When set to true, this becomes the default external account for its currency.
    @[JSON::Field(key: "default_for_currency", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_for_currency : Bool? = nil

    # Two digit number representing the card’s expiration month.
    @[JSON::Field(key: "exp_month", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter exp_month : String? = nil
    MAX_LENGTH_FOR_EXP_MONTH = 5000

    # Four digit number representing the card’s expiration year.
    @[JSON::Field(key: "exp_year", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter exp_year : String? = nil
    MAX_LENGTH_FOR_EXP_YEAR = 5000

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    # Cardholder name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

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
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_holder_name = @account_holder_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_holder_name", _account_holder_name.to_s.size, MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_account_holder_type = @account_holder_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ACCOUNT_HOLDER_TYPE) unless OpenApi::EnumValidator.valid?(_account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      end
      unless (_account_type = @account_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ACCOUNT_TYPE) unless OpenApi::EnumValidator.valid?(_account_type, VALID_VALUES_FOR_ACCOUNT_TYPE)
      end
      unless (_address_city = @address_city).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_city", _address_city.to_s.size, MAX_LENGTH_FOR_ADDRESS_CITY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_country = @address_country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_country", _address_country.to_s.size, MAX_LENGTH_FOR_ADDRESS_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_line1 = @address_line1).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_line1", _address_line1.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE1)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_line2 = @address_line2).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_line2", _address_line2.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE2)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_state = @address_state).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_state", _address_state.to_s.size, MAX_LENGTH_FOR_ADDRESS_STATE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address_zip = @address_zip).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_zip", _address_zip.to_s.size, MAX_LENGTH_FOR_ADDRESS_ZIP)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_exp_month = @exp_month).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("exp_month", _exp_month.to_s.size, MAX_LENGTH_FOR_EXP_MONTH)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_exp_year = @exp_year).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("exp_year", _exp_year.to_s.size, MAX_LENGTH_FOR_EXP_YEAR)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_holder_name = @account_holder_name).nil?
        return false if _account_holder_name.to_s.size > MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME
      end

      unless (_account_holder_type = @account_holder_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      end

      unless (_account_type = @account_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_account_type, VALID_VALUES_FOR_ACCOUNT_TYPE)
      end

      unless (_address_city = @address_city).nil?
        return false if _address_city.to_s.size > MAX_LENGTH_FOR_ADDRESS_CITY
      end

      unless (_address_country = @address_country).nil?
        return false if _address_country.to_s.size > MAX_LENGTH_FOR_ADDRESS_COUNTRY
      end

      unless (_address_line1 = @address_line1).nil?
        return false if _address_line1.to_s.size > MAX_LENGTH_FOR_ADDRESS_LINE1
      end

      unless (_address_line2 = @address_line2).nil?
        return false if _address_line2.to_s.size > MAX_LENGTH_FOR_ADDRESS_LINE2
      end

      unless (_address_state = @address_state).nil?
        return false if _address_state.to_s.size > MAX_LENGTH_FOR_ADDRESS_STATE
      end

      unless (_address_zip = @address_zip).nil?
        return false if _address_zip.to_s.size > MAX_LENGTH_FOR_ADDRESS_ZIP
      end

      unless (_exp_month = @exp_month).nil?
        return false if _exp_month.to_s.size > MAX_LENGTH_FOR_EXP_MONTH
      end

      unless (_exp_year = @exp_year).nil?
        return false if _exp_year.to_s.size > MAX_LENGTH_FOR_EXP_YEAR
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_name Object to be assigned
    def account_holder_name=(account_holder_name : String?)
      if account_holder_name.nil?
        return @account_holder_name = nil
      end
      _account_holder_name = account_holder_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("account_holder_name", _account_holder_name.to_s.size, MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME)
      @account_holder_name = _account_holder_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_type Object to be assigned
    def account_holder_type=(account_holder_type : String?)
      if account_holder_type.nil?
        return @account_holder_type = nil
      end
      _account_holder_type = account_holder_type.not_nil!
      OpenApi::EnumValidator.validate("account_holder_type", _account_holder_type, VALID_VALUES_FOR_ACCOUNT_HOLDER_TYPE)
      @account_holder_type = _account_holder_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type : String?)
      if account_type.nil?
        return @account_type = nil
      end
      _account_type = account_type.not_nil!
      OpenApi::EnumValidator.validate("account_type", _account_type, VALID_VALUES_FOR_ACCOUNT_TYPE)
      @account_type = _account_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_city Object to be assigned
    def address_city=(address_city : String?)
      if address_city.nil?
        return @address_city = nil
      end
      _address_city = address_city.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("address_city", _address_city.to_s.size, MAX_LENGTH_FOR_ADDRESS_CITY)
      @address_city = _address_city
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_country Object to be assigned
    def address_country=(address_country : String?)
      if address_country.nil?
        return @address_country = nil
      end
      _address_country = address_country.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("address_country", _address_country.to_s.size, MAX_LENGTH_FOR_ADDRESS_COUNTRY)
      @address_country = _address_country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_line1 Object to be assigned
    def address_line1=(address_line1 : String?)
      if address_line1.nil?
        return @address_line1 = nil
      end
      _address_line1 = address_line1.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("address_line1", _address_line1.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE1)
      @address_line1 = _address_line1
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_line2 Object to be assigned
    def address_line2=(address_line2 : String?)
      if address_line2.nil?
        return @address_line2 = nil
      end
      _address_line2 = address_line2.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("address_line2", _address_line2.to_s.size, MAX_LENGTH_FOR_ADDRESS_LINE2)
      @address_line2 = _address_line2
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_state Object to be assigned
    def address_state=(address_state : String?)
      if address_state.nil?
        return @address_state = nil
      end
      _address_state = address_state.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("address_state", _address_state.to_s.size, MAX_LENGTH_FOR_ADDRESS_STATE)
      @address_state = _address_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_zip Object to be assigned
    def address_zip=(address_zip : String?)
      if address_zip.nil?
        return @address_zip = nil
      end
      _address_zip = address_zip.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("address_zip", _address_zip.to_s.size, MAX_LENGTH_FOR_ADDRESS_ZIP)
      @address_zip = _address_zip
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_for_currency Object to be assigned
    def default_for_currency=(default_for_currency : Bool?)
      if default_for_currency.nil?
        return @default_for_currency = nil
      end
      _default_for_currency = default_for_currency.not_nil!
      @default_for_currency = _default_for_currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_month Object to be assigned
    def exp_month=(exp_month : String?)
      if exp_month.nil?
        return @exp_month = nil
      end
      _exp_month = exp_month.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("exp_month", _exp_month.to_s.size, MAX_LENGTH_FOR_EXP_MONTH)
      @exp_month = _exp_month
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_year Object to be assigned
    def exp_year=(exp_year : String?)
      if exp_year.nil?
        return @exp_year = nil
      end
      _exp_year = exp_year.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("exp_year", _exp_year.to_s.size, MAX_LENGTH_FOR_EXP_YEAR)
      @exp_year = _exp_year
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountsRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
      @name = _name
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_holder_name, @account_holder_type, @account_type, @address_city, @address_country, @address_line1, @address_line2, @address_state, @address_zip, @default_for_currency, @exp_month, @exp_year, @expand, @metadata, @name)
  end
end