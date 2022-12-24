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
  class PaymentIntentNextActionDisplayOxxoDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The timestamp after which the OXXO voucher expires.
    @[JSON::Field(key: "expires_after", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expires_after.nil? && !expires_after_present?)]
    getter expires_after : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? expires_after_present : Bool = false

    # The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
    @[JSON::Field(key: "hosted_voucher_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: hosted_voucher_url.nil? && !hosted_voucher_url_present?)]
    getter hosted_voucher_url : String? = nil
    MAX_LENGTH_FOR_HOSTED_VOUCHER_URL = 5000

    @[JSON::Field(ignore: true)]
    property? hosted_voucher_url_present : Bool = false

    # OXXO reference number.
    @[JSON::Field(key: "number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: number.nil? && !number_present?)]
    getter number : String? = nil
    MAX_LENGTH_FOR_NUMBER = 5000

    @[JSON::Field(ignore: true)]
    property? number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @expires_after : Int64? = nil,
      @hosted_voucher_url : String? = nil,
      @number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_hosted_voucher_url = @hosted_voucher_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("hosted_voucher_url", _hosted_voucher_url.to_s.size, MAX_LENGTH_FOR_HOSTED_VOUCHER_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_number = @number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("number", _number.to_s.size, MAX_LENGTH_FOR_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_hosted_voucher_url = @hosted_voucher_url).nil?
        return false if _hosted_voucher_url.to_s.size > MAX_LENGTH_FOR_HOSTED_VOUCHER_URL
      end

      unless (_number = @number).nil?
        return false if _number.to_s.size > MAX_LENGTH_FOR_NUMBER
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_after Object to be assigned
    def expires_after=(new_value : Int64?)
      @expires_after = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hosted_voucher_url Object to be assigned
    def hosted_voucher_url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("hosted_voucher_url", new_value.to_s.size, MAX_LENGTH_FOR_HOSTED_VOUCHER_URL)
      end

      @hosted_voucher_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number Object to be assigned
    def number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("number", new_value.to_s.size, MAX_LENGTH_FOR_NUMBER)
      end

      @number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@expires_after, @expires_after_present, @hosted_voucher_url, @hosted_voucher_url_present, @number, @number_present)
  end
end
