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
  class MandateBacsDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The status of the mandate on the Bacs network. Can be one of `pending`, `revoked`, `refused`, or `accepted`.
    @[JSON::Field(key: "network_status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter network_status : String? = nil
    ERROR_MESSAGE_FOR_NETWORK_STATUS = "invalid value for \"network_status\", must be one of [accepted, pending, refused, revoked]."
    VALID_VALUES_FOR_NETWORK_STATUS  = String.static_array("accepted", "pending", "refused", "revoked")

    # The unique reference identifying the mandate on the Bacs network.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 5000

    # The URL that will contain the mandate that the customer has signed.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @network_status : String? = nil,
      @reference : String? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"network_status\" is required and cannot be null") if @network_status.nil?

      unless (_network_status = @network_status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_NETWORK_STATUS) unless OpenApi::EnumValidator.valid?(_network_status, VALID_VALUES_FOR_NETWORK_STATUS)
      end
      invalid_properties.push("\"reference\" is required and cannot be null") if @reference.nil?

      unless (_reference = @reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"url\" is required and cannot be null") if @url.nil?

      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @network_status.nil?
      unless (_network_status = @network_status).nil?
        return false unless OpenApi::EnumValidator.valid?(_network_status, VALID_VALUES_FOR_NETWORK_STATUS)
      end

      return false if @reference.nil?
      unless (_reference = @reference).nil?
        return false if _reference.to_s.size > MAX_LENGTH_FOR_REFERENCE
      end

      return false if @url.nil?
      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_status Object to be assigned
    def network_status=(new_value : String?)
      raise ArgumentError.new("\"network_status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("network_status", new_value, VALID_VALUES_FOR_NETWORK_STATUS)
      end

      @network_status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(new_value : String?)
      raise ArgumentError.new("\"reference\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reference", new_value.to_s.size, MAX_LENGTH_FOR_REFERENCE)
      end

      @reference = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(new_value : String?)
      raise ArgumentError.new("\"url\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("url", new_value.to_s.size, MAX_LENGTH_FOR_URL)
      end

      @url = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@network_status, @reference, @url)
  end
end
