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
  # A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
  class FinancialConnectionsSession
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "accounts", type: Stripe::BankConnectionsResourceLinkedAccountList1?, default: nil, required: true, nullable: false, emit_null: false)]
    getter accounts : Stripe::BankConnectionsResourceLinkedAccountList1? = nil

    # A value that will be passed to the client to launch the authentication flow.
    @[JSON::Field(key: "client_secret", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter client_secret : String? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["financial_connections.session"])

    # Permissions requested for accounts collected during this session.
    @[JSON::Field(key: "permissions", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter permissions : Array(String)? = nil

    ENUM_VALIDATOR_FOR_PERMISSIONS = EnumValidator.new("permissions", "Array(String)", ["balances", "ownership", "payment_method", "transactions"])

    # Optional properties

    @[JSON::Field(key: "account_holder", type: Stripe::FinancialConnectionsSessionAccountHolder?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_holder.nil? && !account_holder_present?)]
    getter account_holder : Stripe::FinancialConnectionsSessionAccountHolder? = nil

    @[JSON::Field(ignore: true)]
    property? account_holder_present : Bool = false

    @[JSON::Field(key: "filters", type: Stripe::BankConnectionsResourceLinkAccountSessionFilters?, default: nil, required: false, nullable: false, emit_null: false)]
    getter filters : Stripe::BankConnectionsResourceLinkAccountSessionFilters? = nil

    # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
    @[JSON::Field(key: "return_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter return_url : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @accounts : Stripe::BankConnectionsResourceLinkedAccountList1? = nil,
      @client_secret : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @permissions : Array(String)? = nil,
      # Optional properties
      @account_holder : Stripe::FinancialConnectionsSessionAccountHolder? = nil,
      @filters : Stripe::BankConnectionsResourceLinkAccountSessionFilters? = nil,
      @return_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"accounts\" is required and cannot be null") if @accounts.nil?
      if _accounts = @accounts
        if _accounts.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_accounts.list_invalid_properties_for("accounts"))
        end
      end
      invalid_properties.push("\"client_secret\" is required and cannot be null") if @client_secret.nil?
      if _client_secret = @client_secret
        if _client_secret.to_s.size > 5000
          invalid_properties.push("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_PERMISSIONS.error_message) unless ENUM_VALIDATOR_FOR_PERMISSIONS.all_valid?(@permissions, false)
      if _account_holder = @account_holder
        if _account_holder.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_account_holder.list_invalid_properties_for("account_holder"))
        end
      end
      if _filters = @filters
        if _filters.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_filters.list_invalid_properties_for("filters"))
        end
      end
      if _return_url = @return_url
        if _return_url.to_s.size > 5000
          invalid_properties.push("invalid value for \"return_url\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @accounts.nil?
      if _accounts = @accounts
        if _accounts.is_a?(OpenApi::Validatable)
          return false unless _accounts.valid?
        end
      end
      return false if @client_secret.nil?
      if _client_secret = @client_secret
        return false if _client_secret.to_s.size > 5000
      end
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_PERMISSIONS.all_valid?(@permissions, false)
      if _account_holder = @account_holder
        if _account_holder.is_a?(OpenApi::Validatable)
          return false unless _account_holder.valid?
        end
      end
      if _filters = @filters
        if _filters.is_a?(OpenApi::Validatable)
          return false unless _filters.valid?
        end
      end
      if _return_url = @return_url
        return false if _return_url.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] accounts Object to be assigned
    def accounts=(accounts : Stripe::BankConnectionsResourceLinkedAccountList1?)
      if accounts.nil?
        raise ArgumentError.new("\"accounts\" is required and cannot be null")
      end
      _accounts = accounts.not_nil!
      if _accounts.is_a?(OpenApi::Validatable)
        _accounts.validate
      end
      @accounts = _accounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_secret Object to be assigned
    def client_secret=(client_secret : String?)
      if client_secret.nil?
        raise ArgumentError.new("\"client_secret\" is required and cannot be null")
      end
      _client_secret = client_secret.not_nil!
      if _client_secret.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      @client_secret = _client_secret
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] permissions Object to be assigned
    def permissions=(permissions : Array(String)?)
      if permissions.nil?
        raise ArgumentError.new("\"permissions\" is required and cannot be null")
      end
      _permissions = permissions.not_nil!
      ENUM_VALIDATOR_FOR_PERMISSIONS.all_valid!(_permissions)
      @permissions = _permissions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder Object to be assigned
    def account_holder=(account_holder : Stripe::FinancialConnectionsSessionAccountHolder?)
      if account_holder.nil?
        return @account_holder = nil
      end
      _account_holder = account_holder.not_nil!
      if _account_holder.is_a?(OpenApi::Validatable)
        _account_holder.validate
      end
      @account_holder = _account_holder
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] filters Object to be assigned
    def filters=(filters : Stripe::BankConnectionsResourceLinkAccountSessionFilters?)
      if filters.nil?
        return @filters = nil
      end
      _filters = filters.not_nil!
      if _filters.is_a?(OpenApi::Validatable)
        _filters.validate
      end
      @filters = _filters
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : String?)
      if return_url.nil?
        return @return_url = nil
      end
      _return_url = return_url.not_nil!
      if _return_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"return_url\", the character length must be smaller than or equal to 5000.")
      end

      @return_url = _return_url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@accounts, @client_secret, @id, @livemode, @object, @permissions, @account_holder, @account_holder_present, @filters, @return_url)
  end
end
