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
  class CustomerPaymentSourceCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    @[JSON::Field(key: "number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter number : String? = nil
    MAX_LENGTH_FOR_NUMBER = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "address_city", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_city : String? = nil
    MAX_LENGTH_FOR_ADDRESS_CITY = 5000

    @[JSON::Field(key: "address_country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_country : String? = nil
    MAX_LENGTH_FOR_ADDRESS_COUNTRY = 5000

    @[JSON::Field(key: "address_line1", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_line1 : String? = nil
    MAX_LENGTH_FOR_ADDRESS_LINE1 = 5000

    @[JSON::Field(key: "address_line2", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_line2 : String? = nil
    MAX_LENGTH_FOR_ADDRESS_LINE2 = 5000

    @[JSON::Field(key: "address_state", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_state : String? = nil
    MAX_LENGTH_FOR_ADDRESS_STATE = 5000

    @[JSON::Field(key: "address_zip", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_zip : String? = nil
    MAX_LENGTH_FOR_ADDRESS_ZIP = 5000

    @[JSON::Field(key: "cvc", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cvc : String? = nil
    MAX_LENGTH_FOR_CVC = 5000

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    @[JSON::Field(key: "object", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter object : String? = nil
    MAX_LENGTH_FOR_OBJECT    = 5000
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [card]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["card"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      @number : String? = nil,
      # Optional properties
      @address_city : String? = nil,
      @address_country : String? = nil,
      @address_line1 : String? = nil,
      @address_line2 : String? = nil,
      @address_state : String? = nil,
      @address_zip : String? = nil,
      @cvc : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @name : String? = nil,
      @object : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      invalid_properties.push("\"number\" is required and cannot be null") if @number.nil?

      unless (_number = @number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("number", _number.to_s.size, MAX_LENGTH_FOR_NUMBER)
          invalid_properties.push(max_length_error)
        end
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
      unless (_cvc = @cvc).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cvc", _cvc.to_s.size, MAX_LENGTH_FOR_CVC)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @exp_month.nil?

      return false if @exp_year.nil?

      return false if @number.nil?
      unless (_number = @number).nil?
        return false if _number.to_s.size > MAX_LENGTH_FOR_NUMBER
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

      unless (_cvc = @cvc).nil?
        return false if _cvc.to_s.size > MAX_LENGTH_FOR_CVC
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
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
    # @param [Object] number Object to be assigned
    def number=(number : String?)
      if number.nil?
        raise ArgumentError.new("\"number\" is required and cannot be null")
      end
      _number = number.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("number", _number.to_s.size, MAX_LENGTH_FOR_NUMBER)
      @number = _number
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
    # @param [Object] cvc Object to be assigned
    def cvc=(cvc : String?)
      if cvc.nil?
        return @cvc = nil
      end
      _cvc = cvc.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("cvc", _cvc.to_s.size, MAX_LENGTH_FOR_CVC)
      @cvc = _cvc
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        return @object = nil
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@exp_month, @exp_year, @number, @address_city, @address_country, @address_line1, @address_line2, @address_state, @address_zip, @cvc, @metadata, @name, @object)
  end
end
