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
  class UfaResourceInitiatingPaymentMethodDetailsUsBankAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # Bank name.
    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # The last four digits of the bank account number.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # The routing number for the bank account.
    @[JSON::Field(key: "routing_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: routing_number.nil? && !routing_number_present?)]
    getter routing_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? routing_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_name : String? = nil,
      @last4 : String? = nil,
      @routing_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _bank_name = @bank_name
        if _bank_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _last4 = @last4
        if _last4.to_s.size > 5000
          invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _routing_number = @routing_number
        if _routing_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"routing_number\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _bank_name = @bank_name
        return false if _bank_name.to_s.size > 5000
      end
      if _last4 = @last4
        return false if _last4.to_s.size > 5000
      end
      if _routing_number = @routing_number
        return false if _routing_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_name Object to be assigned
    def bank_name=(bank_name : String?)
      if bank_name.nil?
        return @bank_name = nil
      end
      _bank_name = bank_name.not_nil!
      if _bank_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      if _last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_number Object to be assigned
    def routing_number=(routing_number : String?)
      if routing_number.nil?
        return @routing_number = nil
      end
      _routing_number = routing_number.not_nil!
      if _routing_number.to_s.size > 5000
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
    def_equals_and_hash(@bank_name, @bank_name_present, @last4, @last4_present, @routing_number, @routing_number_present)
  end
end
