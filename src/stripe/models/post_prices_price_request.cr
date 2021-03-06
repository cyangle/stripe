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
  class PostPricesPriceRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Whether the price can be used for new purchases. Defaults to `true`.
    @[JSON::Field(key: "active", type: Bool?, presence: true, ignore_serialize: active.nil? && !active_present?)]
    property active : Bool?

    @[JSON::Field(ignore: true)]
    property? active_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
    @[JSON::Field(key: "lookup_key", type: String?, presence: true, ignore_serialize: lookup_key.nil? && !lookup_key_present?)]
    getter lookup_key : String?

    @[JSON::Field(ignore: true)]
    property? lookup_key_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # A brief description of the price, hidden from customers.
    @[JSON::Field(key: "nickname", type: String?, presence: true, ignore_serialize: nickname.nil? && !nickname_present?)]
    getter nickname : String?

    @[JSON::Field(ignore: true)]
    property? nickname_present : Bool = false

    # Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    @[JSON::Field(key: "tax_behavior", type: String?, presence: true, ignore_serialize: tax_behavior.nil? && !tax_behavior_present?)]
    getter tax_behavior : String?

    @[JSON::Field(ignore: true)]
    property? tax_behavior_present : Bool = false

    ENUM_VALIDATOR_FOR_TAX_BEHAVIOR = EnumValidator.new("tax_behavior", "String", ["exclusive", "inclusive", "unspecified"])

    # If set to true, will atomically remove the lookup key from the existing price, and assign it to this price.
    @[JSON::Field(key: "transfer_lookup_key", type: Bool?, presence: true, ignore_serialize: transfer_lookup_key.nil? && !transfer_lookup_key_present?)]
    property transfer_lookup_key : Bool?

    @[JSON::Field(ignore: true)]
    property? transfer_lookup_key_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @active : Bool? = nil,
      @expand : Array(String)? = nil,
      @lookup_key : String? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @nickname : String? = nil,
      @tax_behavior : String? = nil,
      @transfer_lookup_key : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@lookup_key.nil? && @lookup_key.to_s.size > 200
        invalid_properties.push("invalid value for \"lookup_key\", the character length must be smaller than or equal to 200.")
      end

      if !@nickname.nil? && @nickname.to_s.size > 5000
        invalid_properties.push("invalid value for \"nickname\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.valid?(@tax_behavior)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@lookup_key.nil? && @lookup_key.to_s.size > 200
      return false if !@nickname.nil? && @nickname.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.valid?(@tax_behavior)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] lookup_key Value to be assigned
    def lookup_key=(lookup_key : String?)
      if !lookup_key.nil? && lookup_key.to_s.size > 200
        raise ArgumentError.new("invalid value for \"lookup_key\", the character length must be smaller than or equal to 200.")
      end

      @lookup_key = lookup_key
    end

    # Custom attribute writer method with validation
    # @param [Object] nickname Value to be assigned
    def nickname=(nickname : String?)
      if !nickname.nil? && nickname.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"nickname\", the character length must be smaller than or equal to 5000.")
      end

      @nickname = nickname
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_behavior Object to be assigned
    def tax_behavior=(tax_behavior : String?)
      ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.valid!(tax_behavior)
      @tax_behavior = tax_behavior
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
    def_equals_and_hash(@active, @active_present, @expand, @expand_present, @lookup_key, @lookup_key_present, @metadata, @metadata_present, @nickname, @nickname_present, @tax_behavior, @tax_behavior_present, @transfer_lookup_key, @transfer_lookup_key_present)
  end
end
