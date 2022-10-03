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
  # This is an object representing a Stripe account. You can retrieve it to see properties on the account like its current e-mail address or if the account is enabled yet to make live charges.  Some properties, marked below, are available only to platforms that want to [create and manage Express or Custom accounts](https://stripe.com/docs/connect/accounts).
  class Account
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [account]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["account"]

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "business_profile", type: Stripe::AccountBusinessProfile1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: business_profile.nil? && !business_profile_present?)]
    getter business_profile : Stripe::AccountBusinessProfile1? = nil

    @[JSON::Field(ignore: true)]
    property? business_profile_present : Bool = false

    # The business type.
    @[JSON::Field(key: "business_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: business_type.nil? && !business_type_present?)]
    getter business_type : String? = nil
    ERROR_MESSAGE_FOR_BUSINESS_TYPE = "invalid value for \"business_type\", must be one of [company, government_entity, individual, non_profit]."
    VALID_VALUES_FOR_BUSINESS_TYPE  = StaticArray["company", "government_entity", "individual", "non_profit"]

    @[JSON::Field(ignore: true)]
    property? business_type_present : Bool = false

    @[JSON::Field(key: "capabilities", type: Stripe::AccountCapabilities?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capabilities : Stripe::AccountCapabilities? = nil

    # Whether the account can create live charges.
    @[JSON::Field(key: "charges_enabled", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter charges_enabled : Bool? = nil

    @[JSON::Field(key: "company", type: Stripe::LegalEntityCompany?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company : Stripe::LegalEntityCompany? = nil

    @[JSON::Field(key: "controller", type: Stripe::AccountUnificationAccountController?, default: nil, required: false, nullable: false, emit_null: false)]
    getter controller : Stripe::AccountUnificationAccountController? = nil

    # The account's country.
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # Time at which the account was connected. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
    @[JSON::Field(key: "default_currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_currency : String? = nil
    MAX_LENGTH_FOR_DEFAULT_CURRENCY = 5000

    # Whether account details have been submitted. Standard accounts cannot receive payouts before this is true.
    @[JSON::Field(key: "details_submitted", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter details_submitted : Bool? = nil

    # An email address associated with the account. You can treat this as metadata: it is not used for authentication or messaging account holders.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String? = nil
    MAX_LENGTH_FOR_EMAIL = 5000

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    @[JSON::Field(key: "external_accounts", type: Stripe::ExternalAccountList1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter external_accounts : Stripe::ExternalAccountList1? = nil

    @[JSON::Field(key: "future_requirements", type: Stripe::AccountFutureRequirements?, default: nil, required: false, nullable: false, emit_null: false)]
    getter future_requirements : Stripe::AccountFutureRequirements? = nil

    @[JSON::Field(key: "individual", type: Stripe::Person?, default: nil, required: false, nullable: false, emit_null: false)]
    getter individual : Stripe::Person? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Whether Stripe can send payouts to this account.
    @[JSON::Field(key: "payouts_enabled", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payouts_enabled : Bool? = nil

    @[JSON::Field(key: "requirements", type: Stripe::AccountRequirements?, default: nil, required: false, nullable: false, emit_null: false)]
    getter requirements : Stripe::AccountRequirements? = nil

    @[JSON::Field(key: "settings", type: Stripe::AccountSettings1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: settings.nil? && !settings_present?)]
    getter settings : Stripe::AccountSettings1? = nil

    @[JSON::Field(ignore: true)]
    property? settings_present : Bool = false

    @[JSON::Field(key: "tos_acceptance", type: Stripe::AccountTosAcceptance?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tos_acceptance : Stripe::AccountTosAcceptance? = nil

    # The Stripe account type. Can be `standard`, `express`, or `custom`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [custom, express, standard]."
    VALID_VALUES_FOR__TYPE  = StaticArray["custom", "express", "standard"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @object : String? = nil,
      # Optional properties
      @business_profile : Stripe::AccountBusinessProfile1? = nil,
      @business_type : String? = nil,
      @capabilities : Stripe::AccountCapabilities? = nil,
      @charges_enabled : Bool? = nil,
      @company : Stripe::LegalEntityCompany? = nil,
      @controller : Stripe::AccountUnificationAccountController? = nil,
      @country : String? = nil,
      @created : Int64? = nil,
      @default_currency : String? = nil,
      @details_submitted : Bool? = nil,
      @email : String? = nil,
      @external_accounts : Stripe::ExternalAccountList1? = nil,
      @future_requirements : Stripe::AccountFutureRequirements? = nil,
      @individual : Stripe::Person? = nil,
      @metadata : Hash(String, String)? = nil,
      @payouts_enabled : Bool? = nil,
      @requirements : Stripe::AccountRequirements? = nil,
      @settings : Stripe::AccountSettings1? = nil,
      @tos_acceptance : Stripe::AccountTosAcceptance? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_business_profile = @business_profile).nil?
        invalid_properties.concat(_business_profile.list_invalid_properties_for("business_profile")) if _business_profile.is_a?(OpenApi::Validatable)
      end
      unless (_business_type = @business_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_BUSINESS_TYPE) unless OpenApi::EnumValidator.valid?(_business_type, VALID_VALUES_FOR_BUSINESS_TYPE)
      end
      unless (_capabilities = @capabilities).nil?
        invalid_properties.concat(_capabilities.list_invalid_properties_for("capabilities")) if _capabilities.is_a?(OpenApi::Validatable)
      end

      unless (_company = @company).nil?
        invalid_properties.concat(_company.list_invalid_properties_for("company")) if _company.is_a?(OpenApi::Validatable)
      end
      unless (_controller = @controller).nil?
        invalid_properties.concat(_controller.list_invalid_properties_for("controller")) if _controller.is_a?(OpenApi::Validatable)
      end
      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_default_currency = @default_currency).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_currency", _default_currency.to_s.size, MAX_LENGTH_FOR_DEFAULT_CURRENCY)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_email = @email).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, MAX_LENGTH_FOR_EMAIL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_external_accounts = @external_accounts).nil?
        invalid_properties.concat(_external_accounts.list_invalid_properties_for("external_accounts")) if _external_accounts.is_a?(OpenApi::Validatable)
      end
      unless (_future_requirements = @future_requirements).nil?
        invalid_properties.concat(_future_requirements.list_invalid_properties_for("future_requirements")) if _future_requirements.is_a?(OpenApi::Validatable)
      end
      unless (_individual = @individual).nil?
        invalid_properties.concat(_individual.list_invalid_properties_for("individual")) if _individual.is_a?(OpenApi::Validatable)
      end

      unless (_requirements = @requirements).nil?
        invalid_properties.concat(_requirements.list_invalid_properties_for("requirements")) if _requirements.is_a?(OpenApi::Validatable)
      end
      unless (_settings = @settings).nil?
        invalid_properties.concat(_settings.list_invalid_properties_for("settings")) if _settings.is_a?(OpenApi::Validatable)
      end
      unless (_tos_acceptance = @tos_acceptance).nil?
        invalid_properties.concat(_tos_acceptance.list_invalid_properties_for("tos_acceptance")) if _tos_acceptance.is_a?(OpenApi::Validatable)
      end
      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_business_profile = @business_profile).nil?
        return false if _business_profile.is_a?(OpenApi::Validatable) && !_business_profile.valid?
      end

      unless (_business_type = @business_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_business_type, VALID_VALUES_FOR_BUSINESS_TYPE)
      end

      unless (_capabilities = @capabilities).nil?
        return false if _capabilities.is_a?(OpenApi::Validatable) && !_capabilities.valid?
      end

      unless (_company = @company).nil?
        return false if _company.is_a?(OpenApi::Validatable) && !_company.valid?
      end

      unless (_controller = @controller).nil?
        return false if _controller.is_a?(OpenApi::Validatable) && !_controller.valid?
      end

      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      unless (_default_currency = @default_currency).nil?
        return false if _default_currency.to_s.size > MAX_LENGTH_FOR_DEFAULT_CURRENCY
      end

      unless (_email = @email).nil?
        return false if _email.to_s.size > MAX_LENGTH_FOR_EMAIL
      end

      unless (_external_accounts = @external_accounts).nil?
        return false if _external_accounts.is_a?(OpenApi::Validatable) && !_external_accounts.valid?
      end

      unless (_future_requirements = @future_requirements).nil?
        return false if _future_requirements.is_a?(OpenApi::Validatable) && !_future_requirements.valid?
      end

      unless (_individual = @individual).nil?
        return false if _individual.is_a?(OpenApi::Validatable) && !_individual.valid?
      end

      unless (_requirements = @requirements).nil?
        return false if _requirements.is_a?(OpenApi::Validatable) && !_requirements.valid?
      end

      unless (_settings = @settings).nil?
        return false if _settings.is_a?(OpenApi::Validatable) && !_settings.valid?
      end

      unless (_tos_acceptance = @tos_acceptance).nil?
        return false if _tos_acceptance.is_a?(OpenApi::Validatable) && !_tos_acceptance.valid?
      end

      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      true
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
    # @param [Object] business_profile Object to be assigned
    def business_profile=(business_profile : Stripe::AccountBusinessProfile1?)
      if business_profile.nil?
        return @business_profile = nil
      end
      _business_profile = business_profile.not_nil!
      _business_profile.validate if _business_profile.is_a?(OpenApi::Validatable)
      @business_profile = _business_profile
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_type Object to be assigned
    def business_type=(business_type : String?)
      if business_type.nil?
        return @business_type = nil
      end
      _business_type = business_type.not_nil!
      OpenApi::EnumValidator.validate("business_type", _business_type, VALID_VALUES_FOR_BUSINESS_TYPE)
      @business_type = _business_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capabilities Object to be assigned
    def capabilities=(capabilities : Stripe::AccountCapabilities?)
      if capabilities.nil?
        return @capabilities = nil
      end
      _capabilities = capabilities.not_nil!
      _capabilities.validate if _capabilities.is_a?(OpenApi::Validatable)
      @capabilities = _capabilities
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charges_enabled Object to be assigned
    def charges_enabled=(charges_enabled : Bool?)
      if charges_enabled.nil?
        return @charges_enabled = nil
      end
      _charges_enabled = charges_enabled.not_nil!
      @charges_enabled = _charges_enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company Object to be assigned
    def company=(company : Stripe::LegalEntityCompany?)
      if company.nil?
        return @company = nil
      end
      _company = company.not_nil!
      _company.validate if _company.is_a?(OpenApi::Validatable)
      @company = _company
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] controller Object to be assigned
    def controller=(controller : Stripe::AccountUnificationAccountController?)
      if controller.nil?
        return @controller = nil
      end
      _controller = controller.not_nil!
      _controller.validate if _controller.is_a?(OpenApi::Validatable)
      @controller = _controller
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        return @created = nil
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_currency Object to be assigned
    def default_currency=(default_currency : String?)
      if default_currency.nil?
        return @default_currency = nil
      end
      _default_currency = default_currency.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_currency", _default_currency.to_s.size, MAX_LENGTH_FOR_DEFAULT_CURRENCY)
      @default_currency = _default_currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] details_submitted Object to be assigned
    def details_submitted=(details_submitted : Bool?)
      if details_submitted.nil?
        return @details_submitted = nil
      end
      _details_submitted = details_submitted.not_nil!
      @details_submitted = _details_submitted
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(email : String?)
      if email.nil?
        return @email = nil
      end
      _email = email.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("email", _email.to_s.size, MAX_LENGTH_FOR_EMAIL)
      @email = _email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] external_accounts Object to be assigned
    def external_accounts=(external_accounts : Stripe::ExternalAccountList1?)
      if external_accounts.nil?
        return @external_accounts = nil
      end
      _external_accounts = external_accounts.not_nil!
      _external_accounts.validate if _external_accounts.is_a?(OpenApi::Validatable)
      @external_accounts = _external_accounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] future_requirements Object to be assigned
    def future_requirements=(future_requirements : Stripe::AccountFutureRequirements?)
      if future_requirements.nil?
        return @future_requirements = nil
      end
      _future_requirements = future_requirements.not_nil!
      _future_requirements.validate if _future_requirements.is_a?(OpenApi::Validatable)
      @future_requirements = _future_requirements
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] individual Object to be assigned
    def individual=(individual : Stripe::Person?)
      if individual.nil?
        return @individual = nil
      end
      _individual = individual.not_nil!
      _individual.validate if _individual.is_a?(OpenApi::Validatable)
      @individual = _individual
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
    # @param [Object] payouts_enabled Object to be assigned
    def payouts_enabled=(payouts_enabled : Bool?)
      if payouts_enabled.nil?
        return @payouts_enabled = nil
      end
      _payouts_enabled = payouts_enabled.not_nil!
      @payouts_enabled = _payouts_enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requirements Object to be assigned
    def requirements=(requirements : Stripe::AccountRequirements?)
      if requirements.nil?
        return @requirements = nil
      end
      _requirements = requirements.not_nil!
      _requirements.validate if _requirements.is_a?(OpenApi::Validatable)
      @requirements = _requirements
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] settings Object to be assigned
    def settings=(settings : Stripe::AccountSettings1?)
      if settings.nil?
        return @settings = nil
      end
      _settings = settings.not_nil!
      _settings.validate if _settings.is_a?(OpenApi::Validatable)
      @settings = _settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tos_acceptance Object to be assigned
    def tos_acceptance=(tos_acceptance : Stripe::AccountTosAcceptance?)
      if tos_acceptance.nil?
        return @tos_acceptance = nil
      end
      _tos_acceptance = tos_acceptance.not_nil!
      _tos_acceptance.validate if _tos_acceptance.is_a?(OpenApi::Validatable)
      @tos_acceptance = _tos_acceptance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @object, @business_profile, @business_profile_present, @business_type, @business_type_present, @capabilities, @charges_enabled, @company, @controller, @country, @created, @default_currency, @details_submitted, @email, @email_present, @external_accounts, @future_requirements, @individual, @metadata, @payouts_enabled, @requirements, @settings, @settings_present, @tos_acceptance, @_type)
  end
end
