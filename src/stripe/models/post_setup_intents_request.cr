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
  class PostSetupIntentsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Set to `true` to attempt to confirm this SetupIntent immediately. This parameter defaults to `false`. If the payment method attached is a card, a return_url may be provided in case additional authentication is required.
    @[JSON::Field(key: "confirm", type: Bool?, presence: true, ignore_serialize: confirm.nil? && !confirm_present?)]
    property confirm : Bool?

    @[JSON::Field(ignore: true)]
    property? confirm_present : Bool = false

    # ID of the Customer this SetupIntent belongs to, if one exists.  If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "mandate_data", type: SecretKeyParam2?, presence: true, ignore_serialize: mandate_data.nil? && !mandate_data_present?)]
    property mandate_data : SecretKeyParam2?

    @[JSON::Field(ignore: true)]
    property? mandate_data_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The Stripe account ID for which this SetupIntent is created.
    @[JSON::Field(key: "on_behalf_of", type: String?, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    property on_behalf_of : String?

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
    @[JSON::Field(key: "payment_method", type: String?, presence: true, ignore_serialize: payment_method.nil? && !payment_method_present?)]
    getter payment_method : String?

    @[JSON::Field(ignore: true)]
    property? payment_method_present : Bool = false

    @[JSON::Field(key: "payment_method_data", type: PaymentMethodDataParams1?, presence: true, ignore_serialize: payment_method_data.nil? && !payment_method_data_present?)]
    property payment_method_data : PaymentMethodDataParams1?

    @[JSON::Field(ignore: true)]
    property? payment_method_data_present : Bool = false

    @[JSON::Field(key: "payment_method_options", type: PaymentMethodOptionsParam18?, presence: true, ignore_serialize: payment_method_options.nil? && !payment_method_options_present?)]
    property payment_method_options : PaymentMethodOptionsParam18?

    @[JSON::Field(ignore: true)]
    property? payment_method_options_present : Bool = false

    # The list of payment method types (e.g. card) that this SetupIntent is allowed to use. If this is not provided, defaults to [\"card\"].
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, presence: true, ignore_serialize: payment_method_types.nil? && !payment_method_types_present?)]
    property payment_method_types : Array(String)?

    @[JSON::Field(ignore: true)]
    property? payment_method_types_present : Bool = false

    # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
    @[JSON::Field(key: "return_url", type: String?, presence: true, ignore_serialize: return_url.nil? && !return_url_present?)]
    property return_url : String?

    @[JSON::Field(ignore: true)]
    property? return_url_present : Bool = false

    @[JSON::Field(key: "single_use", type: SetupIntentSingleUseParams?, presence: true, ignore_serialize: single_use.nil? && !single_use_present?)]
    property single_use : SetupIntentSingleUseParams?

    @[JSON::Field(ignore: true)]
    property? single_use_present : Bool = false

    # Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
    @[JSON::Field(key: "usage", type: String?, presence: true, ignore_serialize: usage.nil? && !usage_present?)]
    getter usage : String?

    @[JSON::Field(ignore: true)]
    property? usage_present : Bool = false

    ENUM_VALIDATOR_FOR_USAGE = EnumValidator.new("usage", "String", ["off_session", "on_session"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @confirm : Bool? = nil,
      @customer : String? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @mandate_data : SecretKeyParam2? = nil,
      @metadata : Hash(String, String)? = nil,
      @on_behalf_of : String? = nil,
      @payment_method : String? = nil,
      @payment_method_data : PaymentMethodDataParams1? = nil,
      @payment_method_options : PaymentMethodOptionsParam18? = nil,
      @payment_method_types : Array(String)? = nil,
      @return_url : String? = nil,
      @single_use : SetupIntentSingleUseParams? = nil,
      @usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 1000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      if !@payment_method.nil? && @payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_USAGE.error_message) unless ENUM_VALIDATOR_FOR_USAGE.valid?(@usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer.nil? && @customer.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 1000
      return false if !@payment_method.nil? && @payment_method.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_USAGE.valid?(@usage)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer Value to be assigned
    def customer=(customer : String?)
      if !customer.nil? && customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description : String?)
      if !description.nil? && description.to_s.size > 1000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_method Value to be assigned
    def payment_method=(payment_method : String?)
      if !payment_method.nil? && payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @payment_method = payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage Object to be assigned
    def usage=(usage : String?)
      ENUM_VALIDATOR_FOR_USAGE.valid!(usage)
      @usage = usage
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
    def_equals_and_hash(@confirm, @confirm_present, @customer, @customer_present, @description, @description_present, @expand, @expand_present, @mandate_data, @mandate_data_present, @metadata, @metadata_present, @on_behalf_of, @on_behalf_of_present, @payment_method, @payment_method_present, @payment_method_data, @payment_method_data_present, @payment_method_options, @payment_method_options_present, @payment_method_types, @payment_method_types_present, @return_url, @return_url_present, @single_use, @single_use_present, @usage, @usage_present)
  end
end
