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
  class MandateOptionsOffSessionDetailsBlik
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Amount of each recurring payment.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    getter amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    # Currency of each recurring payment.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    getter currency : String? = nil

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    # Frequency interval of each recurring payment.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: interval.nil? && !interval_present?)]
    getter interval : String? = nil

    @[JSON::Field(ignore: true)]
    property? interval_present : Bool = false
    VALID_VALUES_FOR_INTERVAL = StaticArray["day", "month", "week", "year"]

    # Frequency indicator of each recurring payment.
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: interval_count.nil? && !interval_count_present?)]
    getter interval_count : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? interval_count_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      @interval : String? = nil,
      @interval_count : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _currency = @currency
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("currency", _currency.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _interval = @interval
        invalid_properties.push(OpenApi::EnumValidator.error_message("interval", VALID_VALUES_FOR_INTERVAL)) unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _currency = @currency
        return false if _currency.to_s.size > 5000
      end

      if _interval = @interval
        return false unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        return @currency = nil
      end
      _currency = currency.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("currency", _currency.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        return @interval = nil
      end
      _interval = interval.not_nil!
      OpenApi::EnumValidator.validate("interval", _interval, VALID_VALUES_FOR_INTERVAL)
      @interval = _interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(interval_count : Int64?)
      if interval_count.nil?
        return @interval_count = nil
      end
      _interval_count = interval_count.not_nil!
      @interval_count = _interval_count
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @amount_present, @currency, @currency_present, @interval, @interval_present, @interval_count, @interval_count_present)
  end
end
