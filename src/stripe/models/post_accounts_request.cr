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
  class PostAccountsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # An [account token](https://stripe.com/docs/api#create_account_token), used to securely provide details to the account.
    @[JSON::Field(key: "account_token", type: String?, presence: true, ignore_serialize: account_token.nil? && !account_token_present?)]
    getter account_token : String?

    @[JSON::Field(ignore: true)]
    property? account_token_present : Bool = false

    @[JSON::Field(key: "bank_account", type: PostAccountRequestBankAccount?, presence: true, ignore_serialize: bank_account.nil? && !bank_account_present?)]
    property bank_account : PostAccountRequestBankAccount?

    @[JSON::Field(ignore: true)]
    property? bank_account_present : Bool = false

    @[JSON::Field(key: "business_profile", type: BusinessProfileSpecs?, presence: true, ignore_serialize: business_profile.nil? && !business_profile_present?)]
    property business_profile : BusinessProfileSpecs?

    @[JSON::Field(ignore: true)]
    property? business_profile_present : Bool = false

    # The business type.
    @[JSON::Field(key: "business_type", type: String?, presence: true, ignore_serialize: business_type.nil? && !business_type_present?)]
    getter business_type : String?

    @[JSON::Field(ignore: true)]
    property? business_type_present : Bool = false

    ENUM_VALIDATOR_FOR_BUSINESS_TYPE = EnumValidator.new("business_type", "String", ["company", "government_entity", "individual", "non_profit"])

    @[JSON::Field(key: "capabilities", type: CapabilitiesParam?, presence: true, ignore_serialize: capabilities.nil? && !capabilities_present?)]
    property capabilities : CapabilitiesParam?

    @[JSON::Field(ignore: true)]
    property? capabilities_present : Bool = false

    @[JSON::Field(key: "company", type: CompanySpecs?, presence: true, ignore_serialize: company.nil? && !company_present?)]
    property company : CompanySpecs?

    @[JSON::Field(ignore: true)]
    property? company_present : Bool = false

    # The country in which the account holder resides, or in which the business is legally established. This should be an ISO 3166-1 alpha-2 country code. For example, if you are in the United States and the business for which you're creating an account is legally represented in Canada, you would use `CA` as the country for the account being created. Available countries include [Stripe's global markets](https://stripe.com/global) as well as countries where [cross-border payouts](https://stripe.com/docs/connect/cross-border-payouts) are supported.
    @[JSON::Field(key: "country", type: String?, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String?

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
    @[JSON::Field(key: "default_currency", type: String?, presence: true, ignore_serialize: default_currency.nil? && !default_currency_present?)]
    property default_currency : String?

    @[JSON::Field(ignore: true)]
    property? default_currency_present : Bool = false

    @[JSON::Field(key: "documents", type: DocumentsSpecs?, presence: true, ignore_serialize: documents.nil? && !documents_present?)]
    property documents : DocumentsSpecs?

    @[JSON::Field(ignore: true)]
    property? documents_present : Bool = false

    # The email address of the account holder. This is only to make the account easier to identify to you. Stripe only emails Custom accounts with your consent.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    property email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # A card or bank account to attach to the account for receiving [payouts](https://stripe.com/docs/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary, as documented in the `external_account` parameter for [bank account](https://stripe.com/docs/api#account_create_bank_account) creation. <br><br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the bank account or card creation API.
    @[JSON::Field(key: "external_account", type: String?, presence: true, ignore_serialize: external_account.nil? && !external_account_present?)]
    getter external_account : String?

    @[JSON::Field(ignore: true)]
    property? external_account_present : Bool = false

    @[JSON::Field(key: "individual", type: IndividualSpecs?, presence: true, ignore_serialize: individual.nil? && !individual_present?)]
    property individual : IndividualSpecs?

    @[JSON::Field(ignore: true)]
    property? individual_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "settings", type: SettingsSpecs?, presence: true, ignore_serialize: settings.nil? && !settings_present?)]
    property settings : SettingsSpecs?

    @[JSON::Field(ignore: true)]
    property? settings_present : Bool = false

    @[JSON::Field(key: "tos_acceptance", type: TosAcceptanceSpecs?, presence: true, ignore_serialize: tos_acceptance.nil? && !tos_acceptance_present?)]
    property tos_acceptance : TosAcceptanceSpecs?

    @[JSON::Field(ignore: true)]
    property? tos_acceptance_present : Bool = false

    # The type of Stripe account to create. May be one of `custom`, `express` or `standard`.
    @[JSON::Field(key: "type", type: String?, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String?

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["custom", "express", "standard"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @account_token : String? = nil, 
      @bank_account : PostAccountRequestBankAccount? = nil, 
      @business_profile : BusinessProfileSpecs? = nil, 
      @business_type : String? = nil, 
      @capabilities : CapabilitiesParam? = nil, 
      @company : CompanySpecs? = nil, 
      @country : String? = nil, 
      @default_currency : String? = nil, 
      @documents : DocumentsSpecs? = nil, 
      @email : String? = nil, 
      @expand : Array(String)? = nil, 
      @external_account : String? = nil, 
      @individual : IndividualSpecs? = nil, 
      @metadata : PostAccountRequestMetadata? = nil, 
      @settings : SettingsSpecs? = nil, 
      @tos_acceptance : TosAcceptanceSpecs? = nil, 
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@account_token.nil? && @account_token.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_token\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_BUSINESS_TYPE.error_message) unless ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid?(@business_type)

      if !@country.nil? && @country.to_s.size > 5000
        invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      if !@external_account.nil? && @external_account.to_s.size > 5000
        invalid_properties.push("invalid value for \"external_account\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_token.nil? && @account_token.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid?(@business_type)
      return false if !@country.nil? && @country.to_s.size > 5000
      return false if !@external_account.nil? && @external_account.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_token Value to be assigned
    def account_token=(account_token)
      if !account_token.nil? && account_token.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_token\", the character length must be smaller than or equal to 5000.")
      end

      @account_token = account_token
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
    # @param [Object] external_account Value to be assigned
    def external_account=(external_account)
      if !external_account.nil? && external_account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"external_account\", the character length must be smaller than or equal to 5000.")
      end

      @external_account = external_account
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
    def_equals_and_hash(@account_token, @bank_account, @business_profile, @business_type, @capabilities, @company, @country, @default_currency, @documents, @email, @expand, @external_account, @individual, @metadata, @settings, @tos_acceptance, @_type)
  end
end
