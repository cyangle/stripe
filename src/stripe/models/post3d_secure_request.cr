#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Post3dSecureRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Amount of the charge that you will create when authentication completes.
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # The URL that the cardholder's browser will be returned to when authentication completes.
    @[JSON::Field(key: "return_url", type: String)]
    property return_url : String

    # Optional properties

    # The ID of a card token, or the ID of a card belonging to the given customer.
    @[JSON::Field(key: "card", type: String?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    getter card : String?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    # The customer associated with this 3D secure authentication.
    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64,
      @currency : String,
      @return_url : String,
      # Optional properties
      @card : String? = nil,
      @customer : String? = nil,
      @expand : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@card.nil? && @card.to_s.size > 5000
        invalid_properties.push("invalid value for \"card\", the character length must be smaller than or equal to 5000.")
      end

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@card.nil? && @card.to_s.size > 5000
      return false if !@customer.nil? && @customer.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] card Value to be assigned
    def card=(card : String?)
      if !card.nil? && card.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"card\", the character length must be smaller than or equal to 5000.")
      end

      @card = card
    end

    # Custom attribute writer method with validation
    # @param [Object] customer Value to be assigned
    def customer=(customer : String?)
      if !customer.nil? && customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
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
    def_equals_and_hash(@amount, @currency, @return_url, @card, @card_present2, @customer, @customer_present, @expand, @expand_present)
  end
end
