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
  # Point in Time
  class GelatoDataDocumentReportExpirationDate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Numerical day between 1 and 31.
    @[JSON::Field(key: "day", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter day : Int64? = nil

    # Numerical month between 1 and 12.
    @[JSON::Field(key: "month", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter month : Int64? = nil

    # The four-digit year.
    @[JSON::Field(key: "year", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] day Object to be assigned
    def day=(new_value : Int64?)
      @day = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] month Object to be assigned
    def month=(new_value : Int64?)
      @month = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] year Object to be assigned
    def year=(new_value : Int64?)
      @year = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@day, @month, @year)
  end
end
