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
  class QuotesResourceFromQuote
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Whether this quote is a revision of a different quote.
    @[JSON::Field(key: "is_revision", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter is_revision : Bool? = nil

    @[JSON::Field(key: "quote", type: Stripe::QuotesResourceFromQuoteQuote?, default: nil, required: true, nullable: false, emit_null: false)]
    getter quote : Stripe::QuotesResourceFromQuoteQuote? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @is_revision : Bool? = nil,
      @quote : Stripe::QuotesResourceFromQuoteQuote? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"is_revision\" is required and cannot be null") if @is_revision.nil?

      invalid_properties.push("\"quote\" is required and cannot be null") if @quote.nil?

      if _quote = @quote
        invalid_properties.concat(_quote.list_invalid_properties_for("quote")) if _quote.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @is_revision.nil?

      return false if @quote.nil?
      if _quote = @quote
        return false if _quote.is_a?(OpenApi::Validatable) && !_quote.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_revision Object to be assigned
    def is_revision=(is_revision : Bool?)
      if is_revision.nil?
        raise ArgumentError.new("\"is_revision\" is required and cannot be null")
      end
      _is_revision = is_revision.not_nil!
      @is_revision = _is_revision
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quote Object to be assigned
    def quote=(quote : Stripe::QuotesResourceFromQuoteQuote?)
      if quote.nil?
        raise ArgumentError.new("\"quote\" is required and cannot be null")
      end
      _quote = quote.not_nil!
      _quote.validate if _quote.is_a?(OpenApi::Validatable)
      @quote = _quote
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@is_revision, @quote)
  end
end
