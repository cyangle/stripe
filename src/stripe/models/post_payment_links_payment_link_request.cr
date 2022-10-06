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
  class PostPaymentLinksPaymentLinkRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    @[JSON::Field(key: "after_completion", type: Stripe::AfterCompletionParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter after_completion : Stripe::AfterCompletionParams? = nil

    # Enables user redeemable promotion codes.
    @[JSON::Field(key: "allow_promotion_codes", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter allow_promotion_codes : Bool? = nil

    @[JSON::Field(key: "automatic_tax", type: Stripe::AutomaticTaxParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::AutomaticTaxParams1? = nil

    # Configuration for collecting the customer's billing address.
    @[JSON::Field(key: "billing_address_collection", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_address_collection : String? = nil
    ERROR_MESSAGE_FOR_BILLING_ADDRESS_COLLECTION = "invalid value for \"billing_address_collection\", must be one of [auto, required]."
    VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION  = String.static_array("auto", "required")

    # Configures whether [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link create a [Customer](https://stripe.com/docs/api/customers).
    @[JSON::Field(key: "customer_creation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_creation : String? = nil
    ERROR_MESSAGE_FOR_CUSTOMER_CREATION = "invalid value for \"customer_creation\", must be one of [always, if_required]."
    VALID_VALUES_FOR_CUSTOMER_CREATION  = String.static_array("always", "if_required")

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
    @[JSON::Field(key: "line_items", type: Array(Stripe::LineItemsUpdateParams)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter line_items : Array(Stripe::LineItemsUpdateParams)? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.  Can only be set in `subscription` mode.  If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://stripe.com/docs/payments/checkout/free-trials).
    @[JSON::Field(key: "payment_method_collection", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_collection : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_METHOD_COLLECTION = "invalid value for \"payment_method_collection\", must be one of [always, if_required]."
    VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION  = String.static_array("always", "if_required")

    @[JSON::Field(key: "payment_method_types", type: Stripe::PostPaymentLinksPaymentLinkRequestPaymentMethodTypes?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_types : Stripe::PostPaymentLinksPaymentLinkRequestPaymentMethodTypes? = nil

    @[JSON::Field(key: "shipping_address_collection", type: Stripe::PostPaymentLinksPaymentLinkRequestShippingAddressCollection?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_address_collection : Stripe::PostPaymentLinksPaymentLinkRequestShippingAddressCollection? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @active : Bool? = nil,
      @after_completion : Stripe::AfterCompletionParams? = nil,
      @allow_promotion_codes : Bool? = nil,
      @automatic_tax : Stripe::AutomaticTaxParams1? = nil,
      @billing_address_collection : String? = nil,
      @customer_creation : String? = nil,
      @expand : Array(String)? = nil,
      @line_items : Array(Stripe::LineItemsUpdateParams)? = nil,
      @metadata : Hash(String, String)? = nil,
      @payment_method_collection : String? = nil,
      @payment_method_types : Stripe::PostPaymentLinksPaymentLinkRequestPaymentMethodTypes? = nil,
      @shipping_address_collection : Stripe::PostPaymentLinksPaymentLinkRequestShippingAddressCollection? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_after_completion = @after_completion).nil?
        invalid_properties.concat(_after_completion.list_invalid_properties_for("after_completion")) if _after_completion.is_a?(OpenApi::Validatable)
      end

      unless (_automatic_tax = @automatic_tax).nil?
        invalid_properties.concat(_automatic_tax.list_invalid_properties_for("automatic_tax")) if _automatic_tax.is_a?(OpenApi::Validatable)
      end
      unless (_billing_address_collection = @billing_address_collection).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_BILLING_ADDRESS_COLLECTION) unless OpenApi::EnumValidator.valid?(_billing_address_collection, VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION)
      end
      unless (_customer_creation = @customer_creation).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CUSTOMER_CREATION) unless OpenApi::EnumValidator.valid?(_customer_creation, VALID_VALUES_FOR_CUSTOMER_CREATION)
      end

      unless (_line_items = @line_items).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "line_items", container: _line_items)) if _line_items.is_a?(Array)
      end

      unless (_payment_method_collection = @payment_method_collection).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_METHOD_COLLECTION) unless OpenApi::EnumValidator.valid?(_payment_method_collection, VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION)
      end
      unless (_payment_method_types = @payment_method_types).nil?
        invalid_properties.concat(_payment_method_types.list_invalid_properties_for("payment_method_types")) if _payment_method_types.is_a?(OpenApi::Validatable)
      end
      unless (_shipping_address_collection = @shipping_address_collection).nil?
        invalid_properties.concat(_shipping_address_collection.list_invalid_properties_for("shipping_address_collection")) if _shipping_address_collection.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_after_completion = @after_completion).nil?
        return false if _after_completion.is_a?(OpenApi::Validatable) && !_after_completion.valid?
      end

      unless (_automatic_tax = @automatic_tax).nil?
        return false if _automatic_tax.is_a?(OpenApi::Validatable) && !_automatic_tax.valid?
      end

      unless (_billing_address_collection = @billing_address_collection).nil?
        return false unless OpenApi::EnumValidator.valid?(_billing_address_collection, VALID_VALUES_FOR_BILLING_ADDRESS_COLLECTION)
      end

      unless (_customer_creation = @customer_creation).nil?
        return false unless OpenApi::EnumValidator.valid?(_customer_creation, VALID_VALUES_FOR_CUSTOMER_CREATION)
      end

      unless (_line_items = @line_items).nil?
        return false if _line_items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _line_items)
      end

      unless (_payment_method_collection = @payment_method_collection).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_method_collection, VALID_VALUES_FOR_PAYMENT_METHOD_COLLECTION)
      end

      unless (_payment_method_types = @payment_method_types).nil?
        return false if _payment_method_types.is_a?(OpenApi::Validatable) && !_payment_method_types.valid?
      end

      unless (_shipping_address_collection = @shipping_address_collection).nil?
        return false if _shipping_address_collection.is_a?(OpenApi::Validatable) && !_shipping_address_collection.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        return @active = nil
      end
      _active = active.not_nil!
      @active = _active
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
    # @param [Object] line_items Object to be assigned
    def line_items=(line_items : Array(Stripe::LineItemsUpdateParams)?)
      if line_items.nil?
        return @line_items = nil
      end
      _line_items = line_items.not_nil!
      OpenApi::ContainerValidator.validate(container: _line_items) if _line_items.is_a?(Array)
      @line_items = _line_items
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
    def payment_method_types=(payment_method_types : Stripe::PostPaymentLinksPaymentLinkRequestPaymentMethodTypes?)
      if payment_method_types.nil?
        return @payment_method_types = nil
      end
      _payment_method_types = payment_method_types.not_nil!
      _payment_method_types.validate if _payment_method_types.is_a?(OpenApi::Validatable)
      @payment_method_types = _payment_method_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_address_collection Object to be assigned
    def shipping_address_collection=(shipping_address_collection : Stripe::PostPaymentLinksPaymentLinkRequestShippingAddressCollection?)
      if shipping_address_collection.nil?
        return @shipping_address_collection = nil
      end
      _shipping_address_collection = shipping_address_collection.not_nil!
      _shipping_address_collection.validate if _shipping_address_collection.is_a?(OpenApi::Validatable)
      @shipping_address_collection = _shipping_address_collection
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @after_completion, @allow_promotion_codes, @automatic_tax, @billing_address_collection, @customer_creation, @expand, @line_items, @metadata, @payment_method_collection, @payment_method_types, @shipping_address_collection)
  end
end
