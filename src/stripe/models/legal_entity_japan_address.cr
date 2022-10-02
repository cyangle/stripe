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
  class LegalEntityJapanAddress
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # City/Ward.
    @[JSON::Field(key: "city", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: city.nil? && !city_present?)]
    getter city : String? = nil
    MAX_LENGTH_FOR_CITY = 5000

    @[JSON::Field(ignore: true)]
    property? city_present : Bool = false

    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    # Block/Building number.
    @[JSON::Field(key: "line1", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: line1.nil? && !line1_present?)]
    getter line1 : String? = nil
    MAX_LENGTH_FOR_LINE1 = 5000

    @[JSON::Field(ignore: true)]
    property? line1_present : Bool = false

    # Building details.
    @[JSON::Field(key: "line2", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: line2.nil? && !line2_present?)]
    getter line2 : String? = nil
    MAX_LENGTH_FOR_LINE2 = 5000

    @[JSON::Field(ignore: true)]
    property? line2_present : Bool = false

    # ZIP or postal code.
    @[JSON::Field(key: "postal_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: postal_code.nil? && !postal_code_present?)]
    getter postal_code : String? = nil
    MAX_LENGTH_FOR_POSTAL_CODE = 5000

    @[JSON::Field(ignore: true)]
    property? postal_code_present : Bool = false

    # Prefecture.
    @[JSON::Field(key: "state", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: state.nil? && !state_present?)]
    getter state : String? = nil
    MAX_LENGTH_FOR_STATE = 5000

    @[JSON::Field(ignore: true)]
    property? state_present : Bool = false

    # Town/cho-me.
    @[JSON::Field(key: "town", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: town.nil? && !town_present?)]
    getter town : String? = nil
    MAX_LENGTH_FOR_TOWN = 5000

    @[JSON::Field(ignore: true)]
    property? town_present : Bool = false

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
      @state : String? = nil,
      @town : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _city = @city
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("city", _city.to_s.size, MAX_LENGTH_FOR_CITY)
          invalid_properties.push(max_length_error)
        end
      end
      if _country = @country
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      if _line1 = @line1
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("line1", _line1.to_s.size, MAX_LENGTH_FOR_LINE1)
          invalid_properties.push(max_length_error)
        end
      end
      if _line2 = @line2
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("line2", _line2.to_s.size, MAX_LENGTH_FOR_LINE2)
          invalid_properties.push(max_length_error)
        end
      end
      if _postal_code = @postal_code
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("postal_code", _postal_code.to_s.size, MAX_LENGTH_FOR_POSTAL_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      if _state = @state
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("state", _state.to_s.size, MAX_LENGTH_FOR_STATE)
          invalid_properties.push(max_length_error)
        end
      end
      if _town = @town
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("town", _town.to_s.size, MAX_LENGTH_FOR_TOWN)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _city = @city
        return false if _city.to_s.size > MAX_LENGTH_FOR_CITY
      end

      if _country = @country
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      if _line1 = @line1
        return false if _line1.to_s.size > MAX_LENGTH_FOR_LINE1
      end

      if _line2 = @line2
        return false if _line2.to_s.size > MAX_LENGTH_FOR_LINE2
      end

      if _postal_code = @postal_code
        return false if _postal_code.to_s.size > MAX_LENGTH_FOR_POSTAL_CODE
      end

      if _state = @state
        return false if _state.to_s.size > MAX_LENGTH_FOR_STATE
      end

      if _town = @town
        return false if _town.to_s.size > MAX_LENGTH_FOR_TOWN
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] town Object to be assigned
    def town=(town : String?)
      if town.nil?
        return @town = nil
      end
      _town = town.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("town", _town.to_s.size, MAX_LENGTH_FOR_TOWN)
      @town = _town
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@city, @city_present, @country, @country_present, @line1, @line1_present, @line2, @line2_present, @postal_code, @postal_code_present, @state, @state_present, @town, @town_present)
  end
end
