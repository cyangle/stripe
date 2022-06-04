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
  class PostSubscriptionItemsSubscriptionItemUsageRecordsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The usage quantity for the specified timestamp.
    @[JSON::Field(key: "quantity", type: Int64)]
    property quantity : Int64

    # Optional properties

    # Valid values are `increment` (default) or `set`. When using `increment` the specified `quantity` will be added to the usage at the specified timestamp. The `set` action will overwrite the usage quantity at that timestamp. If the subscription has [billing thresholds](https://stripe.com/docs/api/subscriptions/object#subscription_object-billing_thresholds), `increment` is the only allowed value.
    @[JSON::Field(key: "action", type: String?, presence: true, ignore_serialize: action.nil? && !action_present?)]
    getter action : String?

    @[JSON::Field(ignore: true)]
    property? action_present : Bool = false

    ENUM_VALIDATOR_FOR_ACTION = EnumValidator.new("action", "String", ["increment", "set"])

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "timestamp", type: PostSubscriptionItemsSubscriptionItemUsageRecordsRequestTimestamp?, presence: true, ignore_serialize: timestamp.nil? && !timestamp_present?)]
    property timestamp : PostSubscriptionItemsSubscriptionItemUsageRecordsRequestTimestamp?

    @[JSON::Field(ignore: true)]
    property? timestamp_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @quantity : Int64, 
      # Optional properties
      @action : String? = nil, 
      @expand : Array(String)? = nil, 
      @timestamp : PostSubscriptionItemsSubscriptionItemUsageRecordsRequestTimestamp? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_ACTION.error_message) unless ENUM_VALIDATOR_FOR_ACTION.valid?(@action)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_ACTION.valid?(@action)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      ENUM_VALIDATOR_FOR_ACTION.valid!(action)
      @action = action
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
    def_equals_and_hash(@quantity, @action, @expand, @timestamp)
  end
end
