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
  class PersonRequirements1
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Fields that need to be collected to keep the person's account enabled. If not collected by the account's `current_deadline`, these fields appear in `past_due` as well, and the account is disabled.
    @[JSON::Field(key: "currently_due", type: Array(String)?)]
    property currently_due : Array(String)?

    # Fields that are `currently_due` and need to be collected again because validation or verification failed.
    @[JSON::Field(key: "errors", type: Array(AccountRequirementsError)?)]
    property errors : Array(AccountRequirementsError)?

    # Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well, and the account's `current_deadline` becomes set.
    @[JSON::Field(key: "eventually_due", type: Array(String)?)]
    property eventually_due : Array(String)?

    # Fields that weren't collected by the account's `current_deadline`. These fields need to be collected to enable the person's account.
    @[JSON::Field(key: "past_due", type: Array(String)?)]
    property past_due : Array(String)?

    # Fields that may become required depending on the results of verification or review. Will be an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`.
    @[JSON::Field(key: "pending_verification", type: Array(String)?)]
    property pending_verification : Array(String)?

    # Optional properties

    # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
    @[JSON::Field(key: "alternatives", type: Array(AccountRequirementsAlternative)?, presence: true, ignore_serialize: alternatives.nil? && !alternatives_present?)]
    property alternatives : Array(AccountRequirementsAlternative)?

    @[JSON::Field(ignore: true)]
    property? alternatives_present : Bool = false

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::PersonRequirements,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currently_due : Array(String)? = nil,
      @errors : Array(AccountRequirementsError)? = nil,
      @eventually_due : Array(String)? = nil,
      @past_due : Array(String)? = nil,
      @pending_verification : Array(String)? = nil,
      # Optional properties
      @alternatives : Array(AccountRequirementsAlternative)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
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
    def_equals_and_hash(@currently_due, @errors, @eventually_due, @past_due, @pending_verification, @alternatives)
  end
end