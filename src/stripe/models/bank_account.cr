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
  # These bank accounts are payment methods on `Customer` objects.  On the other hand [External Accounts](https://stripe.com/docs/api#external_accounts) are transfer destinations on `Account` objects for [Custom accounts](https://stripe.com/docs/connect/custom-accounts). They can be bank accounts or debit cards as well, and are documented in the links above.  Related guide: [Bank Debits and Transfers](https://stripe.com/docs/payments/bank-debits-transfers).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BankAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Two-letter ISO code representing the country the bank account is located in.
    @[JSON::Field(key: "country", type: String)]
    getter country : String

    # Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # The last four digits of the bank account number.
    @[JSON::Field(key: "last4", type: String)]
    getter last4 : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["bank_account"])

    # For bank accounts, possible values are `new`, `validated`, `verified`, `verification_failed`, or `errored`. A bank account that hasn't had any activity or validation performed is `new`. If Stripe can determine that the bank account exists, its status will be `validated`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be `verified`. If the verification failed for any reason, such as microdeposit failure, the status will be `verification_failed`. If a transfer sent to this bank account fails, we'll set the status to `errored` and will not continue to send transfers until the bank details are updated.  For external accounts, possible values are `new` and `errored`. Validations aren't run against external accounts because they're only used for payouts. This means the other statuses don't apply. If a transfer fails, the status is set to `errored` and transfers are stopped until account details are updated.
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    # Optional properties

    @[JSON::Field(key: "account", type: BankAccountAccount?, presence: true, ignore_serialize: account.nil? && !account_present?)]
    property account : BankAccountAccount?

    @[JSON::Field(ignore: true)]
    property? account_present : Bool = false

    # The name of the person or business that owns the bank account.
    @[JSON::Field(key: "account_holder_name", type: String?, presence: true, ignore_serialize: account_holder_name.nil? && !account_holder_name_present?)]
    getter account_holder_name : String?

    @[JSON::Field(ignore: true)]
    property? account_holder_name_present : Bool = false

    # The type of entity that holds the account. This can be either `individual` or `company`.
    @[JSON::Field(key: "account_holder_type", type: String?, presence: true, ignore_serialize: account_holder_type.nil? && !account_holder_type_present?)]
    getter account_holder_type : String?

    @[JSON::Field(ignore: true)]
    property? account_holder_type_present : Bool = false

    # The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
    @[JSON::Field(key: "account_type", type: String?, presence: true, ignore_serialize: account_type.nil? && !account_type_present?)]
    getter account_type : String?

    @[JSON::Field(ignore: true)]
    property? account_type_present : Bool = false

    # A set of available payout methods for this bank account. Only values from this set should be passed as the `method` when creating a payout.
    @[JSON::Field(key: "available_payout_methods", type: Array(String)?, presence: true, ignore_serialize: available_payout_methods.nil? && !available_payout_methods_present?)]
    getter available_payout_methods : Array(String)?

    @[JSON::Field(ignore: true)]
    property? available_payout_methods_present : Bool = false

    ENUM_VALIDATOR_FOR_AVAILABLE_PAYOUT_METHODS = EnumValidator.new("available_payout_methods", "String", ["instant", "standard"])

    # Name of the bank associated with the routing number (e.g., `WELLS FARGO`).
    @[JSON::Field(key: "bank_name", type: String?, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String?

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    @[JSON::Field(key: "customer", type: BankAccountCustomer?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    property customer : BankAccountCustomer?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # Whether this bank account is the default external account for its currency.
    @[JSON::Field(key: "default_for_currency", type: Bool?, presence: true, ignore_serialize: default_for_currency.nil? && !default_for_currency_present?)]
    property default_for_currency : Bool?

    @[JSON::Field(ignore: true)]
    property? default_for_currency_present : Bool = false

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String?

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The routing transit number for the bank account.
    @[JSON::Field(key: "routing_number", type: String?, presence: true, ignore_serialize: routing_number.nil? && !routing_number_present?)]
    getter routing_number : String?

    @[JSON::Field(ignore: true)]
    property? routing_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @country : String, 
      @currency : String, 
      @id : String, 
      @last4 : String, 
      @object : String, 
      @status : String, 
      # Optional properties
      @account : BankAccountAccount? = nil, 
      @account_holder_name : String? = nil, 
      @account_holder_type : String? = nil, 
      @account_type : String? = nil, 
      @available_payout_methods : Array(String)? = nil, 
      @bank_name : String? = nil, 
      @customer : BankAccountCustomer? = nil, 
      @default_for_currency : Bool? = nil, 
      @fingerprint : String? = nil, 
      @metadata : Hash(String, String)? = nil, 
      @routing_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @country.to_s.size > 5000
        invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if @status.to_s.size > 5000
        invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      if !@account_holder_name.nil? && @account_holder_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@account_holder_type.nil? && @account_holder_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_holder_type\", the character length must be smaller than or equal to 5000.")
      end

      if !@account_type.nil? && @account_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_type\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_AVAILABLE_PAYOUT_METHODS.error_message) unless ENUM_VALIDATOR_FOR_AVAILABLE_PAYOUT_METHODS.all_valid?(@available_payout_methods)

      if !@bank_name.nil? && @bank_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
        invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      if !@routing_number.nil? && @routing_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"routing_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @country.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false if @last4.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @status.to_s.size > 5000
      return false if !@account_holder_name.nil? && @account_holder_name.to_s.size > 5000
      return false if !@account_holder_type.nil? && @account_holder_type.to_s.size > 5000
      return false if !@account_type.nil? && @account_type.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_AVAILABLE_PAYOUT_METHODS.all_valid?(@available_payout_methods)
      return false if !@bank_name.nil? && @bank_name.to_s.size > 5000
      return false if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
      return false if !@routing_number.nil? && @routing_number.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] last4 Value to be assigned
    def last4=(last4)
      if last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] account_holder_name Value to be assigned
    def account_holder_name=(account_holder_name)
      if !account_holder_name.nil? && account_holder_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      @account_holder_name = account_holder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_holder_type Value to be assigned
    def account_holder_type=(account_holder_type)
      if !account_holder_type.nil? && account_holder_type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_holder_type\", the character length must be smaller than or equal to 5000.")
      end

      @account_holder_type = account_holder_type
    end

    # Custom attribute writer method with validation
    # @param [Object] account_type Value to be assigned
    def account_type=(account_type)
      if !account_type.nil? && account_type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_type\", the character length must be smaller than or equal to 5000.")
      end

      @account_type = account_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] available_payout_methods Object to be assigned
    def available_payout_methods=(available_payout_methods)
      ENUM_VALIDATOR_FOR_AVAILABLE_PAYOUT_METHODS.all_valid!(available_payout_methods)
      @available_payout_methods = available_payout_methods
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name Value to be assigned
    def bank_name=(bank_name)
      if !bank_name.nil? && bank_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] fingerprint Value to be assigned
    def fingerprint=(fingerprint)
      if !fingerprint.nil? && fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = fingerprint
    end

    # Custom attribute writer method with validation
    # @param [Object] routing_number Value to be assigned
    def routing_number=(routing_number)
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
    def_equals_and_hash(@country, @currency, @id, @last4, @object, @status, @account, @account_holder_name, @account_holder_type, @account_type, @available_payout_methods, @bank_name, @customer, @default_for_currency, @fingerprint, @metadata, @routing_number)
  end
end
