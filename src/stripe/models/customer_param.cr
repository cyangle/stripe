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
  # Default invoice settings for this customer.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class CustomerParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "custom_fields", type: CustomerParamCustomFields?, presence: true, ignore_serialize: custom_fields.nil? && !custom_fields_present?)]
    property custom_fields : CustomerParamCustomFields?

    @[JSON::Field(ignore: true)]
    property? custom_fields_present : Bool = false

    @[JSON::Field(key: "default_payment_method", type: String?, presence: true, ignore_serialize: default_payment_method.nil? && !default_payment_method_present?)]
    getter default_payment_method : String?

    @[JSON::Field(ignore: true)]
    property? default_payment_method_present : Bool = false

    @[JSON::Field(key: "footer", type: String?, presence: true, ignore_serialize: footer.nil? && !footer_present?)]
    getter footer : String?

    @[JSON::Field(ignore: true)]
    property? footer_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @custom_fields : CustomerParamCustomFields? = nil,
      @default_payment_method : String? = nil,
      @footer : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@default_payment_method.nil? && @default_payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@footer.nil? && @footer.to_s.size > 5000
        invalid_properties.push("invalid value for \"footer\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@default_payment_method.nil? && @default_payment_method.to_s.size > 5000
      return false if !@footer.nil? && @footer.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] default_payment_method Value to be assigned
    def default_payment_method=(default_payment_method : String?)
      if !default_payment_method.nil? && default_payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @default_payment_method = default_payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] footer Value to be assigned
    def footer=(footer : String?)
      if !footer.nil? && footer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"footer\", the character length must be smaller than or equal to 5000.")
      end

      @footer = footer
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
    def_equals_and_hash(@custom_fields, @custom_fields_present, @default_payment_method, @default_payment_method_present, @footer, @footer_present)
  end
end
