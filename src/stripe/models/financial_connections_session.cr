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
  # A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class FinancialConnectionsSession
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "accounts", type: BankConnectionsResourceLinkedAccountList1)]
    property accounts : BankConnectionsResourceLinkedAccountList1

    # A value that will be passed to the client to launch the authentication flow.
    @[JSON::Field(key: "client_secret", type: String)]
    getter client_secret : String

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["financial_connections.session"])

    # Permissions requested for accounts collected during this session.
    @[JSON::Field(key: "permissions", type: Array(String))]
    getter permissions : Array(String)

    ENUM_VALIDATOR_FOR_PERMISSIONS = EnumValidator.new("permissions", "Array(String)", ["balances", "ownership", "payment_method", "transactions"])

    # Optional properties

    @[JSON::Field(key: "account_holder", type: FinancialConnectionsSessionAccountHolder?, presence: true, ignore_serialize: account_holder.nil? && !account_holder_present?)]
    property account_holder : FinancialConnectionsSessionAccountHolder?

    @[JSON::Field(ignore: true)]
    property? account_holder_present : Bool = false

    @[JSON::Field(key: "filters", type: BankConnectionsResourceLinkAccountSessionFilters?, presence: true, ignore_serialize: filters.nil? && !filters_present?)]
    property filters : BankConnectionsResourceLinkAccountSessionFilters?

    @[JSON::Field(ignore: true)]
    property? filters_present : Bool = false

    # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
    @[JSON::Field(key: "return_url", type: String?, presence: true, ignore_serialize: return_url.nil? && !return_url_present?)]
    getter return_url : String?

    @[JSON::Field(ignore: true)]
    property? return_url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @accounts : BankConnectionsResourceLinkedAccountList1,
      @client_secret : String,
      @id : String,
      @livemode : Bool,
      @object : String,
      @permissions : Array(String),
      # Optional properties
      @account_holder : FinancialConnectionsSessionAccountHolder? = nil,
      @filters : BankConnectionsResourceLinkAccountSessionFilters? = nil,
      @return_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @client_secret.to_s.size > 5000
        invalid_properties.push("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_PERMISSIONS.error_message) unless ENUM_VALIDATOR_FOR_PERMISSIONS.all_valid?(@permissions, false)

      if !@return_url.nil? && @return_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"return_url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @client_secret.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_PERMISSIONS.all_valid?(@permissions, false)
      return false if !@return_url.nil? && @return_url.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] client_secret Value to be assigned
    def client_secret=(client_secret)
      if client_secret.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      @client_secret = client_secret
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] permissions Object to be assigned
    def permissions=(permissions)
      ENUM_VALIDATOR_FOR_PERMISSIONS.all_valid!(permissions, false)
      @permissions = permissions
    end

    # Custom attribute writer method with validation
    # @param [Object] return_url Value to be assigned
    def return_url=(return_url)
      if !return_url.nil? && return_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"return_url\", the character length must be smaller than or equal to 5000.")
      end

      @return_url = return_url
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
    def_equals_and_hash(@accounts, @client_secret, @id, @livemode, @object, @permissions, @account_holder, @filters, @return_url)
  end
end