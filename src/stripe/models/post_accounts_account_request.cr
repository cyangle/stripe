#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./business_profile_specs"
require "./capabilities_param"
require "./company_specs"
require "./documents_specs"
require "./individual_specs"
require "./post_accounts_request_metadata"
require "./settings_specs_update"
require "./tos_acceptance_specs"

module Stripe
  class PostAccountsAccountRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # An [account token](https://stripe.com/docs/api#create_account_token), used to securely provide details to the account.
    @[JSON::Field(key: "account_token", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_token : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_TOKEN = 5000

    @[JSON::Field(key: "business_profile", type: Stripe::BusinessProfileSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter business_profile : Stripe::BusinessProfileSpecs? = nil

    # The business type. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    @[JSON::Field(key: "business_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter business_type : String? = nil
    ERROR_MESSAGE_FOR_BUSINESS_TYPE = "invalid value for \"business_type\", must be one of [company, government_entity, individual, non_profit]."
    VALID_VALUES_FOR_BUSINESS_TYPE  = String.static_array("company", "government_entity", "individual", "non_profit")

    @[JSON::Field(key: "capabilities", type: Stripe::CapabilitiesParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capabilities : Stripe::CapabilitiesParam? = nil

    @[JSON::Field(key: "company", type: Stripe::CompanySpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company : Stripe::CompanySpecs? = nil

    # Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://docs.stripe.com/payouts).
    @[JSON::Field(key: "default_currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_currency : String? = nil

    @[JSON::Field(key: "documents", type: Stripe::DocumentsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter documents : Stripe::DocumentsSpecs? = nil

    # The email address of the account holder. This is only to make the account easier to identify to you. If [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, Stripe doesn't email the account without your consent.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # A card or bank account to attach to the account for receiving [payouts](/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](/js), or a dictionary, as documented in the `external_account` parameter for [bank account](/api#account_create_bank_account) creation. <br><br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the [bank account](/api#account_create_bank_account) or [card creation](/api#account_create_card) APIs. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    @[JSON::Field(key: "external_account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter external_account : String? = nil
    MAX_LENGTH_FOR_EXTERNAL_ACCOUNT = 5000

    @[JSON::Field(key: "individual", type: Stripe::IndividualSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter individual : Stripe::IndividualSpecs? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    @[JSON::Field(key: "settings", type: Stripe::SettingsSpecsUpdate?, default: nil, required: false, nullable: false, emit_null: false)]
    getter settings : Stripe::SettingsSpecsUpdate? = nil

    @[JSON::Field(key: "tos_acceptance", type: Stripe::TosAcceptanceSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tos_acceptance : Stripe::TosAcceptanceSpecs? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_token : String? = nil,
      @business_profile : Stripe::BusinessProfileSpecs? = nil,
      @business_type : String? = nil,
      @capabilities : Stripe::CapabilitiesParam? = nil,
      @company : Stripe::CompanySpecs? = nil,
      @default_currency : String? = nil,
      @documents : Stripe::DocumentsSpecs? = nil,
      @email : String? = nil,
      @expand : Array(String)? = nil,
      @external_account : String? = nil,
      @individual : Stripe::IndividualSpecs? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @settings : Stripe::SettingsSpecsUpdate? = nil,
      @tos_acceptance : Stripe::TosAcceptanceSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_token = @account_token).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_token", _account_token.to_s.size, MAX_LENGTH_FOR_ACCOUNT_TOKEN)
          invalid_properties.push(max_length_error)
        end
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

      unless (_documents = @documents).nil?
        invalid_properties.concat(_documents.list_invalid_properties_for("documents")) if _documents.is_a?(OpenApi::Validatable)
      end

      unless (_external_account = @external_account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("external_account", _external_account.to_s.size, MAX_LENGTH_FOR_EXTERNAL_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_individual = @individual).nil?
        invalid_properties.concat(_individual.list_invalid_properties_for("individual")) if _individual.is_a?(OpenApi::Validatable)
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_settings = @settings).nil?
        invalid_properties.concat(_settings.list_invalid_properties_for("settings")) if _settings.is_a?(OpenApi::Validatable)
      end
      unless (_tos_acceptance = @tos_acceptance).nil?
        invalid_properties.concat(_tos_acceptance.list_invalid_properties_for("tos_acceptance")) if _tos_acceptance.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_token = @account_token).nil?
        return false if _account_token.to_s.size > MAX_LENGTH_FOR_ACCOUNT_TOKEN
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

      unless (_documents = @documents).nil?
        return false if _documents.is_a?(OpenApi::Validatable) && !_documents.valid?
      end

      unless (_external_account = @external_account).nil?
        return false if _external_account.to_s.size > MAX_LENGTH_FOR_EXTERNAL_ACCOUNT
      end

      unless (_individual = @individual).nil?
        return false if _individual.is_a?(OpenApi::Validatable) && !_individual.valid?
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_settings = @settings).nil?
        return false if _settings.is_a?(OpenApi::Validatable) && !_settings.valid?
      end

      unless (_tos_acceptance = @tos_acceptance).nil?
        return false if _tos_acceptance.is_a?(OpenApi::Validatable) && !_tos_acceptance.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_token Object to be assigned
    def account_token=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("account_token", new_value.to_s.size, MAX_LENGTH_FOR_ACCOUNT_TOKEN)
      end

      @account_token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_profile Object to be assigned
    def business_profile=(new_value : Stripe::BusinessProfileSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @business_profile = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_type Object to be assigned
    def business_type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("business_type", new_value, VALID_VALUES_FOR_BUSINESS_TYPE)
      end

      @business_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capabilities Object to be assigned
    def capabilities=(new_value : Stripe::CapabilitiesParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @capabilities = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company Object to be assigned
    def company=(new_value : Stripe::CompanySpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @company = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_currency Object to be assigned
    def default_currency=(new_value : String?)
      @default_currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] documents Object to be assigned
    def documents=(new_value : Stripe::DocumentsSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @documents = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(new_value : String?)
      @email = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] external_account Object to be assigned
    def external_account=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("external_account", new_value.to_s.size, MAX_LENGTH_FOR_EXTERNAL_ACCOUNT)
      end

      @external_account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] individual Object to be assigned
    def individual=(new_value : Stripe::IndividualSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @individual = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::PostAccountsRequestMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] settings Object to be assigned
    def settings=(new_value : Stripe::SettingsSpecsUpdate?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @settings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tos_acceptance Object to be assigned
    def tos_acceptance=(new_value : Stripe::TosAcceptanceSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tos_acceptance = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_token, @business_profile, @business_type, @capabilities, @company, @default_currency, @documents, @email, @expand, @external_account, @individual, @metadata, @settings, @tos_acceptance)
  end
end
