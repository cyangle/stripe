#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class RequiredAddress
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # City, district, suburb, town, or village.
    @[JSON::Field(key: "city", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter city : String? = nil
    MAX_LENGTH_FOR_CITY = 5000

    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # Address line 1 (e.g., street, PO Box, or company name).
    @[JSON::Field(key: "line1", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter line1 : String? = nil
    MAX_LENGTH_FOR_LINE1 = 5000

    # ZIP or postal code.
    @[JSON::Field(key: "postal_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter postal_code : String? = nil
    MAX_LENGTH_FOR_POSTAL_CODE = 5000

    # End of Required Properties

    # Optional Properties

    # Address line 2 (e.g., apartment, suite, unit, or building).
    @[JSON::Field(key: "line2", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter line2 : String? = nil
    MAX_LENGTH_FOR_LINE2 = 5000

    # State, county, province, or region.
    @[JSON::Field(key: "state", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter state : String? = nil
    MAX_LENGTH_FOR_STATE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @city : String? = nil,
      @country : String? = nil,
      @line1 : String? = nil,
      @postal_code : String? = nil,
      # Optional properties
      @line2 : String? = nil,
      @state : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"city\" is required and cannot be null") if @city.nil?

      unless (_city = @city).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("city", _city.to_s.size, MAX_LENGTH_FOR_CITY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"line1\" is required and cannot be null") if @line1.nil?

      unless (_line1 = @line1).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("line1", _line1.to_s.size, MAX_LENGTH_FOR_LINE1)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"postal_code\" is required and cannot be null") if @postal_code.nil?

      unless (_postal_code = @postal_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("postal_code", _postal_code.to_s.size, MAX_LENGTH_FOR_POSTAL_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_line2 = @line2).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("line2", _line2.to_s.size, MAX_LENGTH_FOR_LINE2)
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
      return false if @city.nil?
      unless (_city = @city).nil?
        return false if _city.to_s.size > MAX_LENGTH_FOR_CITY
      end

      return false if @country.nil?
      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      return false if @line1.nil?
      unless (_line1 = @line1).nil?
        return false if _line1.to_s.size > MAX_LENGTH_FOR_LINE1
      end

      return false if @postal_code.nil?
      unless (_postal_code = @postal_code).nil?
        return false if _postal_code.to_s.size > MAX_LENGTH_FOR_POSTAL_CODE
      end

      unless (_line2 = @line2).nil?
        return false if _line2.to_s.size > MAX_LENGTH_FOR_LINE2
      end

      unless (_state = @state).nil?
        return false if _state.to_s.size > MAX_LENGTH_FOR_STATE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] city Object to be assigned
    def city=(new_value : String?)
      raise ArgumentError.new("\"city\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("city", new_value.to_s.size, MAX_LENGTH_FOR_CITY)
      end

      @city = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      raise ArgumentError.new("\"country\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("country", new_value.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      end

      @country = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line1 Object to be assigned
    def line1=(new_value : String?)
      raise ArgumentError.new("\"line1\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("line1", new_value.to_s.size, MAX_LENGTH_FOR_LINE1)
      end

      @line1 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] postal_code Object to be assigned
    def postal_code=(new_value : String?)
      raise ArgumentError.new("\"postal_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("postal_code", new_value.to_s.size, MAX_LENGTH_FOR_POSTAL_CODE)
      end

      @postal_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line2 Object to be assigned
    def line2=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("line2", new_value.to_s.size, MAX_LENGTH_FOR_LINE2)
      end

      @line2 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("state", new_value.to_s.size, MAX_LENGTH_FOR_STATE)
      end

      @state = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@city, @country, @line1, @postal_code, @line2, @state)
  end
end
