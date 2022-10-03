#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class OrdersV2ResourceClientPermissions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Allows or disallows billing details to be set on an Order with a publishable key and Order client_secret
    @[JSON::Field(key: "billing_details", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: billing_details.nil? && !billing_details_present?)]
    getter billing_details : String? = nil
    ERROR_MESSAGE_FOR_BILLING_DETAILS = "invalid value for \"billing_details\", must be one of [allow, disallow]."
    VALID_VALUES_FOR_BILLING_DETAILS  = StaticArray["allow", "disallow"]

    @[JSON::Field(ignore: true)]
    property? billing_details_present : Bool = false

    # Allows or disallows promotion codes to be set on an Order with a publishable key and Order client_secret
    @[JSON::Field(key: "promotion_codes", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: promotion_codes.nil? && !promotion_codes_present?)]
    getter promotion_codes : String? = nil
    ERROR_MESSAGE_FOR_PROMOTION_CODES = "invalid value for \"promotion_codes\", must be one of [allow, disallow]."
    VALID_VALUES_FOR_PROMOTION_CODES  = StaticArray["allow", "disallow"]

    @[JSON::Field(ignore: true)]
    property? promotion_codes_present : Bool = false

    # Allows or disallows shipping details to be set on an Order with a publishable key and Order client_secret
    @[JSON::Field(key: "shipping_details", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: shipping_details.nil? && !shipping_details_present?)]
    getter shipping_details : String? = nil
    ERROR_MESSAGE_FOR_SHIPPING_DETAILS = "invalid value for \"shipping_details\", must be one of [allow, disallow]."
    VALID_VALUES_FOR_SHIPPING_DETAILS  = StaticArray["allow", "disallow"]

    @[JSON::Field(ignore: true)]
    property? shipping_details_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @billing_details : String? = nil,
      @promotion_codes : String? = nil,
      @shipping_details : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_billing_details = @billing_details).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_BILLING_DETAILS) unless OpenApi::EnumValidator.valid?(_billing_details, VALID_VALUES_FOR_BILLING_DETAILS)
      end
      unless (_promotion_codes = @promotion_codes).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PROMOTION_CODES) unless OpenApi::EnumValidator.valid?(_promotion_codes, VALID_VALUES_FOR_PROMOTION_CODES)
      end
      unless (_shipping_details = @shipping_details).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SHIPPING_DETAILS) unless OpenApi::EnumValidator.valid?(_shipping_details, VALID_VALUES_FOR_SHIPPING_DETAILS)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_billing_details = @billing_details).nil?
        return false unless OpenApi::EnumValidator.valid?(_billing_details, VALID_VALUES_FOR_BILLING_DETAILS)
      end

      unless (_promotion_codes = @promotion_codes).nil?
        return false unless OpenApi::EnumValidator.valid?(_promotion_codes, VALID_VALUES_FOR_PROMOTION_CODES)
      end

      unless (_shipping_details = @shipping_details).nil?
        return false unless OpenApi::EnumValidator.valid?(_shipping_details, VALID_VALUES_FOR_SHIPPING_DETAILS)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_details Object to be assigned
    def billing_details=(billing_details : String?)
      if billing_details.nil?
        return @billing_details = nil
      end
      _billing_details = billing_details.not_nil!
      OpenApi::EnumValidator.validate("billing_details", _billing_details, VALID_VALUES_FOR_BILLING_DETAILS)
      @billing_details = _billing_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promotion_codes Object to be assigned
    def promotion_codes=(promotion_codes : String?)
      if promotion_codes.nil?
        return @promotion_codes = nil
      end
      _promotion_codes = promotion_codes.not_nil!
      OpenApi::EnumValidator.validate("promotion_codes", _promotion_codes, VALID_VALUES_FOR_PROMOTION_CODES)
      @promotion_codes = _promotion_codes
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_details Object to be assigned
    def shipping_details=(shipping_details : String?)
      if shipping_details.nil?
        return @shipping_details = nil
      end
      _shipping_details = shipping_details.not_nil!
      OpenApi::EnumValidator.validate("shipping_details", _shipping_details, VALID_VALUES_FOR_SHIPPING_DETAILS)
      @shipping_details = _shipping_details
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@billing_details, @billing_details_present, @promotion_codes, @promotion_codes_present, @shipping_details, @shipping_details_present)
  end
end
