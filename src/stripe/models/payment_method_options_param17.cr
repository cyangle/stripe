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
  class PaymentMethodOptionsParam17
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    @[JSON::Field(key: "confirmation_number", type: String?, presence: true, ignore_serialize: confirmation_number.nil? && !confirmation_number_present?)]
    getter confirmation_number : String?

    @[JSON::Field(ignore: true)]
    property? confirmation_number_present : Bool = false

    @[JSON::Field(key: "expires_after_days", type: UpdateParams1ApplicationFeeAmount?, presence: true, ignore_serialize: expires_after_days.nil? && !expires_after_days_present?)]
    property expires_after_days : UpdateParams1ApplicationFeeAmount?

    @[JSON::Field(ignore: true)]
    property? expires_after_days_present : Bool = false

    @[JSON::Field(key: "expires_at", type: GetInvoicesUpcomingSubscriptionCancelAtParameter?, presence: true, ignore_serialize: expires_at.nil? && !expires_at_present?)]
    property expires_at : GetInvoicesUpcomingSubscriptionCancelAtParameter?

    @[JSON::Field(ignore: true)]
    property? expires_at_present : Bool = false

    @[JSON::Field(key: "product_description", type: String?, presence: true, ignore_serialize: product_description.nil? && !product_description_present?)]
    getter product_description : String?

    @[JSON::Field(ignore: true)]
    property? product_description_present : Bool = false

    @[JSON::Field(key: "setup_future_usage", type: String?, presence: true, ignore_serialize: setup_future_usage.nil? && !setup_future_usage_present?)]
    getter setup_future_usage : String?

    @[JSON::Field(ignore: true)]
    property? setup_future_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["none"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @confirmation_number : String? = nil, 
      @expires_after_days : UpdateParams1ApplicationFeeAmount? = nil, 
      @expires_at : GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil, 
      @product_description : String? = nil, 
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@confirmation_number.nil? && @confirmation_number.to_s.size > 11
        invalid_properties.push("invalid value for \"confirmation_number\", the character length must be smaller than or equal to 11.")
      end

      if !@product_description.nil? && @product_description.to_s.size > 22
        invalid_properties.push("invalid value for \"product_description\", the character length must be smaller than or equal to 22.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@confirmation_number.nil? && @confirmation_number.to_s.size > 11
      return false if !@product_description.nil? && @product_description.to_s.size > 22
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] confirmation_number Value to be assigned
    def confirmation_number=(confirmation_number)
      if !confirmation_number.nil? && confirmation_number.to_s.size > 11
        raise ArgumentError.new("invalid value for \"confirmation_number\", the character length must be smaller than or equal to 11.")
      end

      @confirmation_number = confirmation_number
    end

    # Custom attribute writer method with validation
    # @param [Object] product_description Value to be assigned
    def product_description=(product_description)
      if !product_description.nil? && product_description.to_s.size > 22
        raise ArgumentError.new("invalid value for \"product_description\", the character length must be smaller than or equal to 22.")
      end

      @product_description = product_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage)
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(setup_future_usage)
      @setup_future_usage = setup_future_usage
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
    def_equals_and_hash(@confirmation_number, @expires_after_days, @expires_at, @product_description, @setup_future_usage)
  end
end
