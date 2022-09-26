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
  class PaymentIntentNextActionKonbiniMinistop
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The payment code.
    @[JSON::Field(key: "payment_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_code : String? = nil

    # Optional properties

    # The confirmation number.
    @[JSON::Field(key: "confirmation_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter confirmation_number : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @payment_code : String? = nil,
      # Optional properties
      @confirmation_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"payment_code\" is required and cannot be null") if @payment_code.nil?
      if _payment_code = @payment_code
        if _payment_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"payment_code\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _confirmation_number = @confirmation_number
        if _confirmation_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"confirmation_number\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @payment_code.nil?
      if _payment_code = @payment_code
        return false if _payment_code.to_s.size > 5000
      end
      if _confirmation_number = @confirmation_number
        return false if _confirmation_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_code Object to be assigned
    def payment_code=(payment_code : String?)
      if payment_code.nil?
        raise ArgumentError.new("\"payment_code\" is required and cannot be null")
      end
      _payment_code = payment_code.not_nil!
      if _payment_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_code\", the character length must be smaller than or equal to 5000.")
      end

      @payment_code = payment_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] confirmation_number Object to be assigned
    def confirmation_number=(confirmation_number : String?)
      if confirmation_number.nil?
        return @confirmation_number = nil
      end
      _confirmation_number = confirmation_number.not_nil!
      if _confirmation_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"confirmation_number\", the character length must be smaller than or equal to 5000.")
      end

      @confirmation_number = confirmation_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payment_code, @confirmation_number)
  end
end
