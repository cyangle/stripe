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
  class PostCustomersCustomerBankAccountsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # A token returned by [Stripe.js](https://stripe.com/docs/js) representing the user’s Alipay account details.
    @[JSON::Field(key: "alipay_account", type: String?, presence: true, ignore_serialize: alipay_account.nil? && !alipay_account_present?)]
    getter alipay_account : String?

    @[JSON::Field(ignore: true)]
    property? alipay_account_present : Bool = false

    @[JSON::Field(key: "bank_account", type: PostCustomersCustomerRequestBankAccount?, presence: true, ignore_serialize: bank_account.nil? && !bank_account_present?)]
    property bank_account : PostCustomersCustomerRequestBankAccount?

    @[JSON::Field(ignore: true)]
    property? bank_account_present : Bool = false

    @[JSON::Field(key: "card", type: PostChargesRequestCard?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    property card : PostChargesRequestCard?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

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

    # Please refer to full [documentation](https://stripe.com/docs/api) instead.
    @[JSON::Field(key: "source", type: String?, presence: true, ignore_serialize: source.nil? && !source_present?)]
    getter source : String?

    @[JSON::Field(ignore: true)]
    property? source_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @alipay_account : String? = nil,
      @bank_account : PostCustomersCustomerRequestBankAccount? = nil,
      @card : PostChargesRequestCard? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @source : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@alipay_account.nil? && @alipay_account.to_s.size > 5000
        invalid_properties.push("invalid value for \"alipay_account\", the character length must be smaller than or equal to 5000.")
      end

      if !@source.nil? && @source.to_s.size > 5000
        invalid_properties.push("invalid value for \"source\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@alipay_account.nil? && @alipay_account.to_s.size > 5000
      return false if !@source.nil? && @source.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] alipay_account Value to be assigned
    def alipay_account=(alipay_account)
      if !alipay_account.nil? && alipay_account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"alipay_account\", the character length must be smaller than or equal to 5000.")
      end

      @alipay_account = alipay_account
    end

    # Custom attribute writer method with validation
    # @param [Object] source Value to be assigned
    def source=(source)
      if !source.nil? && source.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"source\", the character length must be smaller than or equal to 5000.")
      end

      @source = source
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
    def_equals_and_hash(@alipay_account, @bank_account, @card, @expand, @metadata, @source)
  end
end