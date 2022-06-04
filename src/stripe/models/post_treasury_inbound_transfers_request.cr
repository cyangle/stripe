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
  class PostTreasuryInboundTransfersRequest
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

    # The origin payment method to be debited for the InboundTransfer.
    @[JSON::Field(key: "origin_payment_method", type: String)]
    getter origin_payment_method : String

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

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The complete description that appears on your customers' statements. Maximum 10 characters.
    @[JSON::Field(key: "statement_descriptor", type: String?, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64,
      @currency : String,
      @financial_account : String,
      @origin_payment_method : String,
      # Optional properties
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @statement_descriptor : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @origin_payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"origin_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 10
        invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 10.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @origin_payment_method.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 10

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] origin_payment_method Value to be assigned
    def origin_payment_method=(origin_payment_method)
      if origin_payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"origin_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @origin_payment_method = origin_payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if !statement_descriptor.nil? && statement_descriptor.to_s.size > 10
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 10.")
      end

      @statement_descriptor = statement_descriptor
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
    def_equals_and_hash(@amount, @currency, @financial_account, @origin_payment_method, @description, @expand, @metadata, @statement_descriptor)
  end
end