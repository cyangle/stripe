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
    include OpenApi::Json

    # Required properties

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["account"])

    # Optional properties

    @[JSON::Field(key: "business_profile", type: Stripe::AccountBusinessProfile1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: business_profile.nil? && !business_profile_present?)]
    getter business_profile : Stripe::AccountBusinessProfile1? = nil

    @[JSON::Field(ignore: true)]
    property? business_profile_present : Bool = false

    # The business type.
    @[JSON::Field(key: "business_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: business_type.nil? && !business_type_present?)]
    getter business_type : String? = nil

    @[JSON::Field(ignore: true)]
    property? business_type_present : Bool = false

    ENUM_VALIDATOR_FOR_BUSINESS_TYPE = EnumValidator.new("business_type", "String", ["company", "government_entity", "individual", "non_profit"])

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

    # Time at which the account was connected. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
    @[JSON::Field(key: "default_currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_currency : String? = nil

    # Whether account details have been submitted. Standard accounts cannot receive payouts before this is true.
    @[JSON::Field(key: "details_submitted", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter details_submitted : Bool? = nil

    # An email address associated with the account. You can treat this as metadata: it is not used for authentication or messaging account holders.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String? = nil

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

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["custom", "express", "standard"])

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
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      # This is a model business_profile : Stripe::AccountBusinessProfile1?

      invalid_properties.push(ENUM_VALIDATOR_FOR_BUSINESS_TYPE.error_message) unless ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid?(@business_type)
      # This is a model capabilities : Stripe::AccountCapabilities?
      # This is a model company : Stripe::LegalEntityCompany?
      # This is a model controller : Stripe::AccountUnificationAccountController?
      if _country = @country
        if _country.to_s.size > 5000
          invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _default_currency = @default_currency
        if _default_currency.to_s.size > 5000
          invalid_properties.push("invalid value for \"default_currency\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _email = @email
        if _email.to_s.size > 5000
          invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model external_accounts : Stripe::ExternalAccountList1?
      # This is a model future_requirements : Stripe::AccountFutureRequirements?
      # This is a model individual : Stripe::Person?
      # This is a model requirements : Stripe::AccountRequirements?
      # This is a model settings : Stripe::AccountSettings1?
      # This is a model tos_acceptance : Stripe::AccountTosAcceptance?

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid?(@business_type)
      if _country = @country
        return false if _country.to_s.size > 5000
      end
      if _default_currency = @default_currency
        return false if _default_currency.to_s.size > 5000
      end
      if _email = @email
        return false if _email.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      true
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

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_profile Object to be assigned
    def business_profile=(business_profile : Stripe::AccountBusinessProfile1?)
      if business_profile.nil?
        return @business_profile = nil
      end
      @business_profile = business_profile
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_type Object to be assigned
    def business_type=(business_type : String?)
      if business_type.nil?
        return @business_type = nil
      end
      _business_type = business_type.not_nil!
      ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid!(_business_type)
      @business_type = business_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capabilities Object to be assigned
    def capabilities=(capabilities : Stripe::AccountCapabilities?)
      if capabilities.nil?
        return @capabilities = nil
      end
      @capabilities = capabilities
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charges_enabled Object to be assigned
    def charges_enabled=(charges_enabled : Bool?)
      if charges_enabled.nil?
        return @charges_enabled = nil
      end
      @charges_enabled = charges_enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company Object to be assigned
    def company=(company : Stripe::LegalEntityCompany?)
      if company.nil?
        return @company = nil
      end
      @company = company
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] controller Object to be assigned
    def controller=(controller : Stripe::AccountUnificationAccountController?)
      if controller.nil?
        return @controller = nil
      end
      @controller = controller
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      if _country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        return @created = nil
      end
      @created = created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_currency Object to be assigned
    def default_currency=(default_currency : String?)
      if default_currency.nil?
        return @default_currency = nil
      end
      _default_currency = default_currency.not_nil!
      if _default_currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_currency\", the character length must be smaller than or equal to 5000.")
      end

      @default_currency = default_currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] details_submitted Object to be assigned
    def details_submitted=(details_submitted : Bool?)
      if details_submitted.nil?
        return @details_submitted = nil
      end
      @details_submitted = details_submitted
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(email : String?)
      if email.nil?
        return @email = nil
      end
      _email = email.not_nil!
      if _email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      @email = email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] external_accounts Object to be assigned
    def external_accounts=(external_accounts : Stripe::ExternalAccountList1?)
      if external_accounts.nil?
        return @external_accounts = nil
      end
      @external_accounts = external_accounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] future_requirements Object to be assigned
    def future_requirements=(future_requirements : Stripe::AccountFutureRequirements?)
      if future_requirements.nil?
        return @future_requirements = nil
      end
      @future_requirements = future_requirements
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] individual Object to be assigned
    def individual=(individual : Stripe::Person?)
      if individual.nil?
        return @individual = nil
      end
      @individual = individual
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      @metadata = metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payouts_enabled Object to be assigned
    def payouts_enabled=(payouts_enabled : Bool?)
      if payouts_enabled.nil?
        return @payouts_enabled = nil
      end
      @payouts_enabled = payouts_enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requirements Object to be assigned
    def requirements=(requirements : Stripe::AccountRequirements?)
      if requirements.nil?
        return @requirements = nil
      end
      @requirements = requirements
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] settings Object to be assigned
    def settings=(settings : Stripe::AccountSettings1?)
      if settings.nil?
        return @settings = nil
      end
      @settings = settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tos_acceptance Object to be assigned
    def tos_acceptance=(tos_acceptance : Stripe::AccountTosAcceptance?)
      if tos_acceptance.nil?
        return @tos_acceptance = nil
      end
      @tos_acceptance = tos_acceptance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = _type
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
    def_equals_and_hash(@id, @object, @business_profile, @business_profile_present, @business_type, @business_type_present, @capabilities, @charges_enabled, @company, @controller, @country, @created, @default_currency, @details_submitted, @email, @email_present, @external_accounts, @future_requirements, @individual, @metadata, @payouts_enabled, @requirements, @settings, @settings_present, @tos_acceptance, @_type)
  end
end
