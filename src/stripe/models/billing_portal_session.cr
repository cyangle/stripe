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
  # The Billing customer portal is a Stripe-hosted UI for subscription and billing management.  A portal configuration describes the functionality and features that you want to provide to your customers through the portal.  A portal session describes the instantiation of the customer portal for a particular customer. By visiting the session's URL, the customer can manage their subscriptions and billing details. For security reasons, sessions are short-lived and will expire if the customer does not visit the URL. Create sessions on-demand when customers intend to manage their subscriptions and billing details.  Learn more in the [integration guide](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal).
  class BillingPortalSession
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "configuration", type: Stripe::BillingPortalSessionConfiguration?, default: nil, required: true, nullable: false, emit_null: false)]
    getter configuration : Stripe::BillingPortalSessionConfiguration? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The ID of the customer for this session.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["billing_portal.session"])

    # The short-lived URL of the session that gives customers access to the customer portal.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter url : String? = nil

    # Optional properties

    # The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
    @[JSON::Field(key: "locale", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: locale.nil? && !locale_present?)]
    getter locale : String? = nil

    @[JSON::Field(ignore: true)]
    property? locale_present : Bool = false

    ENUM_VALIDATOR_FOR_LOCALE = EnumValidator.new("locale", "String", ["auto", "bg", "cs", "da", "de", "el", "en", "en-AU", "en-CA", "en-GB", "en-IE", "en-IN", "en-NZ", "en-SG", "es", "es-419", "et", "fi", "fil", "fr", "fr-CA", "hr", "hu", "id", "it", "ja", "ko", "lt", "lv", "ms", "mt", "nb", "nl", "pl", "pt", "pt-BR", "ro", "ru", "sk", "sl", "sv", "th", "tr", "vi", "zh", "zh-HK", "zh-TW"])

    # The account for which the session was created on behalf of. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://stripe.com/docs/connect/charges-transfers#on-behalf-of). Use the [Accounts API](https://stripe.com/docs/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
    @[JSON::Field(key: "on_behalf_of", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    getter on_behalf_of : String? = nil

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    # The URL to redirect customers to when they click on the portal's link to return to your website.
    @[JSON::Field(key: "return_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: return_url.nil? && !return_url_present?)]
    getter return_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? return_url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @configuration : Stripe::BillingPortalSessionConfiguration? = nil,
      @created : Int64? = nil,
      @customer : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @url : String? = nil,
      # Optional properties
      @locale : String? = nil,
      @on_behalf_of : String? = nil,
      @return_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"configuration\" is required and cannot be null") if @configuration.nil?
      # This is a model configuration : Stripe::BillingPortalSessionConfiguration?
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?
      invalid_properties.push("\"customer\" is required and cannot be null") if @customer.nil?
      if _customer = @customer
        if _customer.to_s.size > 5000
          invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
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
      invalid_properties.push("\"url\" is required and cannot be null") if @url.nil?
      if _url = @url
        if _url.to_s.size > 5000
          invalid_properties.push("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_LOCALE.error_message) unless ENUM_VALIDATOR_FOR_LOCALE.valid?(@locale)
      if _on_behalf_of = @on_behalf_of
        if _on_behalf_of.to_s.size > 5000
          invalid_properties.push("invalid value for \"on_behalf_of\", the character length must be smaller than or equal to 5000.")
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
    def valid?
      return false if @configuration.nil?
      return false if @created.nil?
      return false if @customer.nil?
      if _customer = @customer
        return false if _customer.to_s.size > 5000
      end
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @url.nil?
      if _url = @url
        return false if _url.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_LOCALE.valid?(@locale)
      if _on_behalf_of = @on_behalf_of
        return false if _on_behalf_of.to_s.size > 5000
      end
      if _return_url = @return_url
        return false if _return_url.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] configuration Object to be assigned
    def configuration=(configuration : Stripe::BillingPortalSessionConfiguration?)
      if configuration.nil?
        raise ArgumentError.new("\"configuration\" is required and cannot be null")
      end
      @configuration = configuration
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      @created = created
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
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      @livemode = livemode
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
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        raise ArgumentError.new("\"url\" is required and cannot be null")
      end
      _url = url.not_nil!
      if _url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
      end

      @url = url
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
      _on_behalf_of = on_behalf_of.not_nil!
      if _on_behalf_of.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"on_behalf_of\", the character length must be smaller than or equal to 5000.")
      end

      @on_behalf_of = on_behalf_of
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
    def_equals_and_hash(@configuration, @created, @customer, @id, @livemode, @object, @url, @locale, @locale_present, @on_behalf_of, @on_behalf_of_present, @return_url, @return_url_present)
  end
end
