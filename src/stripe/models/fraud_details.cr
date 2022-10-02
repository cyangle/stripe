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
  # A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a `user_report` key with a value of `fraudulent`. If you believe a charge is safe, include a `user_report` key with a value of `safe`. Stripe will use the information you send to improve our fraud detection algorithms.
  class FraudDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "user_report", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter user_report : String? = nil
    MAX_LENGTH_FOR_USER_REPORT    = 5000
    ERROR_MESSAGE_FOR_USER_REPORT = "invalid value for \"user_report\", must be one of [, fraudulent, safe]."
    VALID_VALUES_FOR_USER_REPORT  = StaticArray["", "fraudulent", "safe"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @user_report : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"user_report\" is required and cannot be null") if @user_report.nil?

      if _user_report = @user_report
        invalid_properties.push(ERROR_MESSAGE_FOR_USER_REPORT) unless OpenApi::EnumValidator.valid?(_user_report, VALID_VALUES_FOR_USER_REPORT)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @user_report.nil?
      if _user_report = @user_report
        return false unless OpenApi::EnumValidator.valid?(_user_report, VALID_VALUES_FOR_USER_REPORT)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_report Object to be assigned
    def user_report=(user_report : String?)
      if user_report.nil?
        raise ArgumentError.new("\"user_report\" is required and cannot be null")
      end
      _user_report = user_report.not_nil!
      OpenApi::EnumValidator.validate("user_report", _user_report, VALID_VALUES_FOR_USER_REPORT)
      @user_report = _user_report
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@user_report)
  end
end
