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
  class IssuingCardholderIndividualDob
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The day of birth, between 1 and 31.
    @[JSON::Field(key: "day", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: day.nil? && !day_present?)]
    getter day : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? day_present : Bool = false

    # The month of birth, between 1 and 12.
    @[JSON::Field(key: "month", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: month.nil? && !month_present?)]
    getter month : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? month_present : Bool = false

    # The four-digit year of birth.
    @[JSON::Field(key: "year", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: year.nil? && !year_present?)]
    getter year : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? year_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @day : Int64? = nil,
      @month : Int64? = nil,
      @year : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] day Object to be assigned
    def day=(day : Int64?)
      if day.nil?
        return @day = nil
      end
      _day = day.not_nil!
      @day = _day
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] month Object to be assigned
    def month=(month : Int64?)
      if month.nil?
        return @month = nil
      end
      _month = month.not_nil!
      @month = _month
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] year Object to be assigned
    def year=(year : Int64?)
      if year.nil?
        return @year = nil
      end
      _year = year.not_nil!
      @year = _year
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@day, @day_present, @month, @month_present, @year, @year_present)
  end
end
