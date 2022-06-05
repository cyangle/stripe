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
  # A Quote is a way to model prices that you'd like to provide to a customer. Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Quote
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Total before any discounts or taxes are applied.
    @[JSON::Field(key: "amount_subtotal", type: Int64)]
    property amount_subtotal : Int64

    # Total after discounts and taxes are applied.
    @[JSON::Field(key: "amount_total", type: Int64)]
    property amount_total : Int64

    @[JSON::Field(key: "automatic_tax", type: QuotesResourceAutomaticTax)]
    property automatic_tax : QuotesResourceAutomaticTax

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to `charge_automatically`.
    @[JSON::Field(key: "collection_method", type: String)]
    getter collection_method : String

    ENUM_VALIDATOR_FOR_COLLECTION_METHOD = EnumValidator.new("collection_method", "String", ["charge_automatically", "send_invoice"])

    @[JSON::Field(key: "computed", type: QuotesResourceComputed)]
    property computed : QuotesResourceComputed

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # The discounts applied to this quote.
    @[JSON::Field(key: "discounts", type: Array(InvoiceitemDiscountsInner))]
    property discounts : Array(InvoiceitemDiscountsInner)

    # The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "expires_at", type: Int64)]
    property expires_at : Int64

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["quote"])

    # The status of the quote.
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["accepted", "canceled", "draft", "open"])

    @[JSON::Field(key: "status_transitions", type: QuotesResourceStatusTransitions)]
    property status_transitions : QuotesResourceStatusTransitions

    @[JSON::Field(key: "subscription_data", type: QuotesResourceSubscriptionData)]
    property subscription_data : QuotesResourceSubscriptionData

    @[JSON::Field(key: "total_details", type: QuotesResourceTotalDetails)]
    property total_details : QuotesResourceTotalDetails

    # Optional properties

    @[JSON::Field(key: "application", type: QuoteApplication?, presence: true, ignore_serialize: application.nil? && !application_present?)]
    property application : QuoteApplication?

    @[JSON::Field(ignore: true)]
    property? application_present : Bool = false

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote.
    @[JSON::Field(key: "application_fee_amount", type: Int64?, presence: true, ignore_serialize: application_fee_amount.nil? && !application_fee_amount_present?)]
    property application_fee_amount : Int64?

    @[JSON::Field(ignore: true)]
    property? application_fee_amount_present : Bool = false

    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote.
    @[JSON::Field(key: "application_fee_percent", type: Float64?, presence: true, ignore_serialize: application_fee_percent.nil? && !application_fee_percent_present?)]
    property application_fee_percent : Float64?

    @[JSON::Field(ignore: true)]
    property? application_fee_percent_present : Bool = false

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    getter currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    @[JSON::Field(key: "customer", type: QuoteCustomer?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    property customer : QuoteCustomer?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # The tax rates applied to this quote.
    @[JSON::Field(key: "default_tax_rates", type: Array(QuoteDefaultTaxRatesInner)?, presence: true, ignore_serialize: default_tax_rates.nil? && !default_tax_rates_present?)]
    property default_tax_rates : Array(QuoteDefaultTaxRatesInner)?

    @[JSON::Field(ignore: true)]
    property? default_tax_rates_present : Bool = false

    # A description that will be displayed on the quote PDF.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # A footer that will be displayed on the quote PDF.
    @[JSON::Field(key: "footer", type: String?, presence: true, ignore_serialize: footer.nil? && !footer_present?)]
    getter footer : String?

    @[JSON::Field(ignore: true)]
    property? footer_present : Bool = false

    @[JSON::Field(key: "from_quote", type: QuoteFromQuote?, presence: true, ignore_serialize: from_quote.nil? && !from_quote_present?)]
    property from_quote : QuoteFromQuote?

    @[JSON::Field(ignore: true)]
    property? from_quote_present : Bool = false

    # A header that will be displayed on the quote PDF.
    @[JSON::Field(key: "header", type: String?, presence: true, ignore_serialize: header.nil? && !header_present?)]
    getter header : String?

    @[JSON::Field(ignore: true)]
    property? header_present : Bool = false

    @[JSON::Field(key: "invoice", type: QuoteInvoice?, presence: true, ignore_serialize: invoice.nil? && !invoice_present?)]
    property invoice : QuoteInvoice?

    @[JSON::Field(ignore: true)]
    property? invoice_present : Bool = false

    @[JSON::Field(key: "invoice_settings", type: QuoteInvoiceSettings?, presence: true, ignore_serialize: invoice_settings.nil? && !invoice_settings_present?)]
    property invoice_settings : QuoteInvoiceSettings?

    @[JSON::Field(ignore: true)]
    property? invoice_settings_present : Bool = false

    @[JSON::Field(key: "line_items", type: QuotesResourceListLineItems1?, presence: true, ignore_serialize: line_items.nil? && !line_items_present?)]
    property line_items : QuotesResourceListLineItems1?

    @[JSON::Field(ignore: true)]
    property? line_items_present : Bool = false

    # A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://stripe.com/docs/quotes/overview#finalize).
    @[JSON::Field(key: "number", type: String?, presence: true, ignore_serialize: number.nil? && !number_present?)]
    getter number : String?

    @[JSON::Field(ignore: true)]
    property? number_present : Bool = false

    @[JSON::Field(key: "on_behalf_of", type: PaymentLinkOnBehalfOf?, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    property on_behalf_of : PaymentLinkOnBehalfOf?

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    @[JSON::Field(key: "subscription", type: QuoteSubscription?, presence: true, ignore_serialize: subscription.nil? && !subscription_present?)]
    property subscription : QuoteSubscription?

    @[JSON::Field(ignore: true)]
    property? subscription_present : Bool = false

    @[JSON::Field(key: "subscription_schedule", type: QuoteSubscriptionSchedule?, presence: true, ignore_serialize: subscription_schedule.nil? && !subscription_schedule_present?)]
    property subscription_schedule : QuoteSubscriptionSchedule?

    @[JSON::Field(ignore: true)]
    property? subscription_schedule_present : Bool = false

    @[JSON::Field(key: "test_clock", type: QuoteTestClock?, presence: true, ignore_serialize: test_clock.nil? && !test_clock_present?)]
    property test_clock : QuoteTestClock?

    @[JSON::Field(ignore: true)]
    property? test_clock_present : Bool = false

    @[JSON::Field(key: "transfer_data", type: QuoteTransferData?, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    property transfer_data : QuoteTransferData?

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_subtotal : Int64,
      @amount_total : Int64,
      @automatic_tax : QuotesResourceAutomaticTax,
      @collection_method : String,
      @computed : QuotesResourceComputed,
      @created : Int64,
      @discounts : Array(InvoiceitemDiscountsInner),
      @expires_at : Int64,
      @id : String,
      @livemode : Bool,
      @metadata : Hash(String, String),
      @object : String,
      @status : String,
      @status_transitions : QuotesResourceStatusTransitions,
      @subscription_data : QuotesResourceSubscriptionData,
      @total_details : QuotesResourceTotalDetails,
      # Optional properties
      @application : QuoteApplication? = nil,
      @application_fee_amount : Int64? = nil,
      @application_fee_percent : Float64? = nil,
      @currency : String? = nil,
      @customer : QuoteCustomer? = nil,
      @default_tax_rates : Array(QuoteDefaultTaxRatesInner)? = nil,
      @description : String? = nil,
      @footer : String? = nil,
      @from_quote : QuoteFromQuote? = nil,
      @header : String? = nil,
      @invoice : QuoteInvoice? = nil,
      @invoice_settings : QuoteInvoiceSettings? = nil,
      @line_items : QuotesResourceListLineItems1? = nil,
      @number : String? = nil,
      @on_behalf_of : PaymentLinkOnBehalfOf? = nil,
      @subscription : QuoteSubscription? = nil,
      @subscription_schedule : QuoteSubscriptionSchedule? = nil,
      @test_clock : QuoteTestClock? = nil,
      @transfer_data : QuoteTransferData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_COLLECTION_METHOD.error_message) unless ENUM_VALIDATOR_FOR_COLLECTION_METHOD.valid?(@collection_method, false)

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      if !@currency.nil? && @currency.to_s.size > 5000
        invalid_properties.push("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@footer.nil? && @footer.to_s.size > 5000
        invalid_properties.push("invalid value for \"footer\", the character length must be smaller than or equal to 5000.")
      end

      if !@header.nil? && @header.to_s.size > 5000
        invalid_properties.push("invalid value for \"header\", the character length must be smaller than or equal to 5000.")
      end

      if !@number.nil? && @number.to_s.size > 5000
        invalid_properties.push("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_COLLECTION_METHOD.valid?(@collection_method, false)
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false if !@currency.nil? && @currency.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@footer.nil? && @footer.to_s.size > 5000
      return false if !@header.nil? && @header.to_s.size > 5000
      return false if !@number.nil? && @number.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(collection_method)
      ENUM_VALIDATOR_FOR_COLLECTION_METHOD.valid!(collection_method, false)
      @collection_method = collection_method
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status, false)
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if !currency.nil? && currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      @currency = currency
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] footer Value to be assigned
    def footer=(footer)
      if !footer.nil? && footer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"footer\", the character length must be smaller than or equal to 5000.")
      end

      @footer = footer
    end

    # Custom attribute writer method with validation
    # @param [Object] header Value to be assigned
    def header=(header)
      if !header.nil? && header.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"header\", the character length must be smaller than or equal to 5000.")
      end

      @header = header
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if !number.nil? && number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      @number = number
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
    def_equals_and_hash(@amount_subtotal, @amount_total, @automatic_tax, @collection_method, @computed, @created, @discounts, @expires_at, @id, @livemode, @metadata, @object, @status, @status_transitions, @subscription_data, @total_details, @application, @application_fee_amount, @application_fee_percent, @currency, @customer, @default_tax_rates, @description, @footer, @from_quote, @header, @invoice, @invoice_settings, @line_items, @number, @on_behalf_of, @subscription, @subscription_schedule, @test_clock, @transfer_data)
  end
end
