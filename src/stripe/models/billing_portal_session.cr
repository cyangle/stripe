#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./billing_portal_session_configuration"
require "./portal_flows_flow"

module Stripe
  # The Billing customer portal is a Stripe-hosted UI for subscription and billing management.  A portal configuration describes the functionality and features that you want to provide to your customers through the portal.  A portal session describes the instantiation of the customer portal for a particular customer. By visiting the session's URL, the customer can manage their subscriptions and billing details. For security reasons, sessions are short-lived and will expire if the customer does not visit the URL. Create sessions on-demand when customers intend to manage their subscriptions and billing details.  Related guide: [Customer management](/customer-management)
  class BillingPortalSession
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "configuration", type: Stripe::BillingPortalSessionConfiguration?, default: nil, required: true, nullable: false, emit_null: false)]
    getter configuration : Stripe::BillingPortalSessionConfiguration? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The ID of the customer for this session.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer : String? = nil
    MAX_LENGTH_FOR_CUSTOMER = 5000

    @[JSON::Field(key: "flow", type: Stripe::PortalFlowsFlow?, default: nil, required: true, nullable: true, emit_null: true)]
    getter flow : Stripe::PortalFlowsFlow? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
    @[JSON::Field(key: "locale", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter locale : String? = nil
    ERROR_MESSAGE_FOR_LOCALE = "invalid value for \"locale\", must be one of [auto, bg, cs, da, de, el, en, en-AU, en-CA, en-GB, en-IE, en-IN, en-NZ, en-SG, es, es-419, et, fi, fil, fr, fr-CA, hr, hu, id, it, ja, ko, lt, lv, ms, mt, nb, nl, pl, pt, pt-BR, ro, ru, sk, sl, sv, th, tr, vi, zh, zh-HK, zh-TW]."
    VALID_VALUES_FOR_LOCALE  = String.static_array("auto", "bg", "cs", "da", "de", "el", "en", "en-AU", "en-CA", "en-GB", "en-IE", "en-IN", "en-NZ", "en-SG", "es", "es-419", "et", "fi", "fil", "fr", "fr-CA", "hr", "hu", "id", "it", "ja", "ko", "lt", "lv", "ms", "mt", "nb", "nl", "pl", "pt", "pt-BR", "ro", "ru", "sk", "sl", "sv", "th", "tr", "vi", "zh", "zh-HK", "zh-TW")

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [billing_portal.session]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("billing_portal.session")

    # The account for which the session was created on behalf of. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant). Use the [Accounts API](https://stripe.com/docs/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
    @[JSON::Field(key: "on_behalf_of", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter on_behalf_of : String? = nil
    MAX_LENGTH_FOR_ON_BEHALF_OF = 5000

    # The URL to redirect customers to when they click on the portal's link to return to your website.
    @[JSON::Field(key: "return_url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter return_url : String? = nil
    MAX_LENGTH_FOR_RETURN_URL = 5000

    # The short-lived URL of the session that gives customers access to the customer portal.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @configuration : Stripe::BillingPortalSessionConfiguration? = nil,
      @created : Int64? = nil,
      @customer : String? = nil,
      @flow : Stripe::PortalFlowsFlow? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @locale : String? = nil,
      @object : String? = nil,
      @on_behalf_of : String? = nil,
      @return_url : String? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"configuration\" is required and cannot be null") if @configuration.nil?

      unless (_configuration = @configuration).nil?
        invalid_properties.concat(_configuration.list_invalid_properties_for("configuration")) if _configuration.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"customer\" is required and cannot be null") if @customer.nil?

      unless (_customer = @customer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_flow = @flow).nil?
        invalid_properties.concat(_flow.list_invalid_properties_for("flow")) if _flow.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      unless (_locale = @locale).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_LOCALE) unless OpenApi::EnumValidator.valid?(_locale, VALID_VALUES_FOR_LOCALE)
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_on_behalf_of = @on_behalf_of).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("on_behalf_of", _on_behalf_of.to_s.size, MAX_LENGTH_FOR_ON_BEHALF_OF)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_return_url = @return_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("return_url", _return_url.to_s.size, MAX_LENGTH_FOR_RETURN_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"url\" is required and cannot be null") if @url.nil?

      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @configuration.nil?
      unless (_configuration = @configuration).nil?
        return false if _configuration.is_a?(OpenApi::Validatable) && !_configuration.valid?
      end

      return false if @created.nil?

      return false if @customer.nil?
      unless (_customer = @customer).nil?
        return false if _customer.to_s.size > MAX_LENGTH_FOR_CUSTOMER
      end

      unless (_flow = @flow).nil?
        return false if _flow.is_a?(OpenApi::Validatable) && !_flow.valid?
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      unless (_locale = @locale).nil?
        return false unless OpenApi::EnumValidator.valid?(_locale, VALID_VALUES_FOR_LOCALE)
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        return false if _on_behalf_of.to_s.size > MAX_LENGTH_FOR_ON_BEHALF_OF
      end

      unless (_return_url = @return_url).nil?
        return false if _return_url.to_s.size > MAX_LENGTH_FOR_RETURN_URL
      end

      return false if @url.nil?
      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] configuration Object to be assigned
    def configuration=(new_value : Stripe::BillingPortalSessionConfiguration?)
      raise ArgumentError.new("\"configuration\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @configuration = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : String?)
      raise ArgumentError.new("\"customer\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("customer", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flow Object to be assigned
    def flow=(new_value : Stripe::PortalFlowsFlow?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @flow = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] locale Object to be assigned
    def locale=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("locale", new_value, VALID_VALUES_FOR_LOCALE)
      end

      @locale = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("on_behalf_of", new_value.to_s.size, MAX_LENGTH_FOR_ON_BEHALF_OF)
      end

      @on_behalf_of = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("return_url", new_value.to_s.size, MAX_LENGTH_FOR_RETURN_URL)
      end

      @return_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(new_value : String?)
      raise ArgumentError.new("\"url\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("url", new_value.to_s.size, MAX_LENGTH_FOR_URL)
      end

      @url = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@configuration, @created, @customer, @flow, @id, @livemode, @locale, @object, @on_behalf_of, @return_url, @url)
  end
end
