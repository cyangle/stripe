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
require "./api_errors"
require "./automatic_tax"
require "./connect_account_reference"
require "./discount"
require "./discounts_resource_discount_amount"
require "./invoice"
require "./invoice_account_tax_ids_inner"
require "./invoice_application"
require "./invoice_charge"
require "./invoice_customer"
require "./invoice_default_payment_method"
require "./invoice_default_source"
require "./invoice_discounts_inner"
require "./invoice_latest_revision"
require "./invoice_lines_list"
require "./invoice_on_behalf_of"
require "./invoice_payment_intent"
require "./invoice_quote"
require "./invoice_setting_custom_field"
require "./invoice_subscription"
require "./invoice_tax_amount"
require "./invoice_test_clock"
require "./invoice_threshold_reason"
require "./invoice_transfer_data"
require "./invoices_payment_settings"
require "./invoices_resource_from_invoice"
require "./invoices_resource_invoice_rendering"
require "./invoices_resource_invoice_tax_id"
require "./invoices_resource_shipping_cost"
require "./invoices_resource_status_transitions"
require "./shipping"
require "./subscription_details_data"
require "./tax_rate"

module Stripe
  # The invoice that was cloned.
  class InvoicesResourceFromInvoiceInvoice
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The country of the business associated with this invoice, most often the business creating the invoice.
    @[JSON::Field(key: "account_country", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property account_country : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_COUNTRY = 5000

    # The public name of the business associated with this invoice, most often the business creating the invoice.
    @[JSON::Field(key: "account_name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property account_name : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_NAME = 5000

    # The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
    @[JSON::Field(key: "account_tax_ids", type: Array(Stripe::InvoiceAccountTaxIdsInner)?, default: nil, required: true, nullable: true, emit_null: true)]
    property account_tax_ids : Array(Stripe::InvoiceAccountTaxIdsInner)? = nil

    # Final amount due at this time for this invoice. If the invoice's total is smaller than the minimum charge amount, for example, or if there is account credit that can be applied to the invoice, the `amount_due` may be 0. If there is a positive `starting_balance` for the invoice (the customer owes money), the `amount_due` will also take that into account. The charge that gets generated for the invoice will be for the amount specified in `amount_due`.
    @[JSON::Field(key: "amount_due", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount_due : Int64? = nil

    # The amount, in cents (or local equivalent), that was paid.
    @[JSON::Field(key: "amount_paid", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount_paid : Int64? = nil

    # The difference between amount_due and amount_paid, in cents (or local equivalent).
    @[JSON::Field(key: "amount_remaining", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount_remaining : Int64? = nil

    # This is the sum of all the shipping amounts.
    @[JSON::Field(key: "amount_shipping", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount_shipping : Int64? = nil

    @[JSON::Field(key: "application", type: Stripe::InvoiceApplication?, default: nil, required: true, nullable: true, emit_null: true)]
    property application : Stripe::InvoiceApplication? = nil

    # The fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account when the invoice is paid.
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property application_fee_amount : Int64? = nil

    # Number of payment attempts made for this invoice, from the perspective of the payment retry schedule. Any payment attempt counts as the first attempt, and subsequently only automatic retries increment the attempt count. In other words, manual payment attempts after the first attempt do not affect the retry schedule. If a failure is returned with a non-retryable return code, the invoice can no longer be retried unless a new payment method is obtained. Retries will continue to be scheduled, and attempt_count will continue to increment, but retries will only be executed if a new payment method is obtained.
    @[JSON::Field(key: "attempt_count", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property attempt_count : Int64? = nil

    # Whether an attempt has been made to pay the invoice. An invoice is not attempted until 1 hour after the `invoice.created` webhook, for example, so you might not want to display that invoice as unpaid to your users.
    @[JSON::Field(key: "attempted", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property attempted : Bool? = nil

    @[JSON::Field(key: "automatic_tax", type: Stripe::AutomaticTax?, default: nil, required: true, nullable: false, emit_null: false)]
    property automatic_tax : Stripe::AutomaticTax? = nil

    # Indicates the reason why the invoice was created.  * `manual`: Unrelated to a subscription, for example, created via the invoice editor. * `subscription`: No longer in use. Applies to subscriptions from before May 2018 where no distinction was made between updates, cycles, and thresholds. * `subscription_create`: A new subscription was created. * `subscription_cycle`: A subscription advanced into a new period. * `subscription_threshold`: A subscription reached a billing threshold. * `subscription_update`: A subscription was updated. * `upcoming`: Reserved for simulated invoices, per the upcoming invoice endpoint.
    @[JSON::Field(key: "billing_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property billing_reason : String? = nil
    ERROR_MESSAGE_FOR_BILLING_REASON = "invalid value for \"billing_reason\", must be one of [automatic_pending_invoice_item_invoice, manual, quote_accept, subscription, subscription_create, subscription_cycle, subscription_threshold, subscription_update, upcoming]."
    VALID_VALUES_FOR_BILLING_REASON  = String.static_array("automatic_pending_invoice_item_invoice", "manual", "quote_accept", "subscription", "subscription_create", "subscription_cycle", "subscription_threshold", "subscription_update", "upcoming")

    @[JSON::Field(key: "charge", type: Stripe::InvoiceCharge?, default: nil, required: true, nullable: true, emit_null: true)]
    property charge : Stripe::InvoiceCharge? = nil

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions.
    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [charge_automatically, send_invoice]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = String.static_array("charge_automatically", "send_invoice")

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property currency : String? = nil

    # Custom fields displayed on the invoice.
    @[JSON::Field(key: "custom_fields", type: Array(Stripe::InvoiceSettingCustomField)?, default: nil, required: true, nullable: true, emit_null: true)]
    property custom_fields : Array(Stripe::InvoiceSettingCustomField)? = nil

    @[JSON::Field(key: "customer", type: Stripe::InvoiceCustomer?, default: nil, required: true, nullable: true, emit_null: true)]
    property customer : Stripe::InvoiceCustomer? = nil

    @[JSON::Field(key: "customer_address", type: Stripe::Address?, default: nil, required: true, nullable: false, emit_null: false)]
    property customer_address : Stripe::Address? = nil

    # The customer's email. Until the invoice is finalized, this field will equal `customer.email`. Once the invoice is finalized, this field will no longer be updated.
    @[JSON::Field(key: "customer_email", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property customer_email : String? = nil
    MAX_LENGTH_FOR_CUSTOMER_EMAIL = 5000

    # The customer's name. Until the invoice is finalized, this field will equal `customer.name`. Once the invoice is finalized, this field will no longer be updated.
    @[JSON::Field(key: "customer_name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property customer_name : String? = nil
    MAX_LENGTH_FOR_CUSTOMER_NAME = 5000

    # The customer's phone number. Until the invoice is finalized, this field will equal `customer.phone`. Once the invoice is finalized, this field will no longer be updated.
    @[JSON::Field(key: "customer_phone", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property customer_phone : String? = nil
    MAX_LENGTH_FOR_CUSTOMER_PHONE = 5000

    @[JSON::Field(key: "customer_shipping", type: Stripe::Shipping?, default: nil, required: true, nullable: false, emit_null: false)]
    property customer_shipping : Stripe::Shipping? = nil

    # The customer's tax exempt status. Until the invoice is finalized, this field will equal `customer.tax_exempt`. Once the invoice is finalized, this field will no longer be updated.
    @[JSON::Field(key: "customer_tax_exempt", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property customer_tax_exempt : String? = nil
    ERROR_MESSAGE_FOR_CUSTOMER_TAX_EXEMPT = "invalid value for \"customer_tax_exempt\", must be one of [exempt, none, reverse]."
    VALID_VALUES_FOR_CUSTOMER_TAX_EXEMPT  = String.static_array("exempt", "none", "reverse")

    @[JSON::Field(key: "default_payment_method", type: Stripe::InvoiceDefaultPaymentMethod?, default: nil, required: true, nullable: true, emit_null: true)]
    property default_payment_method : Stripe::InvoiceDefaultPaymentMethod? = nil

    @[JSON::Field(key: "default_source", type: Stripe::InvoiceDefaultSource?, default: nil, required: true, nullable: true, emit_null: true)]
    property default_source : Stripe::InvoiceDefaultSource? = nil

    # The tax rates applied to this invoice, if any.
    @[JSON::Field(key: "default_tax_rates", type: Array(Stripe::TaxRate)?, default: nil, required: true, nullable: false, emit_null: false)]
    property default_tax_rates : Array(Stripe::TaxRate)? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(key: "discount", type: Stripe::Discount?, default: nil, required: true, nullable: false, emit_null: false)]
    property discount : Stripe::Discount? = nil

    # The discounts applied to the invoice. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    @[JSON::Field(key: "discounts", type: Array(Stripe::InvoiceDiscountsInner)?, default: nil, required: true, nullable: false, emit_null: false)]
    property discounts : Array(Stripe::InvoiceDiscountsInner)? = nil

    # The date on which payment for this invoice is due. This value will be `null` for invoices where `collection_method=charge_automatically`.
    @[JSON::Field(key: "due_date", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property due_date : Int64? = nil

    # The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
    @[JSON::Field(key: "effective_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property effective_at : Int64? = nil

    # Ending customer balance after the invoice is finalized. Invoices are finalized approximately an hour after successful webhook delivery or when payment collection is attempted for the invoice. If the invoice has not been finalized yet, this will be null.
    @[JSON::Field(key: "ending_balance", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property ending_balance : Int64? = nil

    # Footer displayed on the invoice.
    @[JSON::Field(key: "footer", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property footer : String? = nil
    MAX_LENGTH_FOR_FOOTER = 5000

    @[JSON::Field(key: "from_invoice", type: Stripe::InvoicesResourceFromInvoice?, default: nil, required: true, nullable: false, emit_null: false)]
    property from_invoice : Stripe::InvoicesResourceFromInvoice? = nil

    @[JSON::Field(key: "issuer", type: Stripe::ConnectAccountReference?, default: nil, required: true, nullable: false, emit_null: false)]
    property issuer : Stripe::ConnectAccountReference? = nil

    @[JSON::Field(key: "last_finalization_error", type: Stripe::ApiErrors?, default: nil, required: true, nullable: false, emit_null: false)]
    property last_finalization_error : Stripe::ApiErrors? = nil

    @[JSON::Field(key: "latest_revision", type: Stripe::InvoiceLatestRevision?, default: nil, required: true, nullable: true, emit_null: true)]
    property latest_revision : Stripe::InvoiceLatestRevision? = nil

    @[JSON::Field(key: "lines", type: Stripe::InvoiceLinesList?, default: nil, required: true, nullable: false, emit_null: false)]
    property lines : Stripe::InvoiceLinesList? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    property metadata : Hash(String, String)? = nil

    # The time at which payment will next be attempted. This value will be `null` for invoices where `collection_method=send_invoice`.
    @[JSON::Field(key: "next_payment_attempt", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property next_payment_attempt : Int64? = nil

    # A unique, identifying string that appears on emails sent to the customer for this invoice. This starts with the customer's unique invoice_prefix if it is specified.
    @[JSON::Field(key: "number", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property number : String? = nil
    MAX_LENGTH_FOR_NUMBER = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [invoice]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("invoice")

    @[JSON::Field(key: "on_behalf_of", type: Stripe::InvoiceOnBehalfOf?, default: nil, required: true, nullable: true, emit_null: true)]
    property on_behalf_of : Stripe::InvoiceOnBehalfOf? = nil

    # Whether payment was successfully collected for this invoice. An invoice can be paid (most commonly) with a charge or with credit from the customer's account balance.
    @[JSON::Field(key: "paid", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property paid : Bool? = nil

    # Returns true if the invoice was manually marked paid, returns false if the invoice hasn't been paid yet or was paid on Stripe.
    @[JSON::Field(key: "paid_out_of_band", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property paid_out_of_band : Bool? = nil

    @[JSON::Field(key: "payment_intent", type: Stripe::InvoicePaymentIntent?, default: nil, required: true, nullable: true, emit_null: true)]
    property payment_intent : Stripe::InvoicePaymentIntent? = nil

    @[JSON::Field(key: "payment_settings", type: Stripe::InvoicesPaymentSettings?, default: nil, required: true, nullable: false, emit_null: false)]
    property payment_settings : Stripe::InvoicesPaymentSettings? = nil

    # End of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
    @[JSON::Field(key: "period_end", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property period_end : Int64? = nil

    # Start of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
    @[JSON::Field(key: "period_start", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property period_start : Int64? = nil

    # Total amount of all post-payment credit notes issued for this invoice.
    @[JSON::Field(key: "post_payment_credit_notes_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property post_payment_credit_notes_amount : Int64? = nil

    # Total amount of all pre-payment credit notes issued for this invoice.
    @[JSON::Field(key: "pre_payment_credit_notes_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property pre_payment_credit_notes_amount : Int64? = nil

    @[JSON::Field(key: "quote", type: Stripe::InvoiceQuote?, default: nil, required: true, nullable: true, emit_null: true)]
    property quote : Stripe::InvoiceQuote? = nil

    # This is the transaction number that appears on email receipts sent for this invoice.
    @[JSON::Field(key: "receipt_number", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property receipt_number : String? = nil
    MAX_LENGTH_FOR_RECEIPT_NUMBER = 5000

    @[JSON::Field(key: "rendering", type: Stripe::InvoicesResourceInvoiceRendering?, default: nil, required: true, nullable: false, emit_null: false)]
    property rendering : Stripe::InvoicesResourceInvoiceRendering? = nil

    @[JSON::Field(key: "shipping_cost", type: Stripe::InvoicesResourceShippingCost?, default: nil, required: true, nullable: false, emit_null: false)]
    property shipping_cost : Stripe::InvoicesResourceShippingCost? = nil

    @[JSON::Field(key: "shipping_details", type: Stripe::Shipping?, default: nil, required: true, nullable: false, emit_null: false)]
    property shipping_details : Stripe::Shipping? = nil

    # Starting customer balance before the invoice is finalized. If the invoice has not been finalized yet, this will be the current customer balance. For revision invoices, this also includes any customer balance that was applied to the original invoice.
    @[JSON::Field(key: "starting_balance", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property starting_balance : Int64? = nil

    # Extra information about an invoice for the customer's credit card statement.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    # The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://stripe.com/docs/billing/invoices/workflow#workflow-overview)
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [draft, open, paid, uncollectible, void]."
    VALID_VALUES_FOR_STATUS  = String.static_array("draft", "open", "paid", "uncollectible", "void")

    @[JSON::Field(key: "status_transitions", type: Stripe::InvoicesResourceStatusTransitions?, default: nil, required: true, nullable: false, emit_null: false)]
    property status_transitions : Stripe::InvoicesResourceStatusTransitions? = nil

    @[JSON::Field(key: "subscription", type: Stripe::InvoiceSubscription?, default: nil, required: true, nullable: true, emit_null: true)]
    property subscription : Stripe::InvoiceSubscription? = nil

    @[JSON::Field(key: "subscription_details", type: Stripe::SubscriptionDetailsData?, default: nil, required: true, nullable: false, emit_null: false)]
    property subscription_details : Stripe::SubscriptionDetailsData? = nil

    # Total of all subscriptions, invoice items, and prorations on the invoice before any invoice level discount or exclusive tax is applied. Item discounts are already incorporated
    @[JSON::Field(key: "subtotal", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property subtotal : Int64? = nil

    # The integer amount in cents (or local equivalent) representing the subtotal of the invoice before any invoice level discount or tax is applied. Item discounts are already incorporated
    @[JSON::Field(key: "subtotal_excluding_tax", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property subtotal_excluding_tax : Int64? = nil

    # The amount of tax on this invoice. This is the sum of all the tax amounts on this invoice.
    @[JSON::Field(key: "tax", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property tax : Int64? = nil

    @[JSON::Field(key: "test_clock", type: Stripe::InvoiceTestClock?, default: nil, required: true, nullable: true, emit_null: true)]
    property test_clock : Stripe::InvoiceTestClock? = nil

    # Total after discounts and taxes.
    @[JSON::Field(key: "total", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property total : Int64? = nil

    # The aggregate amounts calculated per discount across all line items.
    @[JSON::Field(key: "total_discount_amounts", type: Array(Stripe::DiscountsResourceDiscountAmount)?, default: nil, required: true, nullable: true, emit_null: true)]
    property total_discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)? = nil

    # The integer amount in cents (or local equivalent) representing the total amount of the invoice including all discounts but excluding all tax.
    @[JSON::Field(key: "total_excluding_tax", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property total_excluding_tax : Int64? = nil

    # The aggregate amounts calculated per tax rate for all line items.
    @[JSON::Field(key: "total_tax_amounts", type: Array(Stripe::InvoiceTaxAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    property total_tax_amounts : Array(Stripe::InvoiceTaxAmount)? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::InvoiceTransferData?, default: nil, required: true, nullable: false, emit_null: false)]
    property transfer_data : Stripe::InvoiceTransferData? = nil

    # Invoices are automatically paid or sent 1 hour after webhooks are delivered, or until all webhook delivery attempts have [been exhausted](https://stripe.com/docs/billing/webhooks#understand). This field tracks the time when webhooks for this invoice were successfully delivered. If the invoice had no webhooks to deliver, this will be set while the invoice is being created.
    @[JSON::Field(key: "webhooks_delivered_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property webhooks_delivered_at : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action.
    @[JSON::Field(key: "auto_advance", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    property auto_advance : Bool? = nil

    # The customer's tax IDs. Until the invoice is finalized, this field will contain the same tax IDs as `customer.tax_ids`. Once the invoice is finalized, this field will no longer be updated.
    @[JSON::Field(key: "customer_tax_ids", type: Array(Stripe::InvoicesResourceInvoiceTaxId)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: customer_tax_ids.nil? && !customer_tax_ids_present?)]
    property customer_tax_ids : Array(Stripe::InvoicesResourceInvoiceTaxId)? = nil

    @[JSON::Field(ignore: true)]
    property? customer_tax_ids_present : Bool = false

    # The URL for the hosted invoice page, which allows customers to view and pay an invoice. If the invoice has not been finalized yet, this will be null.
    @[JSON::Field(key: "hosted_invoice_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: hosted_invoice_url.nil? && !hosted_invoice_url_present?)]
    property hosted_invoice_url : String? = nil
    MAX_LENGTH_FOR_HOSTED_INVOICE_URL = 5000

    @[JSON::Field(ignore: true)]
    property? hosted_invoice_url_present : Bool = false

    # Unique identifier for the object. This property is always present unless the invoice is an upcoming invoice. See [Retrieve an upcoming invoice](https://stripe.com/docs/api/invoices/upcoming) for more details.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # The link to download the PDF for the invoice. If the invoice has not been finalized yet, this will be null.
    @[JSON::Field(key: "invoice_pdf", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: invoice_pdf.nil? && !invoice_pdf_present?)]
    property invoice_pdf : String? = nil
    MAX_LENGTH_FOR_INVOICE_PDF = 5000

    @[JSON::Field(ignore: true)]
    property? invoice_pdf_present : Bool = false

    # Only set for upcoming invoices that preview prorations. The time used to calculate prorations.
    @[JSON::Field(key: "subscription_proration_date", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    property subscription_proration_date : Int64? = nil

    @[JSON::Field(key: "threshold_reason", type: Stripe::InvoiceThresholdReason?, default: nil, required: false, nullable: false, emit_null: false)]
    property threshold_reason : Stripe::InvoiceThresholdReason? = nil

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::Invoice,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_country : String? = nil,
      @account_name : String? = nil,
      @account_tax_ids : Array(Stripe::InvoiceAccountTaxIdsInner)? = nil,
      @amount_due : Int64? = nil,
      @amount_paid : Int64? = nil,
      @amount_remaining : Int64? = nil,
      @amount_shipping : Int64? = nil,
      @application : Stripe::InvoiceApplication? = nil,
      @application_fee_amount : Int64? = nil,
      @attempt_count : Int64? = nil,
      @attempted : Bool? = nil,
      @automatic_tax : Stripe::AutomaticTax? = nil,
      @billing_reason : String? = nil,
      @charge : Stripe::InvoiceCharge? = nil,
      @collection_method : String? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @custom_fields : Array(Stripe::InvoiceSettingCustomField)? = nil,
      @customer : Stripe::InvoiceCustomer? = nil,
      @customer_address : Stripe::Address? = nil,
      @customer_email : String? = nil,
      @customer_name : String? = nil,
      @customer_phone : String? = nil,
      @customer_shipping : Stripe::Shipping? = nil,
      @customer_tax_exempt : String? = nil,
      @default_payment_method : Stripe::InvoiceDefaultPaymentMethod? = nil,
      @default_source : Stripe::InvoiceDefaultSource? = nil,
      @default_tax_rates : Array(Stripe::TaxRate)? = nil,
      @description : String? = nil,
      @discount : Stripe::Discount? = nil,
      @discounts : Array(Stripe::InvoiceDiscountsInner)? = nil,
      @due_date : Int64? = nil,
      @effective_at : Int64? = nil,
      @ending_balance : Int64? = nil,
      @footer : String? = nil,
      @from_invoice : Stripe::InvoicesResourceFromInvoice? = nil,
      @issuer : Stripe::ConnectAccountReference? = nil,
      @last_finalization_error : Stripe::ApiErrors? = nil,
      @latest_revision : Stripe::InvoiceLatestRevision? = nil,
      @lines : Stripe::InvoiceLinesList? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @next_payment_attempt : Int64? = nil,
      @number : String? = nil,
      @object : String? = nil,
      @on_behalf_of : Stripe::InvoiceOnBehalfOf? = nil,
      @paid : Bool? = nil,
      @paid_out_of_band : Bool? = nil,
      @payment_intent : Stripe::InvoicePaymentIntent? = nil,
      @payment_settings : Stripe::InvoicesPaymentSettings? = nil,
      @period_end : Int64? = nil,
      @period_start : Int64? = nil,
      @post_payment_credit_notes_amount : Int64? = nil,
      @pre_payment_credit_notes_amount : Int64? = nil,
      @quote : Stripe::InvoiceQuote? = nil,
      @receipt_number : String? = nil,
      @rendering : Stripe::InvoicesResourceInvoiceRendering? = nil,
      @shipping_cost : Stripe::InvoicesResourceShippingCost? = nil,
      @shipping_details : Stripe::Shipping? = nil,
      @starting_balance : Int64? = nil,
      @statement_descriptor : String? = nil,
      @status : String? = nil,
      @status_transitions : Stripe::InvoicesResourceStatusTransitions? = nil,
      @subscription : Stripe::InvoiceSubscription? = nil,
      @subscription_details : Stripe::SubscriptionDetailsData? = nil,
      @subtotal : Int64? = nil,
      @subtotal_excluding_tax : Int64? = nil,
      @tax : Int64? = nil,
      @test_clock : Stripe::InvoiceTestClock? = nil,
      @total : Int64? = nil,
      @total_discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)? = nil,
      @total_excluding_tax : Int64? = nil,
      @total_tax_amounts : Array(Stripe::InvoiceTaxAmount)? = nil,
      @transfer_data : Stripe::InvoiceTransferData? = nil,
      @webhooks_delivered_at : Int64? = nil,
      # Optional properties
      @auto_advance : Bool? = nil,
      @customer_tax_ids : Array(Stripe::InvoicesResourceInvoiceTaxId)? = nil,
      @hosted_invoice_url : String? = nil,
      @id : String? = nil,
      @invoice_pdf : String? = nil,
      @subscription_proration_date : Int64? = nil,
      @threshold_reason : Stripe::InvoiceThresholdReason? = nil
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
    def_equals_and_hash(@account_country, @account_name, @account_tax_ids, @amount_due, @amount_paid, @amount_remaining, @amount_shipping, @application, @application_fee_amount, @attempt_count, @attempted, @automatic_tax, @billing_reason, @charge, @collection_method, @created, @currency, @custom_fields, @customer, @customer_address, @customer_email, @customer_name, @customer_phone, @customer_shipping, @customer_tax_exempt, @default_payment_method, @default_source, @default_tax_rates, @description, @discount, @discounts, @due_date, @effective_at, @ending_balance, @footer, @from_invoice, @issuer, @last_finalization_error, @latest_revision, @lines, @livemode, @metadata, @next_payment_attempt, @number, @object, @on_behalf_of, @paid, @paid_out_of_band, @payment_intent, @payment_settings, @period_end, @period_start, @post_payment_credit_notes_amount, @pre_payment_credit_notes_amount, @quote, @receipt_number, @rendering, @shipping_cost, @shipping_details, @starting_balance, @statement_descriptor, @status, @status_transitions, @subscription, @subscription_details, @subtotal, @subtotal_excluding_tax, @tax, @test_clock, @total, @total_discount_amounts, @total_excluding_tax, @total_tax_amounts, @transfer_data, @webhooks_delivered_at, @auto_advance, @customer_tax_ids, @customer_tax_ids_present, @hosted_invoice_url, @hosted_invoice_url_present, @id, @invoice_pdf, @invoice_pdf_present, @subscription_proration_date, @threshold_reason)
  end
end