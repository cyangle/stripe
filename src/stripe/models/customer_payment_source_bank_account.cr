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
  class CustomerPaymentSourceBankAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "account_number", type: String)]
    getter account_number : String

    @[JSON::Field(key: "country", type: String)]
    getter country : String

    # Optional properties

    @[JSON::Field(key: "account_holder_name", type: String?, presence: true, ignore_serialize: account_holder_name.nil? && !account_holder_name_present?)]
    getter account_holder_name : String?

    @[JSON::Field(ignore: true)]
    property? account_holder_name_present : Bool = false

    @[JSON::Field(key: "account_holder_type", type: String?, presence: true, ignore_serialize: account_holder_type.nil? && !account_holder_type_present?)]
    getter account_holder_type : String?

    @[JSON::Field(ignore: true)]
    property? account_holder_type_present : Bool = false

    ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE = EnumValidator.new("account_holder_type", "String", ["company", "individual"])

    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    property currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    @[JSON::Field(key: "object", type: String?, presence: true, ignore_serialize: object.nil? && !object_present?)]
    getter object : String?

    @[JSON::Field(ignore: true)]
    property? object_present : Bool = false

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["bank_account"])

    @[JSON::Field(key: "routing_number", type: String?, presence: true, ignore_serialize: routing_number.nil? && !routing_number_present?)]
    getter routing_number : String?

    @[JSON::Field(ignore: true)]
    property? routing_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_number : String,
      @country : String,
      # Optional properties
      @account_holder_name : String? = nil,
      @account_holder_type : String? = nil,
      @currency : String? = nil,
      @object : String? = nil,
      @routing_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @account_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      if @country.to_s.size > 5000
        invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      if !@account_holder_name.nil? && @account_holder_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE.error_message) unless ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE.valid?(@account_holder_type)

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object)

      if !@routing_number.nil? && @routing_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"routing_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_number.to_s.size > 5000
      return false if @country.to_s.size > 5000
      return false if !@account_holder_name.nil? && @account_holder_name.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE.valid?(@account_holder_type)
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object)
      return false if !@routing_number.nil? && @routing_number.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number : String)
      if account_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country : String)
      if country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] account_holder_name Value to be assigned
    def account_holder_name=(account_holder_name : String?)
      if !account_holder_name.nil? && account_holder_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      @account_holder_name = account_holder_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_type Object to be assigned
    def account_holder_type=(account_holder_type : String?)
      ENUM_VALIDATOR_FOR_ACCOUNT_HOLDER_TYPE.valid!(account_holder_type)
      @account_holder_type = account_holder_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object)
      @object = object
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
    def_equals_and_hash(@account_number, @country, @account_holder_name, @account_holder_name_present, @account_holder_type, @account_holder_type_present, @currency, @currency_present, @object, @object_present, @routing_number, @routing_number_present)
  end
end
