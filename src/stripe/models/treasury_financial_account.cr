#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Stripe Treasury provides users with a container for money called a FinancialAccount that is separate from their Payments balance. FinancialAccounts serve as the source and destination of Treasury’s money movement APIs.
  class TreasuryFinancialAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "balance", type: Stripe::TreasuryFinancialAccountsResourceBalance?, default: nil, required: true, nullable: false, emit_null: false)]
    getter balance : Stripe::TreasuryFinancialAccountsResourceBalance? = nil

    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The set of credentials that resolve to a FinancialAccount.
    @[JSON::Field(key: "financial_addresses", type: Array(Stripe::TreasuryFinancialAccountsResourceFinancialAddress)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter financial_addresses : Array(Stripe::TreasuryFinancialAccountsResourceFinancialAddress)? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [treasury.financial_account]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("treasury.financial_account")

    # The enum specifying what state the account is in.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [closed, open]."
    VALID_VALUES_FOR_STATUS  = String.static_array("closed", "open")

    @[JSON::Field(key: "status_details", type: Stripe::TreasuryFinancialAccountsResourceStatusDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status_details : Stripe::TreasuryFinancialAccountsResourceStatusDetails? = nil

    # The currencies the FinancialAccount can hold a balance in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
    @[JSON::Field(key: "supported_currencies", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter supported_currencies : Array(String)? = nil

    # End of Required Properties

    # Optional Properties

    # The array of paths to active Features in the Features hash.
    @[JSON::Field(key: "active_features", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active_features : Array(String)? = nil
    ERROR_MESSAGE_FOR_ACTIVE_FEATURES = "invalid value for \"active_features\", must be one of [card_issuing, deposit_insurance, financial_addresses.aba, inbound_transfers.ach, intra_stripe_flows, outbound_payments.ach, outbound_payments.us_domestic_wire, outbound_transfers.ach, outbound_transfers.us_domestic_wire, remote_deposit_capture]."
    VALID_VALUES_FOR_ACTIVE_FEATURES  = String.static_array("card_issuing", "deposit_insurance", "financial_addresses.aba", "inbound_transfers.ach", "intra_stripe_flows", "outbound_payments.ach", "outbound_payments.us_domestic_wire", "outbound_transfers.ach", "outbound_transfers.us_domestic_wire", "remote_deposit_capture")

    @[JSON::Field(key: "features", type: Stripe::TreasuryFinancialAccountFeatures?, default: nil, required: false, nullable: false, emit_null: false)]
    getter features : Stripe::TreasuryFinancialAccountFeatures? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The array of paths to pending Features in the Features hash.
    @[JSON::Field(key: "pending_features", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pending_features : Array(String)? = nil
    ERROR_MESSAGE_FOR_PENDING_FEATURES = "invalid value for \"pending_features\", must be one of [card_issuing, deposit_insurance, financial_addresses.aba, inbound_transfers.ach, intra_stripe_flows, outbound_payments.ach, outbound_payments.us_domestic_wire, outbound_transfers.ach, outbound_transfers.us_domestic_wire, remote_deposit_capture]."
    VALID_VALUES_FOR_PENDING_FEATURES  = String.static_array("card_issuing", "deposit_insurance", "financial_addresses.aba", "inbound_transfers.ach", "intra_stripe_flows", "outbound_payments.ach", "outbound_payments.us_domestic_wire", "outbound_transfers.ach", "outbound_transfers.us_domestic_wire", "remote_deposit_capture")

    @[JSON::Field(key: "platform_restrictions", type: Stripe::TreasuryFinancialAccountPlatformRestrictions?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: platform_restrictions.nil? && !platform_restrictions_present?)]
    getter platform_restrictions : Stripe::TreasuryFinancialAccountPlatformRestrictions? = nil

    @[JSON::Field(ignore: true)]
    property? platform_restrictions_present : Bool = false

    # The array of paths to restricted Features in the Features hash.
    @[JSON::Field(key: "restricted_features", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter restricted_features : Array(String)? = nil
    ERROR_MESSAGE_FOR_RESTRICTED_FEATURES = "invalid value for \"restricted_features\", must be one of [card_issuing, deposit_insurance, financial_addresses.aba, inbound_transfers.ach, intra_stripe_flows, outbound_payments.ach, outbound_payments.us_domestic_wire, outbound_transfers.ach, outbound_transfers.us_domestic_wire, remote_deposit_capture]."
    VALID_VALUES_FOR_RESTRICTED_FEATURES  = String.static_array("card_issuing", "deposit_insurance", "financial_addresses.aba", "inbound_transfers.ach", "intra_stripe_flows", "outbound_payments.ach", "outbound_payments.us_domestic_wire", "outbound_transfers.ach", "outbound_transfers.us_domestic_wire", "remote_deposit_capture")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @balance : Stripe::TreasuryFinancialAccountsResourceBalance? = nil,
      @country : String? = nil,
      @created : Int64? = nil,
      @financial_addresses : Array(Stripe::TreasuryFinancialAccountsResourceFinancialAddress)? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @status : String? = nil,
      @status_details : Stripe::TreasuryFinancialAccountsResourceStatusDetails? = nil,
      @supported_currencies : Array(String)? = nil,
      # Optional properties
      @active_features : Array(String)? = nil,
      @features : Stripe::TreasuryFinancialAccountFeatures? = nil,
      @metadata : Hash(String, String)? = nil,
      @pending_features : Array(String)? = nil,
      @platform_restrictions : Stripe::TreasuryFinancialAccountPlatformRestrictions? = nil,
      @restricted_features : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"balance\" is required and cannot be null") if @balance.nil?

      unless (_balance = @balance).nil?
        invalid_properties.concat(_balance.list_invalid_properties_for("balance")) if _balance.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"financial_addresses\" is required and cannot be null") if @financial_addresses.nil?

      unless (_financial_addresses = @financial_addresses).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "financial_addresses", container: _financial_addresses)) if _financial_addresses.is_a?(Array)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"status_details\" is required and cannot be null") if @status_details.nil?

      unless (_status_details = @status_details).nil?
        invalid_properties.concat(_status_details.list_invalid_properties_for("status_details")) if _status_details.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"supported_currencies\" is required and cannot be null") if @supported_currencies.nil?

      unless (_active_features = @active_features).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ACTIVE_FEATURES) unless OpenApi::EnumValidator.valid?(_active_features, VALID_VALUES_FOR_ACTIVE_FEATURES)
      end
      unless (_features = @features).nil?
        invalid_properties.concat(_features.list_invalid_properties_for("features")) if _features.is_a?(OpenApi::Validatable)
      end

      unless (_pending_features = @pending_features).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PENDING_FEATURES) unless OpenApi::EnumValidator.valid?(_pending_features, VALID_VALUES_FOR_PENDING_FEATURES)
      end
      unless (_platform_restrictions = @platform_restrictions).nil?
        invalid_properties.concat(_platform_restrictions.list_invalid_properties_for("platform_restrictions")) if _platform_restrictions.is_a?(OpenApi::Validatable)
      end
      unless (_restricted_features = @restricted_features).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_RESTRICTED_FEATURES) unless OpenApi::EnumValidator.valid?(_restricted_features, VALID_VALUES_FOR_RESTRICTED_FEATURES)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @balance.nil?
      unless (_balance = @balance).nil?
        return false if _balance.is_a?(OpenApi::Validatable) && !_balance.valid?
      end

      return false if @country.nil?
      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      return false if @created.nil?

      return false if @financial_addresses.nil?
      unless (_financial_addresses = @financial_addresses).nil?
        return false if _financial_addresses.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _financial_addresses)
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @status_details.nil?
      unless (_status_details = @status_details).nil?
        return false if _status_details.is_a?(OpenApi::Validatable) && !_status_details.valid?
      end

      return false if @supported_currencies.nil?

      unless (_active_features = @active_features).nil?
        return false unless OpenApi::EnumValidator.valid?(_active_features, VALID_VALUES_FOR_ACTIVE_FEATURES)
      end

      unless (_features = @features).nil?
        return false if _features.is_a?(OpenApi::Validatable) && !_features.valid?
      end

      unless (_pending_features = @pending_features).nil?
        return false unless OpenApi::EnumValidator.valid?(_pending_features, VALID_VALUES_FOR_PENDING_FEATURES)
      end

      unless (_platform_restrictions = @platform_restrictions).nil?
        return false if _platform_restrictions.is_a?(OpenApi::Validatable) && !_platform_restrictions.valid?
      end

      unless (_restricted_features = @restricted_features).nil?
        return false unless OpenApi::EnumValidator.valid?(_restricted_features, VALID_VALUES_FOR_RESTRICTED_FEATURES)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance Object to be assigned
    def balance=(balance : Stripe::TreasuryFinancialAccountsResourceBalance?)
      if balance.nil?
        raise ArgumentError.new("\"balance\" is required and cannot be null")
      end
      _balance = balance.not_nil!
      _balance.validate if _balance.is_a?(OpenApi::Validatable)
      @balance = _balance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        raise ArgumentError.new("\"country\" is required and cannot be null")
      end
      _country = country.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_addresses Object to be assigned
    def financial_addresses=(financial_addresses : Array(Stripe::TreasuryFinancialAccountsResourceFinancialAddress)?)
      if financial_addresses.nil?
        raise ArgumentError.new("\"financial_addresses\" is required and cannot be null")
      end
      _financial_addresses = financial_addresses.not_nil!
      OpenApi::ContainerValidator.validate(container: _financial_addresses) if _financial_addresses.is_a?(Array)
      @financial_addresses = _financial_addresses
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
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
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      OpenApi::EnumValidator.validate("status", _status, VALID_VALUES_FOR_STATUS)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_details Object to be assigned
    def status_details=(status_details : Stripe::TreasuryFinancialAccountsResourceStatusDetails?)
      if status_details.nil?
        raise ArgumentError.new("\"status_details\" is required and cannot be null")
      end
      _status_details = status_details.not_nil!
      _status_details.validate if _status_details.is_a?(OpenApi::Validatable)
      @status_details = _status_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_currencies Object to be assigned
    def supported_currencies=(supported_currencies : Array(String)?)
      if supported_currencies.nil?
        raise ArgumentError.new("\"supported_currencies\" is required and cannot be null")
      end
      _supported_currencies = supported_currencies.not_nil!
      @supported_currencies = _supported_currencies
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active_features Object to be assigned
    def active_features=(active_features : Array(String)?)
      if active_features.nil?
        return @active_features = nil
      end
      _active_features = active_features.not_nil!
      OpenApi::EnumValidator.validate("active_features", _active_features, VALID_VALUES_FOR_ACTIVE_FEATURES)
      @active_features = _active_features
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] features Object to be assigned
    def features=(features : Stripe::TreasuryFinancialAccountFeatures?)
      if features.nil?
        return @features = nil
      end
      _features = features.not_nil!
      _features.validate if _features.is_a?(OpenApi::Validatable)
      @features = _features
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pending_features Object to be assigned
    def pending_features=(pending_features : Array(String)?)
      if pending_features.nil?
        return @pending_features = nil
      end
      _pending_features = pending_features.not_nil!
      OpenApi::EnumValidator.validate("pending_features", _pending_features, VALID_VALUES_FOR_PENDING_FEATURES)
      @pending_features = _pending_features
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] platform_restrictions Object to be assigned
    def platform_restrictions=(platform_restrictions : Stripe::TreasuryFinancialAccountPlatformRestrictions?)
      if platform_restrictions.nil?
        return @platform_restrictions = nil
      end
      _platform_restrictions = platform_restrictions.not_nil!
      _platform_restrictions.validate if _platform_restrictions.is_a?(OpenApi::Validatable)
      @platform_restrictions = _platform_restrictions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] restricted_features Object to be assigned
    def restricted_features=(restricted_features : Array(String)?)
      if restricted_features.nil?
        return @restricted_features = nil
      end
      _restricted_features = restricted_features.not_nil!
      OpenApi::EnumValidator.validate("restricted_features", _restricted_features, VALID_VALUES_FOR_RESTRICTED_FEATURES)
      @restricted_features = _restricted_features
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@balance, @country, @created, @financial_addresses, @id, @livemode, @object, @status, @status_details, @supported_currencies, @active_features, @features, @metadata, @metadata_present, @pending_features, @platform_restrictions, @platform_restrictions_present, @restricted_features)
  end
end
