#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./terms_acceptance_param_user_agent"

module Stripe
  class TermsAcceptanceParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The Unix timestamp marking when the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
    @[JSON::Field(key: "date", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter date : Int64? = nil

    # The IP address from which the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
    @[JSON::Field(key: "ip", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ip : String? = nil

    @[JSON::Field(key: "user_agent", type: Stripe::TermsAcceptanceParamUserAgent?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user_agent : Stripe::TermsAcceptanceParamUserAgent? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @date : Int64? = nil,
      @ip : String? = nil,
      @user_agent : Stripe::TermsAcceptanceParamUserAgent? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_user_agent = @user_agent).nil?
        invalid_properties.concat(_user_agent.list_invalid_properties_for("user_agent")) if _user_agent.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_user_agent = @user_agent).nil?
        return false if _user_agent.is_a?(OpenApi::Validatable) && !_user_agent.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date Object to be assigned
    def date=(new_value : Int64?)
      @date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip Object to be assigned
    def ip=(new_value : String?)
      @ip = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_agent Object to be assigned
    def user_agent=(new_value : Stripe::TermsAcceptanceParamUserAgent?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @user_agent = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@date, @ip, @user_agent)
  end
end
