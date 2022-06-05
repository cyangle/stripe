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
  class DiscountParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "coupon", type: String?, presence: true, ignore_serialize: coupon.nil? && !coupon_present?)]
    getter coupon : String?

    @[JSON::Field(ignore: true)]
    property? coupon_present : Bool = false

    @[JSON::Field(key: "promotion_code", type: String?, presence: true, ignore_serialize: promotion_code.nil? && !promotion_code_present?)]
    getter promotion_code : String?

    @[JSON::Field(ignore: true)]
    property? promotion_code_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @coupon : String? = nil,
      @promotion_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@coupon.nil? && @coupon.to_s.size > 5000
        invalid_properties.push("invalid value for \"coupon\", the character length must be smaller than or equal to 5000.")
      end

      if !@promotion_code.nil? && @promotion_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"promotion_code\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@coupon.nil? && @coupon.to_s.size > 5000
      return false if !@promotion_code.nil? && @promotion_code.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] coupon Value to be assigned
    def coupon=(coupon)
      if !coupon.nil? && coupon.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"coupon\", the character length must be smaller than or equal to 5000.")
      end

      @coupon = coupon
    end

    # Custom attribute writer method with validation
    # @param [Object] promotion_code Value to be assigned
    def promotion_code=(promotion_code)
      if !promotion_code.nil? && promotion_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"promotion_code\", the character length must be smaller than or equal to 5000.")
      end

      @promotion_code = promotion_code
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
    def_equals_and_hash(@coupon, @promotion_code)
  end
end
