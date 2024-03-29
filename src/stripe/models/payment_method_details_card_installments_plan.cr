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
  class PaymentMethodDetailsCardInstallmentsPlan
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Type of installment plan, one of `fixed_count`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [fixed_count]."
    VALID_VALUES_FOR__TYPE  = String.static_array("fixed_count")

    # End of Required Properties

    # Optional Properties

    # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
    @[JSON::Field(key: "count", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: count.nil? && !count_present?)]
    getter count : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? count_present : Bool = false

    # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card. One of `month`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: interval.nil? && !interval_present?)]
    getter interval : String? = nil
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [month]."
    VALID_VALUES_FOR_INTERVAL  = String.static_array("month")

    @[JSON::Field(ignore: true)]
    property? interval_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @count : Int64? = nil,
      @interval : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_interval = @interval).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_INTERVAL) unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_interval = @interval).nil?
        return false unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] count Object to be assigned
    def count=(new_value : Int64?)
      @count = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("interval", new_value, VALID_VALUES_FOR_INTERVAL)
      end

      @interval = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @count, @count_present, @interval, @interval_present)
  end
end
