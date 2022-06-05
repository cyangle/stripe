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
  class CreditCardSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "exp_month", type: String)]
    getter exp_month : String

    @[JSON::Field(key: "exp_year", type: String)]
    getter exp_year : String

    @[JSON::Field(key: "number", type: String)]
    getter number : String

    # Optional properties

    @[JSON::Field(key: "address_city", type: String?, presence: true, ignore_serialize: address_city.nil? && !address_city_present?)]
    getter address_city : String?

    @[JSON::Field(ignore: true)]
    property? address_city_present : Bool = false

    @[JSON::Field(key: "address_country", type: String?, presence: true, ignore_serialize: address_country.nil? && !address_country_present?)]
    getter address_country : String?

    @[JSON::Field(ignore: true)]
    property? address_country_present : Bool = false

    @[JSON::Field(key: "address_line1", type: String?, presence: true, ignore_serialize: address_line1.nil? && !address_line1_present?)]
    getter address_line1 : String?

    @[JSON::Field(ignore: true)]
    property? address_line1_present : Bool = false

    @[JSON::Field(key: "address_line2", type: String?, presence: true, ignore_serialize: address_line2.nil? && !address_line2_present?)]
    getter address_line2 : String?

    @[JSON::Field(ignore: true)]
    property? address_line2_present : Bool = false

    @[JSON::Field(key: "address_state", type: String?, presence: true, ignore_serialize: address_state.nil? && !address_state_present?)]
    getter address_state : String?

    @[JSON::Field(ignore: true)]
    property? address_state_present : Bool = false

    @[JSON::Field(key: "address_zip", type: String?, presence: true, ignore_serialize: address_zip.nil? && !address_zip_present?)]
    getter address_zip : String?

    @[JSON::Field(ignore: true)]
    property? address_zip_present : Bool = false

    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    getter currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    @[JSON::Field(key: "cvc", type: String?, presence: true, ignore_serialize: cvc.nil? && !cvc_present?)]
    getter cvc : String?

    @[JSON::Field(ignore: true)]
    property? cvc_present : Bool = false

    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @exp_month : String,
      @exp_year : String,
      @number : String,
      # Optional properties
      @address_city : String? = nil,
      @address_country : String? = nil,
      @address_line1 : String? = nil,
      @address_line2 : String? = nil,
      @address_state : String? = nil,
      @address_zip : String? = nil,
      @currency : String? = nil,
      @cvc : String? = nil,
      @name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @exp_month.to_s.size > 5000
        invalid_properties.push("invalid value for \"exp_month\", the character length must be smaller than or equal to 5000.")
      end

      if @exp_year.to_s.size > 5000
        invalid_properties.push("invalid value for \"exp_year\", the character length must be smaller than or equal to 5000.")
      end

      if @number.to_s.size > 5000
        invalid_properties.push("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
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

      if !@currency.nil? && @currency.to_s.size > 5000
        invalid_properties.push("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      if !@cvc.nil? && @cvc.to_s.size > 5000
        invalid_properties.push("invalid value for \"cvc\", the character length must be smaller than or equal to 5000.")
      end

      if !@name.nil? && @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @exp_month.to_s.size > 5000
      return false if @exp_year.to_s.size > 5000
      return false if @number.to_s.size > 5000
      return false if !@address_city.nil? && @address_city.to_s.size > 5000
      return false if !@address_country.nil? && @address_country.to_s.size > 5000
      return false if !@address_line1.nil? && @address_line1.to_s.size > 5000
      return false if !@address_line2.nil? && @address_line2.to_s.size > 5000
      return false if !@address_state.nil? && @address_state.to_s.size > 5000
      return false if !@address_zip.nil? && @address_zip.to_s.size > 5000
      return false if !@currency.nil? && @currency.to_s.size > 5000
      return false if !@cvc.nil? && @cvc.to_s.size > 5000
      return false if !@name.nil? && @name.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] exp_month Value to be assigned
    def exp_month=(exp_month)
      if exp_month.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"exp_month\", the character length must be smaller than or equal to 5000.")
      end

      @exp_month = exp_month
    end

    # Custom attribute writer method with validation
    # @param [Object] exp_year Value to be assigned
    def exp_year=(exp_year)
      if exp_year.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"exp_year\", the character length must be smaller than or equal to 5000.")
      end

      @exp_year = exp_year
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      @number = number
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
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if !currency.nil? && currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      @currency = currency
    end

    # Custom attribute writer method with validation
    # @param [Object] cvc Value to be assigned
    def cvc=(cvc)
      if !cvc.nil? && cvc.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cvc\", the character length must be smaller than or equal to 5000.")
      end

      @cvc = cvc
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
    def_equals_and_hash(@exp_month, @exp_year, @number, @address_city, @address_country, @address_line1, @address_line2, @address_state, @address_zip, @currency, @cvc, @name)
  end
end
