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
  class AddressSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "city", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter city : String? = nil
    MAX_LENGTH_FOR_CITY = 100

    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    @[JSON::Field(key: "line1", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter line1 : String? = nil
    MAX_LENGTH_FOR_LINE1 = 200

    @[JSON::Field(key: "line2", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter line2 : String? = nil
    MAX_LENGTH_FOR_LINE2 = 200

    @[JSON::Field(key: "postal_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter postal_code : String? = nil
    MAX_LENGTH_FOR_POSTAL_CODE = 5000

    @[JSON::Field(key: "state", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter state : String? = nil
    MAX_LENGTH_FOR_STATE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @city : String? = nil,
      @country : String? = nil,
      @line1 : String? = nil,
      @line2 : String? = nil,
      @postal_code : String? = nil,
      @state : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_city = @city).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("city", _city.to_s.size, MAX_LENGTH_FOR_CITY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_line1 = @line1).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("line1", _line1.to_s.size, MAX_LENGTH_FOR_LINE1)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_line2 = @line2).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("line2", _line2.to_s.size, MAX_LENGTH_FOR_LINE2)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_postal_code = @postal_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("postal_code", _postal_code.to_s.size, MAX_LENGTH_FOR_POSTAL_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_state = @state).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("state", _state.to_s.size, MAX_LENGTH_FOR_STATE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_city = @city).nil?
        return false if _city.to_s.size > MAX_LENGTH_FOR_CITY
      end

      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      unless (_line1 = @line1).nil?
        return false if _line1.to_s.size > MAX_LENGTH_FOR_LINE1
      end

      unless (_line2 = @line2).nil?
        return false if _line2.to_s.size > MAX_LENGTH_FOR_LINE2
      end

      unless (_postal_code = @postal_code).nil?
        return false if _postal_code.to_s.size > MAX_LENGTH_FOR_POSTAL_CODE
      end

      unless (_state = @state).nil?
        return false if _state.to_s.size > MAX_LENGTH_FOR_STATE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] city Object to be assigned
    def city=(city : String?)
      if city.nil?
        return @city = nil
      end
      _city = city.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("city", _city.to_s.size, MAX_LENGTH_FOR_CITY)
      @city = _city
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line1 Object to be assigned
    def line1=(line1 : String?)
      if line1.nil?
        return @line1 = nil
      end
      _line1 = line1.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("line1", _line1.to_s.size, MAX_LENGTH_FOR_LINE1)
      @line1 = _line1
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line2 Object to be assigned
    def line2=(line2 : String?)
      if line2.nil?
        return @line2 = nil
      end
      _line2 = line2.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("line2", _line2.to_s.size, MAX_LENGTH_FOR_LINE2)
      @line2 = _line2
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] postal_code Object to be assigned
    def postal_code=(postal_code : String?)
      if postal_code.nil?
        return @postal_code = nil
      end
      _postal_code = postal_code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("postal_code", _postal_code.to_s.size, MAX_LENGTH_FOR_POSTAL_CODE)
      @postal_code = _postal_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state : String?)
      if state.nil?
        return @state = nil
      end
      _state = state.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("state", _state.to_s.size, MAX_LENGTH_FOR_STATE)
      @state = _state
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@city, @country, @line1, @line2, @postal_code, @state)
  end
end
