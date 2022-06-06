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
  # The person's address.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class AddressSpecs1
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "city", type: String?, presence: true, ignore_serialize: city.nil? && !city_present?)]
    getter city : String?

    @[JSON::Field(ignore: true)]
    property? city_present : Bool = false

    @[JSON::Field(key: "country", type: String?, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String?

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    @[JSON::Field(key: "line1", type: String?, presence: true, ignore_serialize: line1.nil? && !line1_present?)]
    getter line1 : String?

    @[JSON::Field(ignore: true)]
    property? line1_present : Bool = false

    @[JSON::Field(key: "line2", type: String?, presence: true, ignore_serialize: line2.nil? && !line2_present?)]
    getter line2 : String?

    @[JSON::Field(ignore: true)]
    property? line2_present : Bool = false

    @[JSON::Field(key: "postal_code", type: String?, presence: true, ignore_serialize: postal_code.nil? && !postal_code_present?)]
    getter postal_code : String?

    @[JSON::Field(ignore: true)]
    property? postal_code_present : Bool = false

    @[JSON::Field(key: "state", type: String?, presence: true, ignore_serialize: state.nil? && !state_present?)]
    getter state : String?

    @[JSON::Field(ignore: true)]
    property? state_present : Bool = false

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
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@city.nil? && @city.to_s.size > 100
        invalid_properties.push("invalid value for \"city\", the character length must be smaller than or equal to 100.")
      end

      if !@country.nil? && @country.to_s.size > 5000
        invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      if !@line1.nil? && @line1.to_s.size > 200
        invalid_properties.push("invalid value for \"line1\", the character length must be smaller than or equal to 200.")
      end

      if !@line2.nil? && @line2.to_s.size > 200
        invalid_properties.push("invalid value for \"line2\", the character length must be smaller than or equal to 200.")
      end

      if !@postal_code.nil? && @postal_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"postal_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@state.nil? && @state.to_s.size > 5000
        invalid_properties.push("invalid value for \"state\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@city.nil? && @city.to_s.size > 100
      return false if !@country.nil? && @country.to_s.size > 5000
      return false if !@line1.nil? && @line1.to_s.size > 200
      return false if !@line2.nil? && @line2.to_s.size > 200
      return false if !@postal_code.nil? && @postal_code.to_s.size > 5000
      return false if !@state.nil? && @state.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city : String?)
      if !city.nil? && city.to_s.size > 100
        raise ArgumentError.new("invalid value for \"city\", the character length must be smaller than or equal to 100.")
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country : String?)
      if !country.nil? && country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] line1 Value to be assigned
    def line1=(line1 : String?)
      if !line1.nil? && line1.to_s.size > 200
        raise ArgumentError.new("invalid value for \"line1\", the character length must be smaller than or equal to 200.")
      end

      @line1 = line1
    end

    # Custom attribute writer method with validation
    # @param [Object] line2 Value to be assigned
    def line2=(line2 : String?)
      if !line2.nil? && line2.to_s.size > 200
        raise ArgumentError.new("invalid value for \"line2\", the character length must be smaller than or equal to 200.")
      end

      @line2 = line2
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code : String?)
      if !postal_code.nil? && postal_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"postal_code\", the character length must be smaller than or equal to 5000.")
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state : String?)
      if !state.nil? && state.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"state\", the character length must be smaller than or equal to 5000.")
      end

      @state = state
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
    def_equals_and_hash(@city, @city_present, @country, @country_present, @line1, @line1_present, @line2, @line2_present, @postal_code, @postal_code_present, @state, @state_present)
  end
end
