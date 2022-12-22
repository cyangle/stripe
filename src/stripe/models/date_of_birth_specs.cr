#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class DateOfBirthSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "day", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter day : Int64? = nil

    @[JSON::Field(key: "month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter month : Int64? = nil

    @[JSON::Field(key: "year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter year : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @day : Int64? = nil,
      @month : Int64? = nil,
      @year : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"day\" is required and cannot be null") if @day.nil?

      invalid_properties.push("\"month\" is required and cannot be null") if @month.nil?

      invalid_properties.push("\"year\" is required and cannot be null") if @year.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @day.nil?

      return false if @month.nil?

      return false if @year.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] day Object to be assigned
    def day=(day : Int64?)
      if day.nil?
        raise ArgumentError.new("\"day\" is required and cannot be null")
      end
      _day = day.not_nil!
      @day = _day
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] month Object to be assigned
    def month=(month : Int64?)
      if month.nil?
        raise ArgumentError.new("\"month\" is required and cannot be null")
      end
      _month = month.not_nil!
      @month = _month
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] year Object to be assigned
    def year=(year : Int64?)
      if year.nil?
        raise ArgumentError.new("\"year\" is required and cannot be null")
      end
      _year = year.not_nil!
      @year = _year
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@day, @month, @year)
  end
end
