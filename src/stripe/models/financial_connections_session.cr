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

    VALID_VALUES_FOR_OBJECT = StaticArray["financial_connections.session"]

    # Permissions requested for accounts collected during this session.
    @[JSON::Field(key: "permissions", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter permissions : Array(String)? = nil

    VALID_VALUES_FOR_PERMISSIONS = StaticArray["balances", "ownership", "payment_method", "transactions"]

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
        invalid_properties.concat(_accounts.list_invalid_properties_for("accounts")) if _accounts.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"client_secret\" is required and cannot be null") if @client_secret.nil?

      if _client_secret = @client_secret
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("client_secret", _client_secret.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      if _object = @object
        invalid_properties.push(OpenApi::EnumValidator.error_message("object", VALID_VALUES_FOR_OBJECT)) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"permissions\" is required and cannot be null") if @permissions.nil?

      if _permissions = @permissions
        invalid_properties.push(OpenApi::EnumValidator.error_message("permissions", VALID_VALUES_FOR_PERMISSIONS)) unless OpenApi::EnumValidator.valid?(_permissions, VALID_VALUES_FOR_PERMISSIONS)
      end
      if _account_holder = @account_holder
        invalid_properties.concat(_account_holder.list_invalid_properties_for("account_holder")) if _account_holder.is_a?(OpenApi::Validatable)
      end
      if _filters = @filters
        invalid_properties.concat(_filters.list_invalid_properties_for("filters")) if _filters.is_a?(OpenApi::Validatable)
      end
      if _return_url = @return_url
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("return_url", _return_url.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @accounts.nil?
      if _accounts = @accounts
        return false if _accounts.is_a?(OpenApi::Validatable) && !_accounts.valid?
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

      return false if @object.nil?
      if _object = @object
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @permissions.nil?
      if _permissions = @permissions
        return false unless OpenApi::EnumValidator.valid?(_permissions, VALID_VALUES_FOR_PERMISSIONS)
      end

      if _account_holder = @account_holder
        return false if _account_holder.is_a?(OpenApi::Validatable) && !_account_holder.valid?
      end

      if _filters = @filters
        return false if _filters.is_a?(OpenApi::Validatable) && !_filters.valid?
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
      _accounts.validate if _accounts.is_a?(OpenApi::Validatable)
      @accounts = _accounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_secret Object to be assigned
    def client_secret=(client_secret : String?)
      if client_secret.nil?
        raise ArgumentError.new("\"client_secret\" is required and cannot be null")
      end
      _client_secret = client_secret.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("client_secret", _client_secret.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
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
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] permissions Object to be assigned
    def permissions=(permissions : Array(String)?)
      if permissions.nil?
        raise ArgumentError.new("\"permissions\" is required and cannot be null")
      end
      _permissions = permissions.not_nil!
      OpenApi::EnumValidator.validate("permissions", _permissions, VALID_VALUES_FOR_PERMISSIONS)
      @permissions = _permissions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder Object to be assigned
    def account_holder=(account_holder : Stripe::FinancialConnectionsSessionAccountHolder?)
      if account_holder.nil?
        return @account_holder = nil
      end
      _account_holder = account_holder.not_nil!
      _account_holder.validate if _account_holder.is_a?(OpenApi::Validatable)
      @account_holder = _account_holder
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] filters Object to be assigned
    def filters=(filters : Stripe::BankConnectionsResourceLinkAccountSessionFilters?)
      if filters.nil?
        return @filters = nil
      end
      _filters = filters.not_nil!
      _filters.validate if _filters.is_a?(OpenApi::Validatable)
      @filters = _filters
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : String?)
      if return_url.nil?
        return @return_url = nil
      end
      _return_url = return_url.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("return_url", _return_url.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
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
