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
  class SourceTransactionAchCreditTransferData
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Customer data associated with the transfer.
    @[JSON::Field(key: "customer_data", type: String?, presence: true, ignore_serialize: customer_data.nil? && !customer_data_present?)]
    getter customer_data : String?

    @[JSON::Field(ignore: true)]
    property? customer_data_present : Bool = false

    # Bank account fingerprint associated with the transfer.
    @[JSON::Field(key: "fingerprint", type: String?, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String?

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Last 4 digits of the account number associated with the transfer.
    @[JSON::Field(key: "last4", type: String?, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String?

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # Routing number associated with the transfer.
    @[JSON::Field(key: "routing_number", type: String?, presence: true, ignore_serialize: routing_number.nil? && !routing_number_present?)]
    getter routing_number : String?

    @[JSON::Field(ignore: true)]
    property? routing_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @customer_data : String? = nil,
      @fingerprint : String? = nil,
      @last4 : String? = nil,
      @routing_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@customer_data.nil? && @customer_data.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer_data\", the character length must be smaller than or equal to 5000.")
      end

      if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
        invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      if !@last4.nil? && @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      if !@routing_number.nil? && @routing_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"routing_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer_data.nil? && @customer_data.to_s.size > 5000
      return false if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
      return false if !@last4.nil? && @last4.to_s.size > 5000
      return false if !@routing_number.nil? && @routing_number.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_data Value to be assigned
    def customer_data=(customer_data : String?)
      if !customer_data.nil? && customer_data.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer_data\", the character length must be smaller than or equal to 5000.")
      end

      @customer_data = customer_data
    end

    # Custom attribute writer method with validation
    # @param [Object] fingerprint Value to be assigned
    def fingerprint=(fingerprint : String?)
      if !fingerprint.nil? && fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = fingerprint
    end

    # Custom attribute writer method with validation
    # @param [Object] last4 Value to be assigned
    def last4=(last4 : String?)
      if !last4.nil? && last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Custom attribute writer method with validation
    # @param [Object] routing_number Value to be assigned
    def routing_number=(routing_number : String?)
      if !routing_number.nil? && routing_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"routing_number\", the character length must be smaller than or equal to 5000.")
      end

      @routing_number = routing_number
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
    def_equals_and_hash(@customer_data, @customer_data_present, @fingerprint, @fingerprint_present, @last4, @last4_present, @routing_number, @routing_number_present)
  end
end
