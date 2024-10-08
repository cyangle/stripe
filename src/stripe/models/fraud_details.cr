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
  class FraudDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Either `safe` or `fraudulent`.
    @[JSON::Field(key: "user_report", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter user_report : String? = nil
    MAX_LENGTH_FOR_USER_REPORT    = 5000
    ERROR_MESSAGE_FOR_USER_REPORT = "invalid value for \"user_report\", must be one of [, fraudulent, safe]."
    VALID_VALUES_FOR_USER_REPORT  = String.static_array("", "fraudulent", "safe")

    # End of Required Properties

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

      unless (_user_report = @user_report).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_USER_REPORT) unless OpenApi::EnumValidator.valid?(_user_report, VALID_VALUES_FOR_USER_REPORT)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @user_report.nil?
      unless (_user_report = @user_report).nil?
        return false unless OpenApi::EnumValidator.valid?(_user_report, VALID_VALUES_FOR_USER_REPORT)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_report Object to be assigned
    def user_report=(new_value : String?)
      raise ArgumentError.new("\"user_report\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("user_report", new_value, VALID_VALUES_FOR_USER_REPORT)
      end

      @user_report = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@user_report)
  end
end
