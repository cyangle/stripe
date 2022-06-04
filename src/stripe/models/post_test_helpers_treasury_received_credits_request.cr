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
  class PostTestHelpersTreasuryReceivedCreditsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Amount (in cents) to be transferred.
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # The FinancialAccount to send funds to.
    @[JSON::Field(key: "financial_account", type: String)]
    property financial_account : String

    # The rails used for the object.
    @[JSON::Field(key: "network", type: String)]
    getter network : String

    ENUM_VALIDATOR_FOR_NETWORK = EnumValidator.new("network", "String", ["ach", "us_domestic_wire"])

    # Optional properties

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "initiating_payment_method_details", type: SourceParams?, presence: true, ignore_serialize: initiating_payment_method_details.nil? && !initiating_payment_method_details_present?)]
    property initiating_payment_method_details : SourceParams?

    @[JSON::Field(ignore: true)]
    property? initiating_payment_method_details_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @amount : Int64, 
      @currency : String, 
      @financial_account : String, 
      @network : String, 
      # Optional properties
      @description : String? = nil, 
      @expand : Array(String)? = nil, 
      @initiating_payment_method_details : SourceParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_NETWORK.error_message) unless ENUM_VALIDATOR_FOR_NETWORK.valid?(@network, false)

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_NETWORK.valid?(@network, false)
      return false if !@description.nil? && @description.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(network)
      ENUM_VALIDATOR_FOR_NETWORK.valid!(network, false)
      @network = network
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
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
    def_equals_and_hash(@amount, @currency, @financial_account, @network, @description, @expand, @initiating_payment_method_details)
  end
end
