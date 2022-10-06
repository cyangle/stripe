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
  class CustomerTaxLocation
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The customer's country as identified by Stripe Tax.
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # The data source used to infer the customer's location.
    @[JSON::Field(key: "source", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter source : String? = nil
    ERROR_MESSAGE_FOR_SOURCE = "invalid value for \"source\", must be one of [billing_address, ip_address, payment_method, shipping_destination]."
    VALID_VALUES_FOR_SOURCE  = String.static_array("billing_address", "ip_address", "payment_method", "shipping_destination")

    # End of Required Properties

    # Optional Properties

    # The customer's state, county, province, or region as identified by Stripe Tax.
    @[JSON::Field(key: "state", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: state.nil? && !state_present?)]
    getter state : String? = nil
    MAX_LENGTH_FOR_STATE = 5000

    @[JSON::Field(ignore: true)]
    property? state_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @country : String? = nil,
      @source : String? = nil,
      # Optional properties
      @state : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"source\" is required and cannot be null") if @source.nil?

      unless (_source = @source).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SOURCE) unless OpenApi::EnumValidator.valid?(_source, VALID_VALUES_FOR_SOURCE)
      end
      unless (_state = @state).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("state", _state.to_s.size, MAX_LENGTH_FOR_STATE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @country.nil?
      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      return false if @source.nil?
      unless (_source = @source).nil?
        return false unless OpenApi::EnumValidator.valid?(_source, VALID_VALUES_FOR_SOURCE)
      end

      unless (_state = @state).nil?
        return false if _state.to_s.size > MAX_LENGTH_FOR_STATE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        raise ArgumentError.new("\"country\" is required and cannot be null")
      end
      _country = country.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source : String?)
      if source.nil?
        raise ArgumentError.new("\"source\" is required and cannot be null")
      end
      _source = source.not_nil!
      OpenApi::EnumValidator.validate("source", _source, VALID_VALUES_FOR_SOURCE)
      @source = _source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state : String?)
      if state.nil?
        return @state = nil
      end
      _state = state.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("state", _state.to_s.size, MAX_LENGTH_FOR_STATE)
      @state = _state
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@country, @source, @state, @state_present)
  end
end
