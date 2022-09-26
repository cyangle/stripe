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
  class PostBillingPortalSessionsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The ID of an existing customer.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # Optional properties

    # The ID of an existing [configuration](https://stripe.com/docs/api/customer_portal/configuration) to use for this session, describing its functionality and features. If not specified, the session uses the default configuration.
    @[JSON::Field(key: "configuration", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter configuration : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
    @[JSON::Field(key: "locale", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter locale : String? = nil

    ENUM_VALIDATOR_FOR_LOCALE = EnumValidator.new("locale", "String", ["auto", "bg", "cs", "da", "de", "el", "en", "en-AU", "en-CA", "en-GB", "en-IE", "en-IN", "en-NZ", "en-SG", "es", "es-419", "et", "fi", "fil", "fr", "fr-CA", "hr", "hu", "id", "it", "ja", "ko", "lt", "lv", "ms", "mt", "nb", "nl", "pl", "pt", "pt-BR", "ro", "ru", "sk", "sl", "sv", "th", "tr", "vi", "zh", "zh-HK", "zh-TW"])

    # The `on_behalf_of` account to use for this session. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://stripe.com/docs/connect/charges-transfers#on-behalf-of). Use the [Accounts API](https://stripe.com/docs/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
    @[JSON::Field(key: "on_behalf_of", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter on_behalf_of : String? = nil

    # The default URL to redirect customers to when they click on the portal's link to return to your website.
    @[JSON::Field(key: "return_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter return_url : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @customer : String? = nil,
      # Optional properties
      @configuration : String? = nil,
      @expand : Array(String)? = nil,
      @locale : String? = nil,
      @on_behalf_of : String? = nil,
      @return_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"customer\" is required and cannot be null") if @customer.nil?
      if _customer = @customer
        if _customer.to_s.size > 5000
          invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _configuration = @configuration
        if _configuration.to_s.size > 5000
          invalid_properties.push("invalid value for \"configuration\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_LOCALE.error_message) unless ENUM_VALIDATOR_FOR_LOCALE.valid?(@locale)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @customer.nil?
      if _customer = @customer
        return false if _customer.to_s.size > 5000
      end
      if _configuration = @configuration
        return false if _configuration.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_LOCALE.valid?(@locale)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        raise ArgumentError.new("\"customer\" is required and cannot be null")
      end
      _customer = customer.not_nil!
      if _customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] configuration Object to be assigned
    def configuration=(configuration : String?)
      if configuration.nil?
        return @configuration = nil
      end
      _configuration = configuration.not_nil!
      if _configuration.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"configuration\", the character length must be smaller than or equal to 5000.")
      end

      @configuration = configuration
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      @expand = expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] locale Object to be assigned
    def locale=(locale : String?)
      if locale.nil?
        return @locale = nil
      end
      _locale = locale.not_nil!
      ENUM_VALIDATOR_FOR_LOCALE.valid!(_locale)
      @locale = locale
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(on_behalf_of : String?)
      if on_behalf_of.nil?
        return @on_behalf_of = nil
      end
      @on_behalf_of = on_behalf_of
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : String?)
      if return_url.nil?
        return @return_url = nil
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
    def_equals_and_hash(@customer, @configuration, @expand, @locale, @on_behalf_of, @return_url)
  end
end
