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
  class PostPaymentLinksPaymentLinkRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
    @[JSON::Field(key: "active", type: Bool?, presence: true, ignore_serialize: active.nil? && !active_present?)]
    property active : Bool?

    @[JSON::Field(ignore: true)]
    property? active_present : Bool = false

    @[JSON::Field(key: "after_completion", type: AfterCompletionParams?, presence: true, ignore_serialize: after_completion.nil? && !after_completion_present?)]
    property after_completion : AfterCompletionParams?

    @[JSON::Field(ignore: true)]
    property? after_completion_present : Bool = false

    # Enables user redeemable promotion codes.
    @[JSON::Field(key: "allow_promotion_codes", type: Bool?, presence: true, ignore_serialize: allow_promotion_codes.nil? && !allow_promotion_codes_present?)]
    property allow_promotion_codes : Bool?

    @[JSON::Field(ignore: true)]
    property? allow_promotion_codes_present : Bool = false

    @[JSON::Field(key: "automatic_tax", type: AutomaticTaxParams1?, presence: true, ignore_serialize: automatic_tax.nil? && !automatic_tax_present?)]
    property automatic_tax : AutomaticTaxParams1?

    @[JSON::Field(ignore: true)]
    property? automatic_tax_present : Bool = false

    # Configuration for collecting the customer's billing address.
    @[JSON::Field(key: "billing_address_collection", type: String?, presence: true, ignore_serialize: billing_address_collection.nil? && !billing_address_collection_present?)]
    getter billing_address_collection : String?

    @[JSON::Field(ignore: true)]
    property? billing_address_collection_present : Bool = false

    ENUM_VALIDATOR_FOR_BILLING_ADDRESS_COLLECTION = EnumValidator.new("billing_address_collection", "String", ["auto", "required"])

    # Configures whether [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link create a [Customer](https://stripe.com/docs/api/customers).
    @[JSON::Field(key: "customer_creation", type: String?, presence: true, ignore_serialize: customer_creation.nil? && !customer_creation_present?)]
    getter customer_creation : String?

    @[JSON::Field(ignore: true)]
    property? customer_creation_present : Bool = false

    ENUM_VALIDATOR_FOR_CUSTOMER_CREATION = EnumValidator.new("customer_creation", "String", ["always", "if_required"])

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
    @[JSON::Field(key: "line_items", type: Array(LineItemsUpdateParams)?, presence: true, ignore_serialize: line_items.nil? && !line_items_present?)]
    property line_items : Array(LineItemsUpdateParams)?

    @[JSON::Field(ignore: true)]
    property? line_items_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "payment_method_types", type: PostPaymentLinksPaymentLinkRequestPaymentMethodTypes?, presence: true, ignore_serialize: payment_method_types.nil? && !payment_method_types_present?)]
    property payment_method_types : PostPaymentLinksPaymentLinkRequestPaymentMethodTypes?

    @[JSON::Field(ignore: true)]
    property? payment_method_types_present : Bool = false

    @[JSON::Field(key: "shipping_address_collection", type: PostPaymentLinksPaymentLinkRequestShippingAddressCollection?, presence: true, ignore_serialize: shipping_address_collection.nil? && !shipping_address_collection_present?)]
    property shipping_address_collection : PostPaymentLinksPaymentLinkRequestShippingAddressCollection?

    @[JSON::Field(ignore: true)]
    property? shipping_address_collection_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @active : Bool? = nil, 
      @after_completion : AfterCompletionParams? = nil, 
      @allow_promotion_codes : Bool? = nil, 
      @automatic_tax : AutomaticTaxParams1? = nil, 
      @billing_address_collection : String? = nil, 
      @customer_creation : String? = nil, 
      @expand : Array(String)? = nil, 
      @line_items : Array(LineItemsUpdateParams)? = nil, 
      @metadata : Hash(String, String)? = nil, 
      @payment_method_types : PostPaymentLinksPaymentLinkRequestPaymentMethodTypes? = nil, 
      @shipping_address_collection : PostPaymentLinksPaymentLinkRequestShippingAddressCollection? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_BILLING_ADDRESS_COLLECTION.error_message) unless ENUM_VALIDATOR_FOR_BILLING_ADDRESS_COLLECTION.valid?(@billing_address_collection)

      invalid_properties.push(ENUM_VALIDATOR_FOR_CUSTOMER_CREATION.error_message) unless ENUM_VALIDATOR_FOR_CUSTOMER_CREATION.valid?(@customer_creation)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_BILLING_ADDRESS_COLLECTION.valid?(@billing_address_collection)
      return false unless ENUM_VALIDATOR_FOR_CUSTOMER_CREATION.valid?(@customer_creation)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_address_collection Object to be assigned
    def billing_address_collection=(billing_address_collection)
      ENUM_VALIDATOR_FOR_BILLING_ADDRESS_COLLECTION.valid!(billing_address_collection)
      @billing_address_collection = billing_address_collection
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_creation Object to be assigned
    def customer_creation=(customer_creation)
      ENUM_VALIDATOR_FOR_CUSTOMER_CREATION.valid!(customer_creation)
      @customer_creation = customer_creation
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
    def_equals_and_hash(@active, @after_completion, @allow_promotion_codes, @automatic_tax, @billing_address_collection, @customer_creation, @expand, @line_items, @metadata, @payment_method_types, @shipping_address_collection)
  end
end
