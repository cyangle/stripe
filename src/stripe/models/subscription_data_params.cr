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
  # A subset of parameters to be passed to subscription creation for Checkout Sessions in `subscription` mode.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class SubscriptionDataParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "application_fee_percent", type: Float64?, presence: true, ignore_serialize: application_fee_percent.nil? && !application_fee_percent_present?)]
    property application_fee_percent : Float64?

    @[JSON::Field(ignore: true)]
    property? application_fee_percent_present : Bool = false

    @[JSON::Field(key: "default_tax_rates", type: Array(String)?, presence: true, ignore_serialize: default_tax_rates.nil? && !default_tax_rates_present?)]
    property default_tax_rates : Array(String)?

    @[JSON::Field(ignore: true)]
    property? default_tax_rates_present : Bool = false

    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "items", type: Array(SubscriptionDataItemParam)?, presence: true, ignore_serialize: items.nil? && !items_present?)]
    property items : Array(SubscriptionDataItemParam)?

    @[JSON::Field(ignore: true)]
    property? items_present : Bool = false

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "transfer_data", type: TransferDataSpecs2?, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    property transfer_data : TransferDataSpecs2?

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    @[JSON::Field(key: "trial_end", type: Int64?, presence: true, ignore_serialize: trial_end.nil? && !trial_end_present?)]
    property trial_end : Int64?

    @[JSON::Field(ignore: true)]
    property? trial_end_present : Bool = false

    @[JSON::Field(key: "trial_period_days", type: Int64?, presence: true, ignore_serialize: trial_period_days.nil? && !trial_period_days_present?)]
    property trial_period_days : Int64?

    @[JSON::Field(ignore: true)]
    property? trial_period_days_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @application_fee_percent : Float64? = nil,
      @default_tax_rates : Array(String)? = nil,
      @description : String? = nil,
      @items : Array(SubscriptionDataItemParam)? = nil,
      @metadata : Hash(String, String)? = nil,
      @transfer_data : TransferDataSpecs2? = nil,
      @trial_end : Int64? = nil,
      @trial_period_days : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@description.nil? && @description.to_s.size > 500
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 500.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@description.nil? && @description.to_s.size > 500

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description : String?)
      if !description.nil? && description.to_s.size > 500
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 500.")
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
    def_equals_and_hash(@application_fee_percent, @application_fee_percent_present, @default_tax_rates, @default_tax_rates_present, @description, @description_present, @items, @items_present, @metadata, @metadata_present, @transfer_data, @transfer_data_present, @trial_end, @trial_end_present, @trial_period_days, @trial_period_days_present)
  end
end
