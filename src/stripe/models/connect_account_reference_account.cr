#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account"
require "./account_business_profile"
require "./account_capabilities"
require "./account_future_requirements"
require "./account_requirements"
require "./account_settings"
require "./account_tos_acceptance"
require "./account_unification_account_controller"
require "./external_account_list"
require "./legal_entity_company"
require "./person"

module Stripe
  # The connected account being referenced when `type` is `account`.
  class ConnectAccountReferenceAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [account]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("account")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "business_profile", type: Stripe::AccountBusinessProfile?, default: nil, required: false, nullable: false, emit_null: false)]
    property business_profile : Stripe::AccountBusinessProfile? = nil

    # The business type. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property is only returned for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    @[JSON::Field(key: "business_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: business_type.nil? && !business_type_present?)]
    property business_type : String? = nil
    ERROR_MESSAGE_FOR_BUSINESS_TYPE = "invalid value for \"business_type\", must be one of [company, government_entity, individual, non_profit]."
    VALID_VALUES_FOR_BUSINESS_TYPE  = String.static_array("company", "government_entity", "individual", "non_profit")

    @[JSON::Field(ignore: true)]
    property? business_type_present : Bool = false

    @[JSON::Field(key: "capabilities", type: Stripe::AccountCapabilities?, default: nil, required: false, nullable: false, emit_null: false)]
    property capabilities : Stripe::AccountCapabilities? = nil

    # Whether the account can create live charges.
    @[JSON::Field(key: "charges_enabled", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    property charges_enabled : Bool? = nil

    @[JSON::Field(key: "company", type: Stripe::LegalEntityCompany?, default: nil, required: false, nullable: false, emit_null: false)]
    property company : Stripe::LegalEntityCompany? = nil

    @[JSON::Field(key: "controller", type: Stripe::AccountUnificationAccountController?, default: nil, required: false, nullable: false, emit_null: false)]
    property controller : Stripe::AccountUnificationAccountController? = nil

    # The account's country.
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # Time at which the account was connected. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
    @[JSON::Field(key: "default_currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property default_currency : String? = nil
    MAX_LENGTH_FOR_DEFAULT_CURRENCY = 5000

    # Whether account details have been submitted. Accounts with Stripe Dashboard access, which includes Standard accounts, cannot receive payouts before this is true. Accounts where this is false should be directed to [an onboarding flow](/connect/onboarding) to finish submitting account details.
    @[JSON::Field(key: "details_submitted", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    property details_submitted : Bool? = nil

    # An email address associated with the account. It's not used for authentication and Stripe doesn't market to this field without explicit approval from the platform.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email.nil? && !email_present?)]
    property email : String? = nil
    MAX_LENGTH_FOR_EMAIL = 5000

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    @[JSON::Field(key: "external_accounts", type: Stripe::ExternalAccountList?, default: nil, required: false, nullable: false, emit_null: false)]
    property external_accounts : Stripe::ExternalAccountList? = nil

    @[JSON::Field(key: "future_requirements", type: Stripe::AccountFutureRequirements?, default: nil, required: false, nullable: false, emit_null: false)]
    property future_requirements : Stripe::AccountFutureRequirements? = nil

    @[JSON::Field(key: "individual", type: Stripe::Person?, default: nil, required: false, nullable: false, emit_null: false)]
    property individual : Stripe::Person? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    property metadata : Hash(String, String)? = nil

    # Whether Stripe can send payouts to this account.
    @[JSON::Field(key: "payouts_enabled", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    property payouts_enabled : Bool? = nil

    @[JSON::Field(key: "requirements", type: Stripe::AccountRequirements?, default: nil, required: false, nullable: false, emit_null: false)]
    property requirements : Stripe::AccountRequirements? = nil

    @[JSON::Field(key: "settings", type: Stripe::AccountSettings?, default: nil, required: false, nullable: false, emit_null: false)]
    property settings : Stripe::AccountSettings? = nil

    @[JSON::Field(key: "tos_acceptance", type: Stripe::AccountTosAcceptance?, default: nil, required: false, nullable: false, emit_null: false)]
    property tos_acceptance : Stripe::AccountTosAcceptance? = nil

    # The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [custom, express, none, standard]."
    VALID_VALUES_FOR__TYPE  = String.static_array("custom", "express", "none", "standard")

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::Account,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @object : String? = nil,
      # Optional properties
      @business_profile : Stripe::AccountBusinessProfile? = nil,
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
      @external_accounts : Stripe::ExternalAccountList? = nil,
      @future_requirements : Stripe::AccountFutureRequirements? = nil,
      @individual : Stripe::Person? = nil,
      @metadata : Hash(String, String)? = nil,
      @payouts_enabled : Bool? = nil,
      @requirements : Stripe::AccountRequirements? = nil,
      @settings : Stripe::AccountSettings? = nil,
      @tos_acceptance : Stripe::AccountTosAcceptance? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @object, @business_profile, @business_type, @business_type_present, @capabilities, @charges_enabled, @company, @controller, @country, @created, @default_currency, @details_submitted, @email, @email_present, @external_accounts, @future_requirements, @individual, @metadata, @payouts_enabled, @requirements, @settings, @tos_acceptance, @_type)
  end
end