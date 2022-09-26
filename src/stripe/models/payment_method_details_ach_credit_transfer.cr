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
  class PaymentMethodDetailsAchCreditTransfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # Account number to transfer funds to.
    @[JSON::Field(key: "account_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_number.nil? && !account_number_present?)]
    getter account_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_number_present : Bool = false

    # Name of the bank associated with the routing number.
    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # Routing transit number for the bank account to transfer funds to.
    @[JSON::Field(key: "routing_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: routing_number.nil? && !routing_number_present?)]
    getter routing_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? routing_number_present : Bool = false

    # SWIFT code of the bank associated with the routing number.
    @[JSON::Field(key: "swift_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: swift_code.nil? && !swift_code_present?)]
    getter swift_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? swift_code_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_number : String? = nil,
      @bank_name : String? = nil,
      @routing_number : String? = nil,
      @swift_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _account_number = @account_number
        if _account_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _bank_name = @bank_name
        if _bank_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _routing_number = @routing_number
        if _routing_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"routing_number\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _swift_code = @swift_code
        if _swift_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"swift_code\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _account_number = @account_number
        return false if _account_number.to_s.size > 5000
      end
      if _bank_name = @bank_name
        return false if _bank_name.to_s.size > 5000
      end
      if _routing_number = @routing_number
        return false if _routing_number.to_s.size > 5000
      end
      if _swift_code = @swift_code
        return false if _swift_code.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(account_number : String?)
      if account_number.nil?
        return @account_number = nil
      end
      _account_number = account_number.not_nil!
      if _account_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      @account_number = account_number
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] swift_code Object to be assigned
    def swift_code=(swift_code : String?)
      if swift_code.nil?
        return @swift_code = nil
      end
      _swift_code = swift_code.not_nil!
      if _swift_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"swift_code\", the character length must be smaller than or equal to 5000.")
      end

      @swift_code = swift_code
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
    def_equals_and_hash(@account_number, @account_number_present, @bank_name, @bank_name_present, @routing_number, @routing_number_present, @swift_code, @swift_code_present)
  end
end
