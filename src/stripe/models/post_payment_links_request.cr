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
  class PostPaymentLinksRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
    @[JSON::Field(key: "line_items", type: Array(Stripe::LineItemsCreateParams)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter line_items : Array(Stripe::LineItemsCreateParams)? = nil

    # Optional properties

    @[JSON::Field(key: "after_completion", type: Stripe::AfterCompletionParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter after_completion : Stripe::AfterCompletionParams? = nil

    # Enables user redeemable promotion codes.
    @[JSON::Field(key: "allow_promotion_codes", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter allow_promotion_codes : Bool? = nil

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Can only be applied when there are no line items with recurring prices.
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_amount : Int64? = nil

    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
    @[JSON::Field(key: "application_fee_percent", type: Float64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_percent : Float64? = nil

    @[JSON::Field(key: "automatic_tax", type: Stripe::AutomaticTaxParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::AutomaticTaxParams1? = nil

    # Configuration for collecting the customer's billing address.
    @[JSON::Field(key: "billing_address_collection", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_address_collection : String? = nil
    ERROR_MESSAGE_FOR_BILLING_ADDRESS_COLLECTION = "invalid value for \"billing_address_collection\", must be one of [auto, required]."
    VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION  = StaticArray["auto", "required"]

    @[JSON::Field(key: "consent_collection", type: Stripe::ConsentCollectionParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter consent_collection : Stripe::ConsentCollectionParams1? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies) and supported by each line item's price.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Configures whether [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link create a [Customer](https://stripe.com/docs/api/customers).
    @[JSON::Field(key: "customer_creation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_creation : String? = nil
    ERROR_MESSAGE_FOR_CUSTOMER_CREATION = "invalid value for \"customer_creation\", must be one of [always, if_required]."
    VALID_VALUES_FOR_CUSTOMER_CREATION  = StaticArray["always", "if_required"]

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The account on behalf of which to charge.
    @[JSON::Field(key: "on_behalf_of", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter on_behalf_of : String? = nil

    @[JSON::Field(key: "payment_intent_data", type: Stripe::PaymentIntentDataParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_intent_data : Stripe::PaymentIntentDataParams1? = nil

    # Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.  Can only be set in `subscription` mode.  If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://stripe.com/docs/payments/checkout/free-trials).
    @[JSON::Field(key: "payment_method_collection", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_collection : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_METHOD_COLLECTION = "invalid value for \"payment_method_collection\", must be one of [always, if_required]."
    VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION  = StaticArray["always", "if_required"]

    # The list of payment method types that customers can use. If no value is passed, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods) (20+ payment methods [supported](https://stripe.com/docs/payments/payment-methods/integration-options#payment-method-product-support)).
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_types : Array(String)? = nil
    ERROR_MESSAGE_FOR_PAYMENT_METHOD_TYPES = "invalid value for \"payment_method_types\", must be one of [affirm, afterpay_clearpay, alipay, au_becs_debit, bacs_debit, bancontact, blik, boleto, card, eps, fpx, giropay, grabpay, ideal, klarna, konbini, oxxo, p24, paynow, pix, promptpay, sepa_debit, sofort, us_bank_account, wechat_pay]."
    VALID_VALUES_FOR_PAYMENT_METHOD_TYPES  = StaticArray["affirm", "afterpay_clearpay", "alipay", "au_becs_debit", "bacs_debit", "bancontact", "blik", "boleto", "card", "eps", "fpx", "giropay", "grabpay", "ideal", "klarna", "konbini", "oxxo", "p24", "paynow", "pix", "promptpay", "sepa_debit", "sofort", "us_bank_account", "wechat_pay"]

    @[JSON::Field(key: "phone_number_collection", type: Stripe::PhoneNumberCollectionParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone_number_collection : Stripe::PhoneNumberCollectionParams1? = nil

    @[JSON::Field(key: "shipping_address_collection", type: Stripe::ShippingAddressCollectionParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_address_collection : Stripe::ShippingAddressCollectionParams1? = nil

    # The shipping rate options to apply to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
    @[JSON::Field(key: "shipping_options", type: Array(Stripe::ShippingOptionParams1)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_options : Array(Stripe::ShippingOptionParams1)? = nil

    # Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://stripe.com/docs/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
    @[JSON::Field(key: "submit_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter submit_type : String? = nil
    ERROR_MESSAGE_FOR_SUBMIT_TYPE = "invalid value for \"submit_type\", must be one of [auto, book, donate, pay]."
    VALID_VALUES_FOR_SUBMIT_TYPE  = StaticArray["auto", "book", "donate", "pay"]

    @[JSON::Field(key: "subscription_data", type: Stripe::SubscriptionDataParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_data : Stripe::SubscriptionDataParams1? = nil

    @[JSON::Field(key: "tax_id_collection", type: Stripe::TaxIdCollectionParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_id_collection : Stripe::TaxIdCollectionParams1? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::TransferDataParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::TransferDataParams1? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @line_items : Array(Stripe::LineItemsCreateParams)? = nil,
      # Optional properties
      @after_completion : Stripe::AfterCompletionParams? = nil,
      @allow_promotion_codes : Bool? = nil,
      @application_fee_amount : Int64? = nil,
      @application_fee_percent : Float64? = nil,
      @automatic_tax : Stripe::AutomaticTaxParams1? = nil,
      @billing_address_collection : String? = nil,
      @consent_collection : Stripe::ConsentCollectionParams1? = nil,
      @currency : String? = nil,
      @customer_creation : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @on_behalf_of : String? = nil,
      @payment_intent_data : Stripe::PaymentIntentDataParams1? = nil,
      @payment_method_collection : String? = nil,
      @payment_method_types : Array(String)? = nil,
      @phone_number_collection : Stripe::PhoneNumberCollectionParams1? = nil,
      @shipping_address_collection : Stripe::ShippingAddressCollectionParams1? = nil,
      @shipping_options : Array(Stripe::ShippingOptionParams1)? = nil,
      @submit_type : String? = nil,
      @subscription_data : Stripe::SubscriptionDataParams1? = nil,
      @tax_id_collection : Stripe::TaxIdCollectionParams1? = nil,
      @transfer_data : Stripe::TransferDataParams1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"line_items\" is required and cannot be null") if @line_items.nil?

      if _line_items = @line_items
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "line_items", container: _line_items)) if _line_items.is_a?(Array)
      end
      if _after_completion = @after_completion
        invalid_properties.concat(_after_completion.list_invalid_properties_for("after_completion")) if _after_completion.is_a?(OpenApi::Validatable)
      end

      if _automatic_tax = @automatic_tax
        invalid_properties.concat(_automatic_tax.list_invalid_properties_for("automatic_tax")) if _automatic_tax.is_a?(OpenApi::Validatable)
      end
      if _billing_address_collection = @billing_address_collection
        invalid_properties.push(ERROR_MESSAGE_FOR_BILLING_ADDRESS_COLLECTION) unless OpenApi::EnumValidator.valid?(_billing_address_collection, VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION)
      end
      if _consent_collection = @consent_collection
        invalid_properties.concat(_consent_collection.list_invalid_properties_for("consent_collection")) if _consent_collection.is_a?(OpenApi::Validatable)
      end

      if _customer_creation = @customer_creation
        invalid_properties.push(ERROR_MESSAGE_FOR_CUSTOMER_CREATION) unless OpenApi::EnumValidator.valid?(_customer_creation, VALID_VALUES_FOR_CUSTOMER_CREATION)
      end

      if _payment_intent_data = @payment_intent_data
        invalid_properties.concat(_payment_intent_data.list_invalid_properties_for("payment_intent_data")) if _payment_intent_data.is_a?(OpenApi::Validatable)
      end
      if _payment_method_collection = @payment_method_collection
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_METHOD_COLLECTION) unless OpenApi::EnumValidator.valid?(_payment_method_collection, VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION)
      end
      if _payment_method_types = @payment_method_types
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_METHOD_TYPES) unless OpenApi::EnumValidator.valid?(_payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      end
      if _phone_number_collection = @phone_number_collection
        invalid_properties.concat(_phone_number_collection.list_invalid_properties_for("phone_number_collection")) if _phone_number_collection.is_a?(OpenApi::Validatable)
      end
      if _shipping_address_collection = @shipping_address_collection
        invalid_properties.concat(_shipping_address_collection.list_invalid_properties_for("shipping_address_collection")) if _shipping_address_collection.is_a?(OpenApi::Validatable)
      end
      if _shipping_options = @shipping_options
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "shipping_options", container: _shipping_options)) if _shipping_options.is_a?(Array)
      end
      if _submit_type = @submit_type
        invalid_properties.push(ERROR_MESSAGE_FOR_SUBMIT_TYPE) unless OpenApi::EnumValidator.valid?(_submit_type, VALID_VALUES_FOR_SUBMIT_TYPE)
      end
      if _subscription_data = @subscription_data
        invalid_properties.concat(_subscription_data.list_invalid_properties_for("subscription_data")) if _subscription_data.is_a?(OpenApi::Validatable)
      end
      if _tax_id_collection = @tax_id_collection
        invalid_properties.concat(_tax_id_collection.list_invalid_properties_for("tax_id_collection")) if _tax_id_collection.is_a?(OpenApi::Validatable)
      end
      if _transfer_data = @transfer_data
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @line_items.nil?
      if _line_items = @line_items
        return false if _line_items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _line_items)
      end

      if _after_completion = @after_completion
        return false if _after_completion.is_a?(OpenApi::Validatable) && !_after_completion.valid?
      end

      if _automatic_tax = @automatic_tax
        return false if _automatic_tax.is_a?(OpenApi::Validatable) && !_automatic_tax.valid?
      end

      if _billing_address_collection = @billing_address_collection
        return false unless OpenApi::EnumValidator.valid?(_billing_address_collection, VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION)
      end

      if _consent_collection = @consent_collection
        return false if _consent_collection.is_a?(OpenApi::Validatable) && !_consent_collection.valid?
      end

      if _customer_creation = @customer_creation
        return false unless OpenApi::EnumValidator.valid?(_customer_creation, VALID_VALUES_FOR_CUSTOMER_CREATION)
      end

      if _payment_intent_data = @payment_intent_data
        return false if _payment_intent_data.is_a?(OpenApi::Validatable) && !_payment_intent_data.valid?
      end

      if _payment_method_collection = @payment_method_collection
        return false unless OpenApi::EnumValidator.valid?(_payment_method_collection, VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION)
      end

      if _payment_method_types = @payment_method_types
        return false unless OpenApi::EnumValidator.valid?(_payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      end

      if _phone_number_collection = @phone_number_collection
        return false if _phone_number_collection.is_a?(OpenApi::Validatable) && !_phone_number_collection.valid?
      end

      if _shipping_address_collection = @shipping_address_collection
        return false if _shipping_address_collection.is_a?(OpenApi::Validatable) && !_shipping_address_collection.valid?
      end

      if _shipping_options = @shipping_options
        return false if _shipping_options.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _shipping_options)
      end

      if _submit_type = @submit_type
        return false unless OpenApi::EnumValidator.valid?(_submit_type, VALID_VALUES_FOR_SUBMIT_TYPE)
      end

      if _subscription_data = @subscription_data
        return false if _subscription_data.is_a?(OpenApi::Validatable) && !_subscription_data.valid?
      end

      if _tax_id_collection = @tax_id_collection
        return false if _tax_id_collection.is_a?(OpenApi::Validatable) && !_tax_id_collection.valid?
      end

      if _transfer_data = @transfer_data
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line_items Object to be assigned
    def line_items=(line_items : Array(Stripe::LineItemsCreateParams)?)
      if line_items.nil?
        raise ArgumentError.new("\"line_items\" is required and cannot be null")
      end
      _line_items = line_items.not_nil!
      OpenApi::ContainerValidator.validate(container: _line_items) if _line_items.is_a?(Array)
      @line_items = _line_items
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] after_completion Object to be assigned
    def after_completion=(after_completion : Stripe::AfterCompletionParams?)
      if after_completion.nil?
        return @after_completion = nil
      end
      _after_completion = after_completion.not_nil!
      _after_completion.validate if _after_completion.is_a?(OpenApi::Validatable)
      @after_completion = _after_completion
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allow_promotion_codes Object to be assigned
    def allow_promotion_codes=(allow_promotion_codes : Bool?)
      if allow_promotion_codes.nil?
        return @allow_promotion_codes = nil
      end
      _allow_promotion_codes = allow_promotion_codes.not_nil!
      @allow_promotion_codes = _allow_promotion_codes
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
    # @param [Object] automatic_tax Object to be assigned
    def automatic_tax=(automatic_tax : Stripe::AutomaticTaxParams1?)
      if automatic_tax.nil?
        return @automatic_tax = nil
      end
      _automatic_tax = automatic_tax.not_nil!
      _automatic_tax.validate if _automatic_tax.is_a?(OpenApi::Validatable)
      @automatic_tax = _automatic_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_address_collection Object to be assigned
    def billing_address_collection=(billing_address_collection : String?)
      if billing_address_collection.nil?
        return @billing_address_collection = nil
      end
      _billing_address_collection = billing_address_collection.not_nil!
      OpenApi::EnumValidator.validate("billing_address_collection", _billing_address_collection, VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION)
      @billing_address_collection = _billing_address_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] consent_collection Object to be assigned
    def consent_collection=(consent_collection : Stripe::ConsentCollectionParams1?)
      if consent_collection.nil?
        return @consent_collection = nil
      end
      _consent_collection = consent_collection.not_nil!
      _consent_collection.validate if _consent_collection.is_a?(OpenApi::Validatable)
      @consent_collection = _consent_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        return @currency = nil
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_creation Object to be assigned
    def customer_creation=(customer_creation : String?)
      if customer_creation.nil?
        return @customer_creation = nil
      end
      _customer_creation = customer_creation.not_nil!
      OpenApi::EnumValidator.validate("customer_creation", _customer_creation, VALID_VALUES_FOR_CUSTOMER_CREATION)
      @customer_creation = _customer_creation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(on_behalf_of : String?)
      if on_behalf_of.nil?
        return @on_behalf_of = nil
      end
      _on_behalf_of = on_behalf_of.not_nil!
      @on_behalf_of = _on_behalf_of
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_intent_data Object to be assigned
    def payment_intent_data=(payment_intent_data : Stripe::PaymentIntentDataParams1?)
      if payment_intent_data.nil?
        return @payment_intent_data = nil
      end
      _payment_intent_data = payment_intent_data.not_nil!
      _payment_intent_data.validate if _payment_intent_data.is_a?(OpenApi::Validatable)
      @payment_intent_data = _payment_intent_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_collection Object to be assigned
    def payment_method_collection=(payment_method_collection : String?)
      if payment_method_collection.nil?
        return @payment_method_collection = nil
      end
      _payment_method_collection = payment_method_collection.not_nil!
      OpenApi::EnumValidator.validate("payment_method_collection", _payment_method_collection, VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION)
      @payment_method_collection = _payment_method_collection
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
    # @param [Object] phone_number_collection Object to be assigned
    def phone_number_collection=(phone_number_collection : Stripe::PhoneNumberCollectionParams1?)
      if phone_number_collection.nil?
        return @phone_number_collection = nil
      end
      _phone_number_collection = phone_number_collection.not_nil!
      _phone_number_collection.validate if _phone_number_collection.is_a?(OpenApi::Validatable)
      @phone_number_collection = _phone_number_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_address_collection Object to be assigned
    def shipping_address_collection=(shipping_address_collection : Stripe::ShippingAddressCollectionParams1?)
      if shipping_address_collection.nil?
        return @shipping_address_collection = nil
      end
      _shipping_address_collection = shipping_address_collection.not_nil!
      _shipping_address_collection.validate if _shipping_address_collection.is_a?(OpenApi::Validatable)
      @shipping_address_collection = _shipping_address_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_options Object to be assigned
    def shipping_options=(shipping_options : Array(Stripe::ShippingOptionParams1)?)
      if shipping_options.nil?
        return @shipping_options = nil
      end
      _shipping_options = shipping_options.not_nil!
      OpenApi::ContainerValidator.validate(container: _shipping_options) if _shipping_options.is_a?(Array)
      @shipping_options = _shipping_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] submit_type Object to be assigned
    def submit_type=(submit_type : String?)
      if submit_type.nil?
        return @submit_type = nil
      end
      _submit_type = submit_type.not_nil!
      OpenApi::EnumValidator.validate("submit_type", _submit_type, VALID_VALUES_FOR_SUBMIT_TYPE)
      @submit_type = _submit_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_data Object to be assigned
    def subscription_data=(subscription_data : Stripe::SubscriptionDataParams1?)
      if subscription_data.nil?
        return @subscription_data = nil
      end
      _subscription_data = subscription_data.not_nil!
      _subscription_data.validate if _subscription_data.is_a?(OpenApi::Validatable)
      @subscription_data = _subscription_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id_collection Object to be assigned
    def tax_id_collection=(tax_id_collection : Stripe::TaxIdCollectionParams1?)
      if tax_id_collection.nil?
        return @tax_id_collection = nil
      end
      _tax_id_collection = tax_id_collection.not_nil!
      _tax_id_collection.validate if _tax_id_collection.is_a?(OpenApi::Validatable)
      @tax_id_collection = _tax_id_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::TransferDataParams1?)
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
    def_equals_and_hash(@line_items, @after_completion, @allow_promotion_codes, @application_fee_amount, @application_fee_percent, @automatic_tax, @billing_address_collection, @consent_collection, @currency, @customer_creation, @expand, @metadata, @on_behalf_of, @payment_intent_data, @payment_method_collection, @payment_method_types, @phone_number_collection, @shipping_address_collection, @shipping_options, @submit_type, @subscription_data, @tax_id_collection, @transfer_data)
  end
end
