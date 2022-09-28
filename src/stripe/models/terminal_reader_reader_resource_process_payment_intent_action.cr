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
  # Represents a reader action to process a payment intent
  class TerminalReaderReaderResourceProcessPaymentIntentAction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "payment_intent", type: Stripe::TerminalReaderReaderResourceProcessPaymentIntentActionPaymentIntent?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_intent : Stripe::TerminalReaderReaderResourceProcessPaymentIntentActionPaymentIntent? = nil

    # Optional properties

    @[JSON::Field(key: "process_config", type: Stripe::TerminalReaderReaderResourceProcessConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter process_config : Stripe::TerminalReaderReaderResourceProcessConfig? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @payment_intent : Stripe::TerminalReaderReaderResourceProcessPaymentIntentActionPaymentIntent? = nil,
      # Optional properties
      @process_config : Stripe::TerminalReaderReaderResourceProcessConfig? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"payment_intent\" is required and cannot be null") if @payment_intent.nil?
      if _payment_intent = @payment_intent
        if _payment_intent.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_payment_intent.list_invalid_properties_for("payment_intent"))
        end
      end
      if _process_config = @process_config
        if _process_config.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_process_config.list_invalid_properties_for("process_config"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @payment_intent.nil?
      if _payment_intent = @payment_intent
        if _payment_intent.is_a?(OpenApi::Validatable)
          return false unless _payment_intent.valid?
        end
      end
      if _process_config = @process_config
        if _process_config.is_a?(OpenApi::Validatable)
          return false unless _process_config.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_intent Object to be assigned
    def payment_intent=(payment_intent : Stripe::TerminalReaderReaderResourceProcessPaymentIntentActionPaymentIntent?)
      if payment_intent.nil?
        raise ArgumentError.new("\"payment_intent\" is required and cannot be null")
      end
      _payment_intent = payment_intent.not_nil!
      if _payment_intent.is_a?(OpenApi::Validatable)
        _payment_intent.validate
      end
      @payment_intent = _payment_intent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] process_config Object to be assigned
    def process_config=(process_config : Stripe::TerminalReaderReaderResourceProcessConfig?)
      if process_config.nil?
        return @process_config = nil
      end
      _process_config = process_config.not_nil!
      if _process_config.is_a?(OpenApi::Validatable)
        _process_config.validate
      end
      @process_config = _process_config
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payment_intent, @process_config)
  end
end
