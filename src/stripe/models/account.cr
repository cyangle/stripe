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
  # This is an object representing a Stripe account. You can retrieve it to see properties on the account like its current e-mail address or if the account is enabled yet to make live charges.  Some properties, marked below, are available only to platforms that want to [create and manage Express or Custom accounts](https://stripe.com/docs/connect/accounts).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Account
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["account"])

    # Optional properties

    @[JSON::Field(key: "business_profile", type: AccountBusinessProfile1?, presence: true, ignore_serialize: business_profile.nil? && !business_profile_present?)]
    property business_profile : AccountBusinessProfile1?

    @[JSON::Field(ignore: true)]
    property? business_profile_present : Bool = false

    # The business type.
    @[JSON::Field(key: "business_type", type: String?, presence: true, ignore_serialize: business_type.nil? && !business_type_present?)]
    getter business_type : String?

    @[JSON::Field(ignore: true)]
    property? business_type_present : Bool = false

    ENUM_VALIDATOR_FOR_BUSINESS_TYPE = EnumValidator.new("business_type", "String", ["company", "government_entity", "individual", "non_profit"])

    @[JSON::Field(key: "capabilities", type: AccountCapabilities?, presence: true, ignore_serialize: capabilities.nil? && !capabilities_present?)]
    property capabilities : AccountCapabilities?

    @[JSON::Field(ignore: true)]
    property? capabilities_present : Bool = false

    # Whether the account can create live charges.
    @[JSON::Field(key: "charges_enabled", type: Bool?, presence: true, ignore_serialize: charges_enabled.nil? && !charges_enabled_present?)]
    property charges_enabled : Bool?

    @[JSON::Field(ignore: true)]
    property? charges_enabled_present : Bool = false

    @[JSON::Field(key: "company", type: LegalEntityCompany?, presence: true, ignore_serialize: company.nil? && !company_present?)]
    property company : LegalEntityCompany?

    @[JSON::Field(ignore: true)]
    property? company_present : Bool = false

    @[JSON::Field(key: "controller", type: AccountUnificationAccountController?, presence: true, ignore_serialize: controller.nil? && !controller_present?)]
    property controller : AccountUnificationAccountController?

    @[JSON::Field(ignore: true)]
    property? controller_present : Bool = false

    # The account's country.
    @[JSON::Field(key: "country", type: String?, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String?

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    # Time at which the account was connected. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, presence: true, ignore_serialize: created.nil? && !created_present?)]
    property created : Int64?

    @[JSON::Field(ignore: true)]
    property? created_present : Bool = false

    # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
    @[JSON::Field(key: "default_currency", type: String?, presence: true, ignore_serialize: default_currency.nil? && !default_currency_present?)]
    getter default_currency : String?

    @[JSON::Field(ignore: true)]
    property? default_currency_present : Bool = false

    # Whether account details have been submitted. Standard accounts cannot receive payouts before this is true.
    @[JSON::Field(key: "details_submitted", type: Bool?, presence: true, ignore_serialize: details_submitted.nil? && !details_submitted_present?)]
    property details_submitted : Bool?

    @[JSON::Field(ignore: true)]
    property? details_submitted_present : Bool = false

    # An email address associated with the account. You can treat this as metadata: it is not used for authentication or messaging account holders.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    @[JSON::Field(key: "external_accounts", type: ExternalAccountList1?, presence: true, ignore_serialize: external_accounts.nil? && !external_accounts_present?)]
    property external_accounts : ExternalAccountList1?

    @[JSON::Field(ignore: true)]
    property? external_accounts_present : Bool = false

    @[JSON::Field(key: "future_requirements", type: AccountFutureRequirements?, presence: true, ignore_serialize: future_requirements.nil? && !future_requirements_present?)]
    property future_requirements : AccountFutureRequirements?

    @[JSON::Field(ignore: true)]
    property? future_requirements_present : Bool = false

    @[JSON::Field(key: "individual", type: Person?, presence: true, ignore_serialize: individual.nil? && !individual_present?)]
    property individual : Person?

    @[JSON::Field(ignore: true)]
    property? individual_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Whether Stripe can send payouts to this account.
    @[JSON::Field(key: "payouts_enabled", type: Bool?, presence: true, ignore_serialize: payouts_enabled.nil? && !payouts_enabled_present?)]
    property payouts_enabled : Bool?

    @[JSON::Field(ignore: true)]
    property? payouts_enabled_present : Bool = false

    @[JSON::Field(key: "requirements", type: AccountRequirements?, presence: true, ignore_serialize: requirements.nil? && !requirements_present?)]
    property requirements : AccountRequirements?

    @[JSON::Field(ignore: true)]
    property? requirements_present : Bool = false

    @[JSON::Field(key: "settings", type: AccountSettings1?, presence: true, ignore_serialize: settings.nil? && !settings_present?)]
    property settings : AccountSettings1?

    @[JSON::Field(ignore: true)]
    property? settings_present : Bool = false

    @[JSON::Field(key: "tos_acceptance", type: AccountTosAcceptance?, presence: true, ignore_serialize: tos_acceptance.nil? && !tos_acceptance_present?)]
    property tos_acceptance : AccountTosAcceptance?

    @[JSON::Field(ignore: true)]
    property? tos_acceptance_present : Bool = false

    # The Stripe account type. Can be `standard`, `express`, or `custom`.
    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["custom", "express", "standard"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @id : String, 
      @object : String, 
      # Optional properties
      @business_profile : AccountBusinessProfile1? = nil, 
      @business_type : String? = nil, 
      @capabilities : AccountCapabilities? = nil, 
      @charges_enabled : Bool? = nil, 
      @company : LegalEntityCompany? = nil, 
      @controller : AccountUnificationAccountController? = nil, 
      @country : String? = nil, 
      @created : Int64? = nil, 
      @default_currency : String? = nil, 
      @details_submitted : Bool? = nil, 
      @email : String? = nil, 
      @external_accounts : ExternalAccountList1? = nil, 
      @future_requirements : AccountFutureRequirements? = nil, 
      @individual : Person? = nil, 
      @metadata : Hash(String, String)? = nil, 
      @payouts_enabled : Bool? = nil, 
      @requirements : AccountRequirements? = nil, 
      @settings : AccountSettings1? = nil, 
      @tos_acceptance : AccountTosAcceptance? = nil, 
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_BUSINESS_TYPE.error_message) unless ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid?(@business_type)

      if !@country.nil? && @country.to_s.size > 5000
        invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      if !@default_currency.nil? && @default_currency.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_currency\", the character length must be smaller than or equal to 5000.")
      end

      if !@email.nil? && @email.to_s.size > 5000
        invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid?(@business_type)
      return false if !@country.nil? && @country.to_s.size > 5000
      return false if !@default_currency.nil? && @default_currency.to_s.size > 5000
      return false if !@email.nil? && @email.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      true
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
    # @param [Object] business_type Object to be assigned
    def business_type=(business_type)
      ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid!(business_type)
      @business_type = business_type
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if !country.nil? && country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] default_currency Value to be assigned
    def default_currency=(default_currency)
      if !default_currency.nil? && default_currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_currency\", the character length must be smaller than or equal to 5000.")
      end

      @default_currency = default_currency
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      @email = email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type)
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
    def_equals_and_hash(@id, @object, @business_profile, @business_type, @capabilities, @charges_enabled, @company, @controller, @country, @created, @default_currency, @details_submitted, @email, @external_accounts, @future_requirements, @individual, @metadata, @payouts_enabled, @requirements, @settings, @tos_acceptance, @_type)
  end
end
