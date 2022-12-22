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
  class PaymentIntentNextActionWechatPayRedirectToIosApp
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # An universal link that redirect to WeChat Pay app
    @[JSON::Field(key: "native_url", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter native_url : String? = nil
    MAX_LENGTH_FOR_NATIVE_URL = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @native_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"native_url\" is required and cannot be null") if @native_url.nil?

      unless (_native_url = @native_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("native_url", _native_url.to_s.size, MAX_LENGTH_FOR_NATIVE_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @native_url.nil?
      unless (_native_url = @native_url).nil?
        return false if _native_url.to_s.size > MAX_LENGTH_FOR_NATIVE_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] native_url Object to be assigned
    def native_url=(native_url : String?)
      if native_url.nil?
        raise ArgumentError.new("\"native_url\" is required and cannot be null")
      end
      _native_url = native_url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("native_url", _native_url.to_s.size, MAX_LENGTH_FOR_NATIVE_URL)
      @native_url = _native_url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@native_url)
  end
end
