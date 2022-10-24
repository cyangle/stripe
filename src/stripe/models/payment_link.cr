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
  # A payment link is a shareable URL that will take your customers to a hosted payment page. A payment link can be shared and used multiple times.  When a customer opens a payment link it will open a new [checkout session](https://stripe.com/docs/api/checkout/sessions) to render the payment page. You can use [checkout session events](https://stripe.com/docs/api/events/types#event_types-checkout.session.completed) to track payments through payment links.  Related guide: [Payment Links API](https://stripe.com/docs/payments/payment-links/api)
  class PaymentLink
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    @[JSON::Field(key: "after_completion", type: Stripe::PaymentLinksResourceAfterCompletion?, default: nil, required: true, nullable: false, emit_null: false)]
    getter after_completion : Stripe::PaymentLinksResourceAfterCompletion? = nil

    # Whether user redeemable promotion codes are enabled.
    @[JSON::Field(key: "allow_promotion_codes", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter allow_promotion_codes : Bool? = nil

    @[JSON::Field(key: "automatic_tax", type: Stripe::PaymentLinksResourceAutomaticTax?, default: nil, required: true, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::PaymentLinksResourceAutomaticTax? = nil

    # Configuration for collecting the customer's billing address.
    @[JSON::Field(key: "billing_address_collection", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter billing_address_collection : String? = nil
    ERROR_MESSAGE_FOR_BILLING_ADDRESS_COLLECTION = "invalid value for \"billing_address_collection\", must be one of [auto, required]."
    VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION  = String.static_array("auto", "required")

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Configuration for Customer creation during checkout.
    @[JSON::Field(key: "customer_creation", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer_creation : String? = nil
    ERROR_MESSAGE_FOR_CUSTOMER_CREATION = "invalid value for \"customer_creation\", must be one of [always, if_required]."
    VALID_VALUES_FOR_CUSTOMER_CREATION  = String.static_array("always", "if_required")

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [payment_link]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("payment_link")

    # Configuration for collecting a payment method during checkout.
    @[JSON::Field(key: "payment_method_collection", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_method_collection : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_METHOD_COLLECTION = "invalid value for \"payment_method_collection\", must be one of [always, if_required]."
    VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION  = String.static_array("always", "if_required")

    @[JSON::Field(key: "phone_number_collection", type: Stripe::PaymentLinksResourcePhoneNumberCollection?, default: nil, required: true, nullable: false, emit_null: false)]
    getter phone_number_collection : Stripe::PaymentLinksResourcePhoneNumberCollection? = nil

    # The shipping rate options applied to the session.
    @[JSON::Field(key: "shipping_options", type: Array(Stripe::PaymentLinksResourceShippingOption)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter shipping_options : Array(Stripe::PaymentLinksResourceShippingOption)? = nil

    # Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
    @[JSON::Field(key: "submit_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter submit_type : String? = nil
    ERROR_MESSAGE_FOR_SUBMIT_TYPE = "invalid value for \"submit_type\", must be one of [auto, book, donate, pay]."
    VALID_VALUES_FOR_SUBMIT_TYPE  = String.static_array("auto", "book", "donate", "pay")

    @[JSON::Field(key: "tax_id_collection", type: Stripe::PaymentLinksResourceTaxIdCollection?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_id_collection : Stripe::PaymentLinksResourceTaxIdCollection? = nil

    # The public URL that can be shared with customers.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # End of Required Properties

    # Optional Properties

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application_fee_amount.nil? && !application_fee_amount_present?)]
    getter application_fee_amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? application_fee_amount_present : Bool = false

    # This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account.
    @[JSON::Field(key: "application_fee_percent", type: Float64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application_fee_percent.nil? && !application_fee_percent_present?)]
    getter application_fee_percent : Float64? = nil

    @[JSON::Field(ignore: true)]
    property? application_fee_percent_present : Bool = false

    @[JSON::Field(key: "consent_collection", type: Stripe::PaymentLinkConsentCollection?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: consent_collection.nil? && !consent_collection_present?)]
    getter consent_collection : Stripe::PaymentLinkConsentCollection? = nil

    @[JSON::Field(ignore: true)]
    property? consent_collection_present : Bool = false

    @[JSON::Field(key: "line_items", type: Stripe::PaymentLinksResourceListLineItems?, default: nil, required: false, nullable: false, emit_null: false)]
    getter line_items : Stripe::PaymentLinksResourceListLineItems? = nil

    @[JSON::Field(key: "on_behalf_of", type: Stripe::PaymentLinkOnBehalfOf?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    getter on_behalf_of : Stripe::PaymentLinkOnBehalfOf? = nil

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    @[JSON::Field(key: "payment_intent_data", type: Stripe::PaymentLinkPaymentIntentData?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_intent_data.nil? && !payment_intent_data_present?)]
    getter payment_intent_data : Stripe::PaymentLinkPaymentIntentData? = nil

    @[JSON::Field(ignore: true)]
    property? payment_intent_data_present : Bool = false

    # The list of payment method types that customers can use. When `null`, Stripe will dynamically show relevant payment methods you've enabled in your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_method_types.nil? && !payment_method_types_present?)]
    getter payment_method_types : Array(String)? = nil
    ERROR_MESSAGE_FOR_PAYMENT_METHOD_TYPES = "invalid value for \"payment_method_types\", must be one of [affirm, afterpay_clearpay, alipay, au_becs_debit, bacs_debit, bancontact, blik, boleto, card, eps, fpx, giropay, grabpay, ideal, klarna, konbini, oxxo, p24, paynow, pix, promptpay, sepa_debit, sofort, us_bank_account, wechat_pay]."
    VALID_VALUES_FOR_PAYMENT_METHOD_TYPES  = String.static_array("affirm", "afterpay_clearpay", "alipay", "au_becs_debit", "bacs_debit", "bancontact", "blik", "boleto", "card", "eps", "fpx", "giropay", "grabpay", "ideal", "klarna", "konbini", "oxxo", "p24", "paynow", "pix", "promptpay", "sepa_debit", "sofort", "us_bank_account", "wechat_pay")

    @[JSON::Field(ignore: true)]
    property? payment_method_types_present : Bool = false

    @[JSON::Field(key: "shipping_address_collection", type: Stripe::PaymentLinkShippingAddressCollection?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: shipping_address_collection.nil? && !shipping_address_collection_present?)]
    getter shipping_address_collection : Stripe::PaymentLinkShippingAddressCollection? = nil

    @[JSON::Field(ignore: true)]
    property? shipping_address_collection_present : Bool = false

    @[JSON::Field(key: "subscription_data", type: Stripe::PaymentLinkSubscriptionData?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subscription_data.nil? && !subscription_data_present?)]
    getter subscription_data : Stripe::PaymentLinkSubscriptionData? = nil

    @[JSON::Field(ignore: true)]
    property? subscription_data_present : Bool = false

    @[JSON::Field(key: "transfer_data", type: Stripe::PaymentLinkTransferData?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    getter transfer_data : Stripe::PaymentLinkTransferData? = nil

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool? = nil,
      @after_completion : Stripe::PaymentLinksResourceAfterCompletion? = nil,
      @allow_promotion_codes : Bool? = nil,
      @automatic_tax : Stripe::PaymentLinksResourceAutomaticTax? = nil,
      @billing_address_collection : String? = nil,
      @currency : String? = nil,
      @customer_creation : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @payment_method_collection : String? = nil,
      @phone_number_collection : Stripe::PaymentLinksResourcePhoneNumberCollection? = nil,
      @shipping_options : Array(Stripe::PaymentLinksResourceShippingOption)? = nil,
      @submit_type : String? = nil,
      @tax_id_collection : Stripe::PaymentLinksResourceTaxIdCollection? = nil,
      @url : String? = nil,
      # Optional properties
      @application_fee_amount : Int64? = nil,
      @application_fee_percent : Float64? = nil,
      @consent_collection : Stripe::PaymentLinkConsentCollection? = nil,
      @line_items : Stripe::PaymentLinksResourceListLineItems? = nil,
      @on_behalf_of : Stripe::PaymentLinkOnBehalfOf? = nil,
      @payment_intent_data : Stripe::PaymentLinkPaymentIntentData? = nil,
      @payment_method_types : Array(String)? = nil,
      @shipping_address_collection : Stripe::PaymentLinkShippingAddressCollection? = nil,
      @subscription_data : Stripe::PaymentLinkSubscriptionData? = nil,
      @transfer_data : Stripe::PaymentLinkTransferData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"active\" is required and cannot be null") if @active.nil?

      invalid_properties.push("\"after_completion\" is required and cannot be null") if @after_completion.nil?

      unless (_after_completion = @after_completion).nil?
        invalid_properties.concat(_after_completion.list_invalid_properties_for("after_completion")) if _after_completion.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"allow_promotion_codes\" is required and cannot be null") if @allow_promotion_codes.nil?

      invalid_properties.push("\"automatic_tax\" is required and cannot be null") if @automatic_tax.nil?

      unless (_automatic_tax = @automatic_tax).nil?
        invalid_properties.concat(_automatic_tax.list_invalid_properties_for("automatic_tax")) if _automatic_tax.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"billing_address_collection\" is required and cannot be null") if @billing_address_collection.nil?

      unless (_billing_address_collection = @billing_address_collection).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_BILLING_ADDRESS_COLLECTION) unless OpenApi::EnumValidator.valid?(_billing_address_collection, VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION)
      end
      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"customer_creation\" is required and cannot be null") if @customer_creation.nil?

      unless (_customer_creation = @customer_creation).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CUSTOMER_CREATION) unless OpenApi::EnumValidator.valid?(_customer_creation, VALID_VALUES_FOR_CUSTOMER_CREATION)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"payment_method_collection\" is required and cannot be null") if @payment_method_collection.nil?

      unless (_payment_method_collection = @payment_method_collection).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_METHOD_COLLECTION) unless OpenApi::EnumValidator.valid?(_payment_method_collection, VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION)
      end
      invalid_properties.push("\"phone_number_collection\" is required and cannot be null") if @phone_number_collection.nil?

      unless (_phone_number_collection = @phone_number_collection).nil?
        invalid_properties.concat(_phone_number_collection.list_invalid_properties_for("phone_number_collection")) if _phone_number_collection.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"shipping_options\" is required and cannot be null") if @shipping_options.nil?

      unless (_shipping_options = @shipping_options).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "shipping_options", container: _shipping_options)) if _shipping_options.is_a?(Array)
      end
      invalid_properties.push("\"submit_type\" is required and cannot be null") if @submit_type.nil?

      unless (_submit_type = @submit_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SUBMIT_TYPE) unless OpenApi::EnumValidator.valid?(_submit_type, VALID_VALUES_FOR_SUBMIT_TYPE)
      end
      invalid_properties.push("\"tax_id_collection\" is required and cannot be null") if @tax_id_collection.nil?

      unless (_tax_id_collection = @tax_id_collection).nil?
        invalid_properties.concat(_tax_id_collection.list_invalid_properties_for("tax_id_collection")) if _tax_id_collection.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"url\" is required and cannot be null") if @url.nil?

      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_consent_collection = @consent_collection).nil?
        invalid_properties.concat(_consent_collection.list_invalid_properties_for("consent_collection")) if _consent_collection.is_a?(OpenApi::Validatable)
      end
      unless (_line_items = @line_items).nil?
        invalid_properties.concat(_line_items.list_invalid_properties_for("line_items")) if _line_items.is_a?(OpenApi::Validatable)
      end
      unless (_on_behalf_of = @on_behalf_of).nil?
        invalid_properties.concat(_on_behalf_of.list_invalid_properties_for("on_behalf_of")) if _on_behalf_of.is_a?(OpenApi::Validatable)
      end
      unless (_payment_intent_data = @payment_intent_data).nil?
        invalid_properties.concat(_payment_intent_data.list_invalid_properties_for("payment_intent_data")) if _payment_intent_data.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_types = @payment_method_types).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_METHOD_TYPES) unless OpenApi::EnumValidator.valid?(_payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      end
      unless (_shipping_address_collection = @shipping_address_collection).nil?
        invalid_properties.concat(_shipping_address_collection.list_invalid_properties_for("shipping_address_collection")) if _shipping_address_collection.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_data = @subscription_data).nil?
        invalid_properties.concat(_subscription_data.list_invalid_properties_for("subscription_data")) if _subscription_data.is_a?(OpenApi::Validatable)
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @active.nil?

      return false if @after_completion.nil?
      unless (_after_completion = @after_completion).nil?
        return false if _after_completion.is_a?(OpenApi::Validatable) && !_after_completion.valid?
      end

      return false if @allow_promotion_codes.nil?

      return false if @automatic_tax.nil?
      unless (_automatic_tax = @automatic_tax).nil?
        return false if _automatic_tax.is_a?(OpenApi::Validatable) && !_automatic_tax.valid?
      end

      return false if @billing_address_collection.nil?
      unless (_billing_address_collection = @billing_address_collection).nil?
        return false unless OpenApi::EnumValidator.valid?(_billing_address_collection, VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION)
      end

      return false if @currency.nil?

      return false if @customer_creation.nil?
      unless (_customer_creation = @customer_creation).nil?
        return false unless OpenApi::EnumValidator.valid?(_customer_creation, VALID_VALUES_FOR_CUSTOMER_CREATION)
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @metadata.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @payment_method_collection.nil?
      unless (_payment_method_collection = @payment_method_collection).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_method_collection, VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION)
      end

      return false if @phone_number_collection.nil?
      unless (_phone_number_collection = @phone_number_collection).nil?
        return false if _phone_number_collection.is_a?(OpenApi::Validatable) && !_phone_number_collection.valid?
      end

      return false if @shipping_options.nil?
      unless (_shipping_options = @shipping_options).nil?
        return false if _shipping_options.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _shipping_options)
      end

      return false if @submit_type.nil?
      unless (_submit_type = @submit_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_submit_type, VALID_VALUES_FOR_SUBMIT_TYPE)
      end

      return false if @tax_id_collection.nil?
      unless (_tax_id_collection = @tax_id_collection).nil?
        return false if _tax_id_collection.is_a?(OpenApi::Validatable) && !_tax_id_collection.valid?
      end

      return false if @url.nil?
      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      unless (_consent_collection = @consent_collection).nil?
        return false if _consent_collection.is_a?(OpenApi::Validatable) && !_consent_collection.valid?
      end

      unless (_line_items = @line_items).nil?
        return false if _line_items.is_a?(OpenApi::Validatable) && !_line_items.valid?
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        return false if _on_behalf_of.is_a?(OpenApi::Validatable) && !_on_behalf_of.valid?
      end

      unless (_payment_intent_data = @payment_intent_data).nil?
        return false if _payment_intent_data.is_a?(OpenApi::Validatable) && !_payment_intent_data.valid?
      end

      unless (_payment_method_types = @payment_method_types).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      end

      unless (_shipping_address_collection = @shipping_address_collection).nil?
        return false if _shipping_address_collection.is_a?(OpenApi::Validatable) && !_shipping_address_collection.valid?
      end

      unless (_subscription_data = @subscription_data).nil?
        return false if _subscription_data.is_a?(OpenApi::Validatable) && !_subscription_data.valid?
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        raise ArgumentError.new("\"active\" is required and cannot be null")
      end
      _active = active.not_nil!
      @active = _active
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] after_completion Object to be assigned
    def after_completion=(after_completion : Stripe::PaymentLinksResourceAfterCompletion?)
      if after_completion.nil?
        raise ArgumentError.new("\"after_completion\" is required and cannot be null")
      end
      _after_completion = after_completion.not_nil!
      _after_completion.validate if _after_completion.is_a?(OpenApi::Validatable)
      @after_completion = _after_completion
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allow_promotion_codes Object to be assigned
    def allow_promotion_codes=(allow_promotion_codes : Bool?)
      if allow_promotion_codes.nil?
        raise ArgumentError.new("\"allow_promotion_codes\" is required and cannot be null")
      end
      _allow_promotion_codes = allow_promotion_codes.not_nil!
      @allow_promotion_codes = _allow_promotion_codes
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic_tax Object to be assigned
    def automatic_tax=(automatic_tax : Stripe::PaymentLinksResourceAutomaticTax?)
      if automatic_tax.nil?
        raise ArgumentError.new("\"automatic_tax\" is required and cannot be null")
      end
      _automatic_tax = automatic_tax.not_nil!
      _automatic_tax.validate if _automatic_tax.is_a?(OpenApi::Validatable)
      @automatic_tax = _automatic_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_address_collection Object to be assigned
    def billing_address_collection=(billing_address_collection : String?)
      if billing_address_collection.nil?
        raise ArgumentError.new("\"billing_address_collection\" is required and cannot be null")
      end
      _billing_address_collection = billing_address_collection.not_nil!
      OpenApi::EnumValidator.validate("billing_address_collection", _billing_address_collection, VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION)
      @billing_address_collection = _billing_address_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_creation Object to be assigned
    def customer_creation=(customer_creation : String?)
      if customer_creation.nil?
        raise ArgumentError.new("\"customer_creation\" is required and cannot be null")
      end
      _customer_creation = customer_creation.not_nil!
      OpenApi::EnumValidator.validate("customer_creation", _customer_creation, VALID_VALUES_FOR_CUSTOMER_CREATION)
      @customer_creation = _customer_creation
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
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        raise ArgumentError.new("\"metadata\" is required and cannot be null")
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
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
    # @param [Object] payment_method_collection Object to be assigned
    def payment_method_collection=(payment_method_collection : String?)
      if payment_method_collection.nil?
        raise ArgumentError.new("\"payment_method_collection\" is required and cannot be null")
      end
      _payment_method_collection = payment_method_collection.not_nil!
      OpenApi::EnumValidator.validate("payment_method_collection", _payment_method_collection, VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION)
      @payment_method_collection = _payment_method_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_number_collection Object to be assigned
    def phone_number_collection=(phone_number_collection : Stripe::PaymentLinksResourcePhoneNumberCollection?)
      if phone_number_collection.nil?
        raise ArgumentError.new("\"phone_number_collection\" is required and cannot be null")
      end
      _phone_number_collection = phone_number_collection.not_nil!
      _phone_number_collection.validate if _phone_number_collection.is_a?(OpenApi::Validatable)
      @phone_number_collection = _phone_number_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_options Object to be assigned
    def shipping_options=(shipping_options : Array(Stripe::PaymentLinksResourceShippingOption)?)
      if shipping_options.nil?
        raise ArgumentError.new("\"shipping_options\" is required and cannot be null")
      end
      _shipping_options = shipping_options.not_nil!
      OpenApi::ContainerValidator.validate(container: _shipping_options) if _shipping_options.is_a?(Array)
      @shipping_options = _shipping_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] submit_type Object to be assigned
    def submit_type=(submit_type : String?)
      if submit_type.nil?
        raise ArgumentError.new("\"submit_type\" is required and cannot be null")
      end
      _submit_type = submit_type.not_nil!
      OpenApi::EnumValidator.validate("submit_type", _submit_type, VALID_VALUES_FOR_SUBMIT_TYPE)
      @submit_type = _submit_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id_collection Object to be assigned
    def tax_id_collection=(tax_id_collection : Stripe::PaymentLinksResourceTaxIdCollection?)
      if tax_id_collection.nil?
        raise ArgumentError.new("\"tax_id_collection\" is required and cannot be null")
      end
      _tax_id_collection = tax_id_collection.not_nil!
      _tax_id_collection.validate if _tax_id_collection.is_a?(OpenApi::Validatable)
      @tax_id_collection = _tax_id_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        raise ArgumentError.new("\"url\" is required and cannot be null")
      end
      _url = url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
      @url = _url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_amount Object to be assigned
    def application_fee_amount=(application_fee_amount : Int64?)
      if application_fee_amount.nil?
        return @application_fee_amount = nil
      end
      _application_fee_amount = application_fee_amount.not_nil!
      @application_fee_amount = _application_fee_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_percent Object to be assigned
    def application_fee_percent=(application_fee_percent : Float64?)
      if application_fee_percent.nil?
        return @application_fee_percent = nil
      end
      _application_fee_percent = application_fee_percent.not_nil!
      @application_fee_percent = _application_fee_percent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] consent_collection Object to be assigned
    def consent_collection=(consent_collection : Stripe::PaymentLinkConsentCollection?)
      if consent_collection.nil?
        return @consent_collection = nil
      end
      _consent_collection = consent_collection.not_nil!
      _consent_collection.validate if _consent_collection.is_a?(OpenApi::Validatable)
      @consent_collection = _consent_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line_items Object to be assigned
    def line_items=(line_items : Stripe::PaymentLinksResourceListLineItems?)
      if line_items.nil?
        return @line_items = nil
      end
      _line_items = line_items.not_nil!
      _line_items.validate if _line_items.is_a?(OpenApi::Validatable)
      @line_items = _line_items
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(on_behalf_of : Stripe::PaymentLinkOnBehalfOf?)
      if on_behalf_of.nil?
        return @on_behalf_of = nil
      end
      _on_behalf_of = on_behalf_of.not_nil!
      _on_behalf_of.validate if _on_behalf_of.is_a?(OpenApi::Validatable)
      @on_behalf_of = _on_behalf_of
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_intent_data Object to be assigned
    def payment_intent_data=(payment_intent_data : Stripe::PaymentLinkPaymentIntentData?)
      if payment_intent_data.nil?
        return @payment_intent_data = nil
      end
      _payment_intent_data = payment_intent_data.not_nil!
      _payment_intent_data.validate if _payment_intent_data.is_a?(OpenApi::Validatable)
      @payment_intent_data = _payment_intent_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(payment_method_types : Array(String)?)
      if payment_method_types.nil?
        return @payment_method_types = nil
      end
      _payment_method_types = payment_method_types.not_nil!
      OpenApi::EnumValidator.validate("payment_method_types", _payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      @payment_method_types = _payment_method_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_address_collection Object to be assigned
    def shipping_address_collection=(shipping_address_collection : Stripe::PaymentLinkShippingAddressCollection?)
      if shipping_address_collection.nil?
        return @shipping_address_collection = nil
      end
      _shipping_address_collection = shipping_address_collection.not_nil!
      _shipping_address_collection.validate if _shipping_address_collection.is_a?(OpenApi::Validatable)
      @shipping_address_collection = _shipping_address_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_data Object to be assigned
    def subscription_data=(subscription_data : Stripe::PaymentLinkSubscriptionData?)
      if subscription_data.nil?
        return @subscription_data = nil
      end
      _subscription_data = subscription_data.not_nil!
      _subscription_data.validate if _subscription_data.is_a?(OpenApi::Validatable)
      @subscription_data = _subscription_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::PaymentLinkTransferData?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      _transfer_data.validate if _transfer_data.is_a?(OpenApi::Validatable)
      @transfer_data = _transfer_data
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @after_completion, @allow_promotion_codes, @automatic_tax, @billing_address_collection, @currency, @customer_creation, @id, @livemode, @metadata, @object, @payment_method_collection, @phone_number_collection, @shipping_options, @submit_type, @tax_id_collection, @url, @application_fee_amount, @application_fee_amount_present, @application_fee_percent, @application_fee_percent_present, @consent_collection, @consent_collection_present, @line_items, @on_behalf_of, @on_behalf_of_present, @payment_intent_data, @payment_intent_data_present, @payment_method_types, @payment_method_types_present, @shipping_address_collection, @shipping_address_collection_present, @subscription_data, @subscription_data_present, @transfer_data, @transfer_data_present)
  end
end
