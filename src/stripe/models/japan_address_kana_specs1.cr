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
  # The Kana variation of the person's address (Japan only).
  class JapanAddressKanaSpecs1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "city", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter city : String? = nil

    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter country : String? = nil

    @[JSON::Field(key: "line1", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter line1 : String? = nil

    @[JSON::Field(key: "line2", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter line2 : String? = nil

    @[JSON::Field(key: "postal_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter postal_code : String? = nil

    @[JSON::Field(key: "state", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter state : String? = nil

    @[JSON::Field(key: "town", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter town : String? = nil

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
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _city = @city
        if _city.to_s.size > 5000
          invalid_properties.push("invalid value for \"city\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _country = @country
        if _country.to_s.size > 5000
          invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _line1 = @line1
        if _line1.to_s.size > 5000
          invalid_properties.push("invalid value for \"line1\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _line2 = @line2
        if _line2.to_s.size > 5000
          invalid_properties.push("invalid value for \"line2\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _postal_code = @postal_code
        if _postal_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"postal_code\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _state = @state
        if _state.to_s.size > 5000
          invalid_properties.push("invalid value for \"state\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _town = @town
        if _town.to_s.size > 5000
          invalid_properties.push("invalid value for \"town\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _city = @city
        return false if _city.to_s.size > 5000
      end
      if _country = @country
        return false if _country.to_s.size > 5000
      end
      if _line1 = @line1
        return false if _line1.to_s.size > 5000
      end
      if _line2 = @line2
        return false if _line2.to_s.size > 5000
      end
      if _postal_code = @postal_code
        return false if _postal_code.to_s.size > 5000
      end
      if _state = @state
        return false if _state.to_s.size > 5000
      end
      if _town = @town
        return false if _town.to_s.size > 5000
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
      if _city.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"city\", the character length must be smaller than or equal to 5000.")
      end

      @city = city
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      if _country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line1 Object to be assigned
    def line1=(line1 : String?)
      if line1.nil?
        return @line1 = nil
      end
      _line1 = line1.not_nil!
      if _line1.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"line1\", the character length must be smaller than or equal to 5000.")
      end

      @line1 = line1
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line2 Object to be assigned
    def line2=(line2 : String?)
      if line2.nil?
        return @line2 = nil
      end
      _line2 = line2.not_nil!
      if _line2.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"line2\", the character length must be smaller than or equal to 5000.")
      end

      @line2 = line2
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] postal_code Object to be assigned
    def postal_code=(postal_code : String?)
      if postal_code.nil?
        return @postal_code = nil
      end
      _postal_code = postal_code.not_nil!
      if _postal_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"postal_code\", the character length must be smaller than or equal to 5000.")
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state : String?)
      if state.nil?
        return @state = nil
      end
      _state = state.not_nil!
      if _state.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"state\", the character length must be smaller than or equal to 5000.")
      end

      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] town Object to be assigned
    def town=(town : String?)
      if town.nil?
        return @town = nil
      end
      _town = town.not_nil!
      if _town.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"town\", the character length must be smaller than or equal to 5000.")
      end

      @town = town
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
    def_equals_and_hash(@city, @country, @line1, @line2, @postal_code, @state, @town)
  end
end
