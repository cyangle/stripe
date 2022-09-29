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

    # Required properties

    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    @[JSON::Field(key: "number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter number : String? = nil

    # Optional properties

    @[JSON::Field(key: "address_city", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_city : String? = nil

    @[JSON::Field(key: "address_country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_country : String? = nil

    @[JSON::Field(key: "address_line1", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_line1 : String? = nil

    @[JSON::Field(key: "address_line2", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_line2 : String? = nil

    @[JSON::Field(key: "address_state", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_state : String? = nil

    @[JSON::Field(key: "address_zip", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address_zip : String? = nil

    @[JSON::Field(key: "cvc", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cvc : String? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil

    @[JSON::Field(key: "object", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = OpenApi::EnumValidator.new("object", "String", ["card"])

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
      if _number = @number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("number", _number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _address_city = @address_city
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_city", _address_city.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _address_country = @address_country
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_country", _address_country.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _address_line1 = @address_line1
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_line1", _address_line1.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _address_line2 = @address_line2
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_line2", _address_line2.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _address_state = @address_state
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_state", _address_state.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _address_zip = @address_zip
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_zip", _address_zip.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _cvc = @cvc
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cvc", _cvc.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @exp_month.nil?

      return false if @exp_year.nil?

      return false if @number.nil?
      if _number = @number
        return false if _number.to_s.size > 5000
      end
      if _address_city = @address_city
        return false if _address_city.to_s.size > 5000
      end
      if _address_country = @address_country
        return false if _address_country.to_s.size > 5000
      end
      if _address_line1 = @address_line1
        return false if _address_line1.to_s.size > 5000
      end
      if _address_line2 = @address_line2
        return false if _address_line2.to_s.size > 5000
      end
      if _address_state = @address_state
        return false if _address_state.to_s.size > 5000
      end
      if _address_zip = @address_zip
        return false if _address_zip.to_s.size > 5000
      end
      if _cvc = @cvc
        return false if _cvc.to_s.size > 5000
      end

      if _name = @name
        return false if _name.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object)

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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("number", _number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @number = _number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_city Object to be assigned
    def address_city=(address_city : String?)
      if address_city.nil?
        return @address_city = nil
      end
      _address_city = address_city.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_city", _address_city.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @address_city = _address_city
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_country Object to be assigned
    def address_country=(address_country : String?)
      if address_country.nil?
        return @address_country = nil
      end
      _address_country = address_country.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_country", _address_country.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @address_country = _address_country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_line1 Object to be assigned
    def address_line1=(address_line1 : String?)
      if address_line1.nil?
        return @address_line1 = nil
      end
      _address_line1 = address_line1.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_line1", _address_line1.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @address_line1 = _address_line1
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_line2 Object to be assigned
    def address_line2=(address_line2 : String?)
      if address_line2.nil?
        return @address_line2 = nil
      end
      _address_line2 = address_line2.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_line2", _address_line2.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @address_line2 = _address_line2
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_state Object to be assigned
    def address_state=(address_state : String?)
      if address_state.nil?
        return @address_state = nil
      end
      _address_state = address_state.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_state", _address_state.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @address_state = _address_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_zip Object to be assigned
    def address_zip=(address_zip : String?)
      if address_zip.nil?
        return @address_zip = nil
      end
      _address_zip = address_zip.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address_zip", _address_zip.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @address_zip = _address_zip
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc Object to be assigned
    def cvc=(cvc : String?)
      if cvc.nil?
        return @cvc = nil
      end
      _cvc = cvc.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cvc", _cvc.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        return @object = nil
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@exp_month, @exp_year, @number, @address_city, @address_country, @address_line1, @address_line2, @address_state, @address_zip, @cvc, @metadata, @name, @object)
  end
end
