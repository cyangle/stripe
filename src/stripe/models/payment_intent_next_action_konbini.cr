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
  # 
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentIntentNextActionKonbini
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The timestamp at which the pending Konbini payment expires.
    @[JSON::Field(key: "expires_at", type: Int64)]
    property expires_at : Int64

    @[JSON::Field(key: "stores", type: PaymentIntentNextActionKonbiniStores)]
    property stores : PaymentIntentNextActionKonbiniStores

    # Optional properties

    # The URL for the Konbini payment instructions page, which allows customers to view and print a Konbini voucher.
    @[JSON::Field(key: "hosted_voucher_url", type: String?, presence: true, ignore_serialize: hosted_voucher_url.nil? && !hosted_voucher_url_present?)]
    getter hosted_voucher_url : String?

    @[JSON::Field(ignore: true)]
    property? hosted_voucher_url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @expires_at : Int64, 
      @stores : PaymentIntentNextActionKonbiniStores, 
      # Optional properties
      @hosted_voucher_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@hosted_voucher_url.nil? && @hosted_voucher_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"hosted_voucher_url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@hosted_voucher_url.nil? && @hosted_voucher_url.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] hosted_voucher_url Value to be assigned
    def hosted_voucher_url=(hosted_voucher_url)
      if !hosted_voucher_url.nil? && hosted_voucher_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"hosted_voucher_url\", the character length must be smaller than or equal to 5000.")
      end

      @hosted_voucher_url = hosted_voucher_url
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
    def_equals_and_hash(@expires_at, @stores, @hosted_voucher_url)
  end
end
