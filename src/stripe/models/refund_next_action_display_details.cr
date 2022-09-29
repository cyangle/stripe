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
  class RefundNextActionDisplayDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "email_sent", type: Stripe::EmailSent?, default: nil, required: true, nullable: false, emit_null: false)]
    getter email_sent : Stripe::EmailSent? = nil

    # The expiry timestamp.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter expires_at : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @email_sent : Stripe::EmailSent? = nil,
      @expires_at : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"email_sent\" is required and cannot be null") if @email_sent.nil?
      if _email_sent = @email_sent
        invalid_properties.concat(_email_sent.list_invalid_properties_for("email_sent")) if _email_sent.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"expires_at\" is required and cannot be null") if @expires_at.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @email_sent.nil?
      if _email_sent = @email_sent
        return false if _email_sent.is_a?(OpenApi::Validatable) && !_email_sent.valid?
      end
      return false if @expires_at.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_sent Object to be assigned
    def email_sent=(email_sent : Stripe::EmailSent?)
      if email_sent.nil?
        raise ArgumentError.new("\"email_sent\" is required and cannot be null")
      end
      _email_sent = email_sent.not_nil!
      _email_sent.validate if _email_sent.is_a?(OpenApi::Validatable)
      @email_sent = _email_sent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(expires_at : Int64?)
      if expires_at.nil?
        raise ArgumentError.new("\"expires_at\" is required and cannot be null")
      end
      _expires_at = expires_at.not_nil!
      @expires_at = _expires_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@email_sent, @expires_at)
  end
end
