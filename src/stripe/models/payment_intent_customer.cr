#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./address"
require "./apms_sources_source_list"
require "./cash_balance"
require "./customer"
require "./customer_default_source"
require "./customer_tax"
require "./customer_test_clock"
require "./deleted_customer"
require "./discount"
require "./invoice_setting_customer_setting"
require "./shipping"
require "./subscription_list"
require "./tax_ids_list"

module Stripe
  # ID of the Customer this PaymentIntent belongs to, if one exists.  Payment methods attached to other Customers cannot be used with this PaymentIntent.  If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
  class PaymentIntentCustomer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    @[JSON::Field(key: "default_source", type: Stripe::CustomerDefaultSource?, default: nil, required: true, nullable: true, emit_null: true)]
    property default_source : Stripe::CustomerDefaultSource? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # The customer's email address.
    @[JSON::Field(key: "email", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property email : String? = nil
    MAX_LENGTH_FOR_EMAIL = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [customer]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("customer")

    @[JSON::Field(key: "shipping", type: Stripe::Shipping?, default: nil, required: true, nullable: false, emit_null: false)]
    property shipping : Stripe::Shipping? = nil

    # Always true for a deleted object
    @[JSON::Field(key: "deleted", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property deleted : Bool? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "address", type: Stripe::Address?, default: nil, required: false, nullable: false, emit_null: false)]
    property address : Stripe::Address? = nil

    # The current balance, if any, that's stored on the customer. If negative, the customer has credit to apply to their next invoice. If positive, the customer has an amount owed that's added to their next invoice. The balance only considers amounts that Stripe hasn't successfully applied to any invoice. It doesn't reflect unpaid invoices. This balance is only taken into account after invoices finalize.
    @[JSON::Field(key: "balance", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    property balance : Int64? = nil

    @[JSON::Field(key: "cash_balance", type: Stripe::CashBalance?, default: nil, required: false, nullable: false, emit_null: false)]
    property cash_balance : Stripe::CashBalance? = nil

    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) the customer can be charged in for recurring billing purposes.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    property currency : String? = nil
    MAX_LENGTH_FOR_CURRENCY = 5000

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    # Tracks the most recent state change on any invoice belonging to the customer. Paying an invoice or marking it uncollectible via the API will set this field to false. An automatic payment failure or passing the `invoice.due_date` will set this field to `true`.  If an invoice becomes uncollectible by [dunning](https://stripe.com/docs/billing/automatic-collection), `delinquent` doesn't reset to `false`.  If you care whether the customer has paid their most recent subscription invoice, use `subscription.status` instead. Paying or marking uncollectible any customer invoice regardless of whether it is the latest invoice for a subscription will always set this field to `false`.
    @[JSON::Field(key: "delinquent", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: delinquent.nil? && !delinquent_present?)]
    property delinquent : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? delinquent_present : Bool = false

    @[JSON::Field(key: "discount", type: Stripe::Discount?, default: nil, required: false, nullable: false, emit_null: false)]
    property discount : Stripe::Discount? = nil

    @[JSON::Field(key: "invoice_credit_balance", type: Hash(String, Int32)?, default: nil, required: false, nullable: false, emit_null: false)]
    property invoice_credit_balance : Hash(String, Int32)? = nil

    # The prefix for the customer used to generate unique invoice numbers.
    @[JSON::Field(key: "invoice_prefix", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: invoice_prefix.nil? && !invoice_prefix_present?)]
    property invoice_prefix : String? = nil
    MAX_LENGTH_FOR_INVOICE_PREFIX = 5000

    @[JSON::Field(ignore: true)]
    property? invoice_prefix_present : Bool = false

    @[JSON::Field(key: "invoice_settings", type: Stripe::InvoiceSettingCustomerSetting?, default: nil, required: false, nullable: false, emit_null: false)]
    property invoice_settings : Stripe::InvoiceSettingCustomerSetting? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    property metadata : Hash(String, String)? = nil

    # The customer's full name or business name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    property name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # The suffix of the customer's next invoice number (for example, 0001). When the account uses account level sequencing, this parameter is ignored in API requests and the field omitted in API responses.
    @[JSON::Field(key: "next_invoice_sequence", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    property next_invoice_sequence : Int64? = nil

    # The customer's phone number.
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    property phone : String? = nil
    MAX_LENGTH_FOR_PHONE = 5000

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # The customer's preferred locales (languages), ordered by preference.
    @[JSON::Field(key: "preferred_locales", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preferred_locales.nil? && !preferred_locales_present?)]
    property preferred_locales : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? preferred_locales_present : Bool = false

    @[JSON::Field(key: "sources", type: Stripe::ApmsSourcesSourceList?, default: nil, required: false, nullable: false, emit_null: false)]
    property sources : Stripe::ApmsSourcesSourceList? = nil

    @[JSON::Field(key: "subscriptions", type: Stripe::SubscriptionList?, default: nil, required: false, nullable: false, emit_null: false)]
    property subscriptions : Stripe::SubscriptionList? = nil

    @[JSON::Field(key: "tax", type: Stripe::CustomerTax?, default: nil, required: false, nullable: false, emit_null: false)]
    property tax : Stripe::CustomerTax? = nil

    # Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to `reverse`, invoice and receipt PDFs include the following text: **\"Reverse charge\"**.
    @[JSON::Field(key: "tax_exempt", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tax_exempt.nil? && !tax_exempt_present?)]
    property tax_exempt : String? = nil
    ERROR_MESSAGE_FOR_TAX_EXEMPT = "invalid value for \"tax_exempt\", must be one of [exempt, none, reverse]."
    VALID_VALUES_FOR_TAX_EXEMPT  = String.static_array("exempt", "none", "reverse")

    @[JSON::Field(ignore: true)]
    property? tax_exempt_present : Bool = false

    @[JSON::Field(key: "tax_ids", type: Stripe::TaxIDsList?, default: nil, required: false, nullable: false, emit_null: false)]
    property tax_ids : Stripe::TaxIDsList? = nil

    @[JSON::Field(key: "test_clock", type: Stripe::CustomerTestClock?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: test_clock.nil? && !test_clock_present?)]
    property test_clock : Stripe::CustomerTestClock? = nil

    @[JSON::Field(ignore: true)]
    property? test_clock_present : Bool = false

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::Customer,
        Stripe::DeletedCustomer,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @default_source : Stripe::CustomerDefaultSource? = nil,
      @description : String? = nil,
      @email : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @shipping : Stripe::Shipping? = nil,
      @deleted : Bool? = nil,
      # Optional properties
      @address : Stripe::Address? = nil,
      @balance : Int64? = nil,
      @cash_balance : Stripe::CashBalance? = nil,
      @currency : String? = nil,
      @delinquent : Bool? = nil,
      @discount : Stripe::Discount? = nil,
      @invoice_credit_balance : Hash(String, Int32)? = nil,
      @invoice_prefix : String? = nil,
      @invoice_settings : Stripe::InvoiceSettingCustomerSetting? = nil,
      @metadata : Hash(String, String)? = nil,
      @name : String? = nil,
      @next_invoice_sequence : Int64? = nil,
      @phone : String? = nil,
      @preferred_locales : Array(String)? = nil,
      @sources : Stripe::ApmsSourcesSourceList? = nil,
      @subscriptions : Stripe::SubscriptionList? = nil,
      @tax : Stripe::CustomerTax? = nil,
      @tax_exempt : String? = nil,
      @tax_ids : Stripe::TaxIDsList? = nil,
      @test_clock : Stripe::CustomerTestClock? = nil
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
    def_equals_and_hash(@created, @default_source, @description, @email, @id, @livemode, @object, @shipping, @deleted, @address, @balance, @cash_balance, @currency, @currency_present, @delinquent, @delinquent_present, @discount, @invoice_credit_balance, @invoice_prefix, @invoice_prefix_present, @invoice_settings, @metadata, @name, @name_present, @next_invoice_sequence, @phone, @phone_present, @preferred_locales, @preferred_locales_present, @sources, @subscriptions, @tax, @tax_exempt, @tax_exempt_present, @tax_ids, @test_clock, @test_clock_present)
  end
end
