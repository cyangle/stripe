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
  #
  class ClimateRemovalsLocation
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The city where the supplier is located.
    @[JSON::Field(key: "city", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter city : String? = nil
    MAX_LENGTH_FOR_CITY = 5000

    # Two-letter ISO code representing the country where the supplier is located.
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # The geographic latitude where the supplier is located.
    @[JSON::Field(key: "latitude", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter latitude : Float64? = nil

    # The geographic longitude where the supplier is located.
    @[JSON::Field(key: "longitude", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter longitude : Float64? = nil

    # The state/county/province/region where the supplier is located.
    @[JSON::Field(key: "region", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter region : String? = nil
    MAX_LENGTH_FOR_REGION = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @city : String? = nil,
      @country : String? = nil,
      @latitude : Float64? = nil,
      @longitude : Float64? = nil,
      @region : String? = nil
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
      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_region = @region).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("region", _region.to_s.size, MAX_LENGTH_FOR_REGION)
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

      return false if @country.nil?
      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      unless (_region = @region).nil?
        return false if _region.to_s.size > MAX_LENGTH_FOR_REGION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] city Object to be assigned
    def city=(new_value : String?)
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
    # @param [Object] latitude Object to be assigned
    def latitude=(new_value : Float64?)
      @latitude = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] longitude Object to be assigned
    def longitude=(new_value : Float64?)
      @longitude = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] region Object to be assigned
    def region=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("region", new_value.to_s.size, MAX_LENGTH_FOR_REGION)
      end

      @region = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@city, @country, @latitude, @longitude, @region)
  end
end