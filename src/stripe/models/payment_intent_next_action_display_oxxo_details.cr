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
  class PaymentIntentNextActionDisplayOxxoDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The timestamp after which the OXXO voucher expires.
    @[JSON::Field(key: "expires_after", type: Int64?, presence: true, ignore_serialize: expires_after.nil? && !expires_after_present?)]
    property expires_after : Int64?

    @[JSON::Field(ignore: true)]
    property? expires_after_present : Bool = false

    # The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
    @[JSON::Field(key: "hosted_voucher_url", type: String?, presence: true, ignore_serialize: hosted_voucher_url.nil? && !hosted_voucher_url_present?)]
    getter hosted_voucher_url : String?

    @[JSON::Field(ignore: true)]
    property? hosted_voucher_url_present : Bool = false

    # OXXO reference number.
    @[JSON::Field(key: "number", type: String?, presence: true, ignore_serialize: number.nil? && !number_present?)]
    getter number : String?

    @[JSON::Field(ignore: true)]
    property? number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @expires_after : Int64? = nil,
      @hosted_voucher_url : String? = nil,
      @number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@hosted_voucher_url.nil? && @hosted_voucher_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"hosted_voucher_url\", the character length must be smaller than or equal to 5000.")
      end

      if !@number.nil? && @number.to_s.size > 5000
        invalid_properties.push("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@hosted_voucher_url.nil? && @hosted_voucher_url.to_s.size > 5000
      return false if !@number.nil? && @number.to_s.size > 5000

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

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if !number.nil? && number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      @number = number
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
    def_equals_and_hash(@expires_after, @hosted_voucher_url, @number)
  end
end
