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
  #
  class CustomUnitAmount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The maximum unit amount the customer can specify for this item.
    @[JSON::Field(key: "maximum", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: maximum.nil? && !maximum_present?)]
    getter maximum : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? maximum_present : Bool = false

    # The minimum unit amount the customer can specify for this item. Must be at least the minimum charge amount.
    @[JSON::Field(key: "minimum", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: minimum.nil? && !minimum_present?)]
    getter minimum : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? minimum_present : Bool = false

    # The starting unit amount which can be updated by the customer.
    @[JSON::Field(key: "preset", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preset.nil? && !preset_present?)]
    getter preset : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? preset_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @maximum : Int64? = nil,
      @minimum : Int64? = nil,
      @preset : Int64? = nil
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
    # @param [Object] maximum Object to be assigned
    def maximum=(new_value : Int64?)
      @maximum = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minimum Object to be assigned
    def minimum=(new_value : Int64?)
      @minimum = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preset Object to be assigned
    def preset=(new_value : Int64?)
      @preset = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@maximum, @maximum_present, @minimum, @minimum_present, @preset, @preset_present)
  end
end
