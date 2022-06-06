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
  # Zengin Records contain Japan bank account details per the Zengin format.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class FundingInstructionsBankTransferZenginRecord
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The account holder name
    @[JSON::Field(key: "account_holder_name", type: String?, presence: true, ignore_serialize: account_holder_name.nil? && !account_holder_name_present?)]
    getter account_holder_name : String?

    @[JSON::Field(ignore: true)]
    property? account_holder_name_present : Bool = false

    # The account number
    @[JSON::Field(key: "account_number", type: String?, presence: true, ignore_serialize: account_number.nil? && !account_number_present?)]
    getter account_number : String?

    @[JSON::Field(ignore: true)]
    property? account_number_present : Bool = false

    # The bank account type. In Japan, this can only be `futsu` or `toza`.
    @[JSON::Field(key: "account_type", type: String?, presence: true, ignore_serialize: account_type.nil? && !account_type_present?)]
    getter account_type : String?

    @[JSON::Field(ignore: true)]
    property? account_type_present : Bool = false

    # The bank code of the account
    @[JSON::Field(key: "bank_code", type: String?, presence: true, ignore_serialize: bank_code.nil? && !bank_code_present?)]
    getter bank_code : String?

    @[JSON::Field(ignore: true)]
    property? bank_code_present : Bool = false

    # The bank name of the account
    @[JSON::Field(key: "bank_name", type: String?, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String?

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # The branch code of the account
    @[JSON::Field(key: "branch_code", type: String?, presence: true, ignore_serialize: branch_code.nil? && !branch_code_present?)]
    getter branch_code : String?

    @[JSON::Field(ignore: true)]
    property? branch_code_present : Bool = false

    # The branch name of the account
    @[JSON::Field(key: "branch_name", type: String?, presence: true, ignore_serialize: branch_name.nil? && !branch_name_present?)]
    getter branch_name : String?

    @[JSON::Field(ignore: true)]
    property? branch_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_holder_name : String? = nil,
      @account_number : String? = nil,
      @account_type : String? = nil,
      @bank_code : String? = nil,
      @bank_name : String? = nil,
      @branch_code : String? = nil,
      @branch_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@account_holder_name.nil? && @account_holder_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@account_number.nil? && @account_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      if !@account_type.nil? && @account_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_type\", the character length must be smaller than or equal to 5000.")
      end

      if !@bank_code.nil? && @bank_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@bank_name.nil? && @bank_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@branch_code.nil? && @branch_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"branch_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@branch_name.nil? && @branch_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"branch_name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_holder_name.nil? && @account_holder_name.to_s.size > 5000
      return false if !@account_number.nil? && @account_number.to_s.size > 5000
      return false if !@account_type.nil? && @account_type.to_s.size > 5000
      return false if !@bank_code.nil? && @bank_code.to_s.size > 5000
      return false if !@bank_name.nil? && @bank_name.to_s.size > 5000
      return false if !@branch_code.nil? && @branch_code.to_s.size > 5000
      return false if !@branch_name.nil? && @branch_name.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_holder_name Value to be assigned
    def account_holder_name=(account_holder_name : String?)
      if !account_holder_name.nil? && account_holder_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      @account_holder_name = account_holder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number : String?)
      if !account_number.nil? && account_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] account_type Value to be assigned
    def account_type=(account_type : String?)
      if !account_type.nil? && account_type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_type\", the character length must be smaller than or equal to 5000.")
      end

      @account_type = account_type
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_code Value to be assigned
    def bank_code=(bank_code : String?)
      if !bank_code.nil? && bank_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_code\", the character length must be smaller than or equal to 5000.")
      end

      @bank_code = bank_code
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name Value to be assigned
    def bank_name=(bank_name : String?)
      if !bank_name.nil? && bank_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] branch_code Value to be assigned
    def branch_code=(branch_code : String?)
      if !branch_code.nil? && branch_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"branch_code\", the character length must be smaller than or equal to 5000.")
      end

      @branch_code = branch_code
    end

    # Custom attribute writer method with validation
    # @param [Object] branch_name Value to be assigned
    def branch_name=(branch_name : String?)
      if !branch_name.nil? && branch_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"branch_name\", the character length must be smaller than or equal to 5000.")
      end

      @branch_name = branch_name
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
    def_equals_and_hash(@account_holder_name, @account_holder_name_present, @account_number, @account_number_present, @account_type, @account_type_present, @bank_code, @bank_code_present, @bank_name, @bank_name_present, @branch_code, @branch_code_present, @branch_name, @branch_name_present)
  end
end
