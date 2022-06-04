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
  class PostTransfersRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # 3-letter [ISO code for currency](https://stripe.com/docs/payouts).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # The ID of a connected Stripe account. <a href=\"/docs/connect/charges-transfers\">See the Connect documentation</a> for details.
    @[JSON::Field(key: "destination", type: String)]
    property destination : String

    # Optional properties

    # A positive integer in cents (or local equivalent) representing how much to transfer.
    @[JSON::Field(key: "amount", type: Int64?, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    property amount : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

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

    # You can use this parameter to transfer funds from a charge before they are added to your available balance. A pending balance will transfer immediately but the funds will not become available until the original charge becomes available. [See the Connect documentation](https://stripe.com/docs/connect/charges-transfers#transfer-availability) for details.
    @[JSON::Field(key: "source_transaction", type: String?, presence: true, ignore_serialize: source_transaction.nil? && !source_transaction_present?)]
    property source_transaction : String?

    @[JSON::Field(ignore: true)]
    property? source_transaction_present : Bool = false

    # The source balance to use for this transfer. One of `bank_account`, `card`, or `fpx`. For most users, this will default to `card`.
    @[JSON::Field(key: "source_type", type: String?, presence: true, ignore_serialize: source_type.nil? && !source_type_present?)]
    getter source_type : String?

    @[JSON::Field(ignore: true)]
    property? source_type_present : Bool = false

    ENUM_VALIDATOR_FOR_SOURCE_TYPE = EnumValidator.new("source_type", "String", ["bank_account", "card", "fpx"])

    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers#transfer-options) for details.
    @[JSON::Field(key: "transfer_group", type: String?, presence: true, ignore_serialize: transfer_group.nil? && !transfer_group_present?)]
    property transfer_group : String?

    @[JSON::Field(ignore: true)]
    property? transfer_group_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @currency : String, 
      @destination : String, 
      # Optional properties
      @amount : Int64? = nil, 
      @description : String? = nil, 
      @expand : Array(String)? = nil, 
      @metadata : Hash(String, String)? = nil, 
      @source_transaction : String? = nil, 
      @source_type : String? = nil, 
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SOURCE_TYPE.error_message) unless ENUM_VALIDATOR_FOR_SOURCE_TYPE.valid?(@source_type)

      if !@source_type.nil? && @source_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"source_type\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@description.nil? && @description.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_SOURCE_TYPE.valid?(@source_type)
      return false if !@source_type.nil? && @source_type.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_type Object to be assigned
    def source_type=(source_type)
      ENUM_VALIDATOR_FOR_SOURCE_TYPE.valid!(source_type)
      @source_type = source_type
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
    def_equals_and_hash(@currency, @destination, @amount, @description, @expand, @metadata, @source_transaction, @source_type, @transfer_group)
  end
end
