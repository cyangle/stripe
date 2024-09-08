#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./invoice_setting_quote_setting"
require "./invoiceitem_discounts_inner"
require "./payment_link_on_behalf_of"
require "./quote_application"
require "./quote_customer"
require "./quote_default_tax_rates_inner"
require "./quote_from_quote"
require "./quote_invoice"
require "./quote_subscription"
require "./quote_subscription_schedule"
require "./quote_test_clock"
require "./quote_transfer_data"
require "./quotes_resource_automatic_tax"
require "./quotes_resource_computed"
require "./quotes_resource_list_line_items"
require "./quotes_resource_status_transitions"
require "./quotes_resource_subscription_data_subscription_data"
require "./quotes_resource_total_details"

module Stripe
  # A Quote is a way to model prices that you'd like to provide to a customer. Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  class Quote
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Total before any discounts or taxes are applied.
    @[JSON::Field(key: "amount_subtotal", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_subtotal : Int64? = nil

    # Total after discounts and taxes are applied.
    @[JSON::Field(key: "amount_total", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_total : Int64? = nil

    @[JSON::Field(key: "application", type: Stripe::QuoteApplication?, default: nil, required: true, nullable: true, emit_null: true)]
    getter application : Stripe::QuoteApplication? = nil

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote.
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter application_fee_amount : Int64? = nil

    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote.
    @[JSON::Field(key: "application_fee_percent", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter application_fee_percent : Float64? = nil

    @[JSON::Field(key: "automatic_tax", type: Stripe::QuotesResourceAutomaticTax?, default: nil, required: true, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::QuotesResourceAutomaticTax? = nil

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [charge_automatically, send_invoice]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = String.static_array("charge_automatically", "send_invoice")

    @[JSON::Field(key: "computed", type: Stripe::QuotesResourceComputed?, default: nil, required: true, nullable: false, emit_null: false)]
    getter computed : Stripe::QuotesResourceComputed? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter currency : String? = nil
    MAX_LENGTH_FOR_CURRENCY = 5000

    @[JSON::Field(key: "customer", type: Stripe::QuoteCustomer?, default: nil, required: true, nullable: true, emit_null: true)]
    getter customer : Stripe::QuoteCustomer? = nil

    # A description that will be displayed on the quote PDF.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # The discounts applied to this quote.
    @[JSON::Field(key: "discounts", type: Array(Stripe::InvoiceitemDiscountsInner)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter discounts : Array(Stripe::InvoiceitemDiscountsInner)? = nil

    # The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter expires_at : Int64? = nil

    # A footer that will be displayed on the quote PDF.
    @[JSON::Field(key: "footer", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter footer : String? = nil
    MAX_LENGTH_FOR_FOOTER = 5000

    @[JSON::Field(key: "from_quote", type: Stripe::QuoteFromQuote?, default: nil, required: true, nullable: true, emit_null: true)]
    getter from_quote : Stripe::QuoteFromQuote? = nil

    # A header that will be displayed on the quote PDF.
    @[JSON::Field(key: "header", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter header : String? = nil
    MAX_LENGTH_FOR_HEADER = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "invoice", type: Stripe::QuoteInvoice?, default: nil, required: true, nullable: true, emit_null: true)]
    getter invoice : Stripe::QuoteInvoice? = nil

    @[JSON::Field(key: "invoice_settings", type: Stripe::InvoiceSettingQuoteSetting?, default: nil, required: true, nullable: false, emit_null: false)]
    getter invoice_settings : Stripe::InvoiceSettingQuoteSetting? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://stripe.com/docs/quotes/overview#finalize).
    @[JSON::Field(key: "number", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter number : String? = nil
    MAX_LENGTH_FOR_NUMBER = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [quote]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("quote")

    @[JSON::Field(key: "on_behalf_of", type: Stripe::PaymentLinkOnBehalfOf?, default: nil, required: true, nullable: true, emit_null: true)]
    getter on_behalf_of : Stripe::PaymentLinkOnBehalfOf? = nil

    # The status of the quote.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [accepted, canceled, draft, open]."
    VALID_VALUES_FOR_STATUS  = String.static_array("accepted", "canceled", "draft", "open")

    @[JSON::Field(key: "status_transitions", type: Stripe::QuotesResourceStatusTransitions?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status_transitions : Stripe::QuotesResourceStatusTransitions? = nil

    @[JSON::Field(key: "subscription", type: Stripe::QuoteSubscription?, default: nil, required: true, nullable: true, emit_null: true)]
    getter subscription : Stripe::QuoteSubscription? = nil

    @[JSON::Field(key: "subscription_data", type: Stripe::QuotesResourceSubscriptionDataSubscriptionData?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subscription_data : Stripe::QuotesResourceSubscriptionDataSubscriptionData? = nil

    @[JSON::Field(key: "subscription_schedule", type: Stripe::QuoteSubscriptionSchedule?, default: nil, required: true, nullable: true, emit_null: true)]
    getter subscription_schedule : Stripe::QuoteSubscriptionSchedule? = nil

    @[JSON::Field(key: "test_clock", type: Stripe::QuoteTestClock?, default: nil, required: true, nullable: true, emit_null: true)]
    getter test_clock : Stripe::QuoteTestClock? = nil

    @[JSON::Field(key: "total_details", type: Stripe::QuotesResourceTotalDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total_details : Stripe::QuotesResourceTotalDetails? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::QuoteTransferData?, default: nil, required: true, nullable: true, emit_null: true)]
    getter transfer_data : Stripe::QuoteTransferData? = nil

    # End of Required Properties

    # Optional Properties

    # The tax rates applied to this quote.
    @[JSON::Field(key: "default_tax_rates", type: Array(Stripe::QuoteDefaultTaxRatesInner)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_tax_rates : Array(Stripe::QuoteDefaultTaxRatesInner)? = nil

    @[JSON::Field(key: "line_items", type: Stripe::QuotesResourceListLineItems?, default: nil, required: false, nullable: false, emit_null: false)]
    getter line_items : Stripe::QuotesResourceListLineItems? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_subtotal : Int64? = nil,
      @amount_total : Int64? = nil,
      @application : Stripe::QuoteApplication? = nil,
      @application_fee_amount : Int64? = nil,
      @application_fee_percent : Float64? = nil,
      @automatic_tax : Stripe::QuotesResourceAutomaticTax? = nil,
      @collection_method : String? = nil,
      @computed : Stripe::QuotesResourceComputed? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @customer : Stripe::QuoteCustomer? = nil,
      @description : String? = nil,
      @discounts : Array(Stripe::InvoiceitemDiscountsInner)? = nil,
      @expires_at : Int64? = nil,
      @footer : String? = nil,
      @from_quote : Stripe::QuoteFromQuote? = nil,
      @header : String? = nil,
      @id : String? = nil,
      @invoice : Stripe::QuoteInvoice? = nil,
      @invoice_settings : Stripe::InvoiceSettingQuoteSetting? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @number : String? = nil,
      @object : String? = nil,
      @on_behalf_of : Stripe::PaymentLinkOnBehalfOf? = nil,
      @status : String? = nil,
      @status_transitions : Stripe::QuotesResourceStatusTransitions? = nil,
      @subscription : Stripe::QuoteSubscription? = nil,
      @subscription_data : Stripe::QuotesResourceSubscriptionDataSubscriptionData? = nil,
      @subscription_schedule : Stripe::QuoteSubscriptionSchedule? = nil,
      @test_clock : Stripe::QuoteTestClock? = nil,
      @total_details : Stripe::QuotesResourceTotalDetails? = nil,
      @transfer_data : Stripe::QuoteTransferData? = nil,
      # Optional properties
      @default_tax_rates : Array(Stripe::QuoteDefaultTaxRatesInner)? = nil,
      @line_items : Stripe::QuotesResourceListLineItems? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount_subtotal\" is required and cannot be null") if @amount_subtotal.nil?

      invalid_properties.push("\"amount_total\" is required and cannot be null") if @amount_total.nil?

      unless (_application = @application).nil?
        invalid_properties.concat(_application.list_invalid_properties_for("application")) if _application.is_a?(OpenApi::Validatable)
      end

      invalid_properties.push("\"automatic_tax\" is required and cannot be null") if @automatic_tax.nil?

      unless (_automatic_tax = @automatic_tax).nil?
        invalid_properties.concat(_automatic_tax.list_invalid_properties_for("automatic_tax")) if _automatic_tax.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"collection_method\" is required and cannot be null") if @collection_method.nil?

      unless (_collection_method = @collection_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_COLLECTION_METHOD) unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end
      invalid_properties.push("\"computed\" is required and cannot be null") if @computed.nil?

      unless (_computed = @computed).nil?
        invalid_properties.concat(_computed.list_invalid_properties_for("computed")) if _computed.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      unless (_currency = @currency).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("currency", _currency.to_s.size, MAX_LENGTH_FOR_CURRENCY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_customer = @customer).nil?
        invalid_properties.concat(_customer.list_invalid_properties_for("customer")) if _customer.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"discounts\" is required and cannot be null") if @discounts.nil?

      unless (_discounts = @discounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "discounts", container: _discounts)) if _discounts.is_a?(Array)
      end
      invalid_properties.push("\"expires_at\" is required and cannot be null") if @expires_at.nil?

      unless (_footer = @footer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("footer", _footer.to_s.size, MAX_LENGTH_FOR_FOOTER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_from_quote = @from_quote).nil?
        invalid_properties.concat(_from_quote.list_invalid_properties_for("from_quote")) if _from_quote.is_a?(OpenApi::Validatable)
      end
      unless (_header = @header).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("header", _header.to_s.size, MAX_LENGTH_FOR_HEADER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_invoice = @invoice).nil?
        invalid_properties.concat(_invoice.list_invalid_properties_for("invoice")) if _invoice.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"invoice_settings\" is required and cannot be null") if @invoice_settings.nil?

      unless (_invoice_settings = @invoice_settings).nil?
        invalid_properties.concat(_invoice_settings.list_invalid_properties_for("invoice_settings")) if _invoice_settings.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      unless (_number = @number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("number", _number.to_s.size, MAX_LENGTH_FOR_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_on_behalf_of = @on_behalf_of).nil?
        invalid_properties.concat(_on_behalf_of.list_invalid_properties_for("on_behalf_of")) if _on_behalf_of.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"status_transitions\" is required and cannot be null") if @status_transitions.nil?

      unless (_status_transitions = @status_transitions).nil?
        invalid_properties.concat(_status_transitions.list_invalid_properties_for("status_transitions")) if _status_transitions.is_a?(OpenApi::Validatable)
      end
      unless (_subscription = @subscription).nil?
        invalid_properties.concat(_subscription.list_invalid_properties_for("subscription")) if _subscription.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"subscription_data\" is required and cannot be null") if @subscription_data.nil?

      unless (_subscription_data = @subscription_data).nil?
        invalid_properties.concat(_subscription_data.list_invalid_properties_for("subscription_data")) if _subscription_data.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_schedule = @subscription_schedule).nil?
        invalid_properties.concat(_subscription_schedule.list_invalid_properties_for("subscription_schedule")) if _subscription_schedule.is_a?(OpenApi::Validatable)
      end
      unless (_test_clock = @test_clock).nil?
        invalid_properties.concat(_test_clock.list_invalid_properties_for("test_clock")) if _test_clock.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"total_details\" is required and cannot be null") if @total_details.nil?

      unless (_total_details = @total_details).nil?
        invalid_properties.concat(_total_details.list_invalid_properties_for("total_details")) if _total_details.is_a?(OpenApi::Validatable)
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end
      unless (_default_tax_rates = @default_tax_rates).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "default_tax_rates", container: _default_tax_rates)) if _default_tax_rates.is_a?(Array)
      end
      unless (_line_items = @line_items).nil?
        invalid_properties.concat(_line_items.list_invalid_properties_for("line_items")) if _line_items.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount_subtotal.nil?

      return false if @amount_total.nil?

      unless (_application = @application).nil?
        return false if _application.is_a?(OpenApi::Validatable) && !_application.valid?
      end

      return false if @automatic_tax.nil?
      unless (_automatic_tax = @automatic_tax).nil?
        return false if _automatic_tax.is_a?(OpenApi::Validatable) && !_automatic_tax.valid?
      end

      return false if @collection_method.nil?
      unless (_collection_method = @collection_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      return false if @computed.nil?
      unless (_computed = @computed).nil?
        return false if _computed.is_a?(OpenApi::Validatable) && !_computed.valid?
      end

      return false if @created.nil?

      unless (_currency = @currency).nil?
        return false if _currency.to_s.size > MAX_LENGTH_FOR_CURRENCY
      end

      unless (_customer = @customer).nil?
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      return false if @discounts.nil?
      unless (_discounts = @discounts).nil?
        return false if _discounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _discounts)
      end

      return false if @expires_at.nil?

      unless (_footer = @footer).nil?
        return false if _footer.to_s.size > MAX_LENGTH_FOR_FOOTER
      end

      unless (_from_quote = @from_quote).nil?
        return false if _from_quote.is_a?(OpenApi::Validatable) && !_from_quote.valid?
      end

      unless (_header = @header).nil?
        return false if _header.to_s.size > MAX_LENGTH_FOR_HEADER
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      unless (_invoice = @invoice).nil?
        return false if _invoice.is_a?(OpenApi::Validatable) && !_invoice.valid?
      end

      return false if @invoice_settings.nil?
      unless (_invoice_settings = @invoice_settings).nil?
        return false if _invoice_settings.is_a?(OpenApi::Validatable) && !_invoice_settings.valid?
      end

      return false if @livemode.nil?

      return false if @metadata.nil?

      unless (_number = @number).nil?
        return false if _number.to_s.size > MAX_LENGTH_FOR_NUMBER
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        return false if _on_behalf_of.is_a?(OpenApi::Validatable) && !_on_behalf_of.valid?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @status_transitions.nil?
      unless (_status_transitions = @status_transitions).nil?
        return false if _status_transitions.is_a?(OpenApi::Validatable) && !_status_transitions.valid?
      end

      unless (_subscription = @subscription).nil?
        return false if _subscription.is_a?(OpenApi::Validatable) && !_subscription.valid?
      end

      return false if @subscription_data.nil?
      unless (_subscription_data = @subscription_data).nil?
        return false if _subscription_data.is_a?(OpenApi::Validatable) && !_subscription_data.valid?
      end

      unless (_subscription_schedule = @subscription_schedule).nil?
        return false if _subscription_schedule.is_a?(OpenApi::Validatable) && !_subscription_schedule.valid?
      end

      unless (_test_clock = @test_clock).nil?
        return false if _test_clock.is_a?(OpenApi::Validatable) && !_test_clock.valid?
      end

      return false if @total_details.nil?
      unless (_total_details = @total_details).nil?
        return false if _total_details.is_a?(OpenApi::Validatable) && !_total_details.valid?
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      unless (_default_tax_rates = @default_tax_rates).nil?
        return false if _default_tax_rates.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _default_tax_rates)
      end

      unless (_line_items = @line_items).nil?
        return false if _line_items.is_a?(OpenApi::Validatable) && !_line_items.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_subtotal Object to be assigned
    def amount_subtotal=(new_value : Int64?)
      raise ArgumentError.new("\"amount_subtotal\" is required and cannot be null") if new_value.nil?

      @amount_subtotal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_total Object to be assigned
    def amount_total=(new_value : Int64?)
      raise ArgumentError.new("\"amount_total\" is required and cannot be null") if new_value.nil?

      @amount_total = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application Object to be assigned
    def application=(new_value : Stripe::QuoteApplication?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @application = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_amount Object to be assigned
    def application_fee_amount=(new_value : Int64?)
      @application_fee_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_percent Object to be assigned
    def application_fee_percent=(new_value : Float64?)
      @application_fee_percent = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic_tax Object to be assigned
    def automatic_tax=(new_value : Stripe::QuotesResourceAutomaticTax?)
      raise ArgumentError.new("\"automatic_tax\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @automatic_tax = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(new_value : String?)
      raise ArgumentError.new("\"collection_method\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("collection_method", new_value, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      @collection_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] computed Object to be assigned
    def computed=(new_value : Stripe::QuotesResourceComputed?)
      raise ArgumentError.new("\"computed\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @computed = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("currency", new_value.to_s.size, MAX_LENGTH_FOR_CURRENCY)
      end

      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : Stripe::QuoteCustomer?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(new_value : Array(Stripe::InvoiceitemDiscountsInner)?)
      raise ArgumentError.new("\"discounts\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @discounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(new_value : Int64?)
      raise ArgumentError.new("\"expires_at\" is required and cannot be null") if new_value.nil?

      @expires_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] footer Object to be assigned
    def footer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("footer", new_value.to_s.size, MAX_LENGTH_FOR_FOOTER)
      end

      @footer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] from_quote Object to be assigned
    def from_quote=(new_value : Stripe::QuoteFromQuote?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @from_quote = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] header Object to be assigned
    def header=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("header", new_value.to_s.size, MAX_LENGTH_FOR_HEADER)
      end

      @header = new_value
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
    # @param [Object] invoice Object to be assigned
    def invoice=(new_value : Stripe::QuoteInvoice?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @invoice = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_settings Object to be assigned
    def invoice_settings=(new_value : Stripe::InvoiceSettingQuoteSetting?)
      raise ArgumentError.new("\"invoice_settings\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @invoice_settings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      raise ArgumentError.new("\"metadata\" is required and cannot be null") if new_value.nil?

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number Object to be assigned
    def number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("number", new_value.to_s.size, MAX_LENGTH_FOR_NUMBER)
      end

      @number = new_value
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
    def on_behalf_of=(new_value : Stripe::PaymentLinkOnBehalfOf?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @on_behalf_of = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_transitions Object to be assigned
    def status_transitions=(new_value : Stripe::QuotesResourceStatusTransitions?)
      raise ArgumentError.new("\"status_transitions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @status_transitions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription Object to be assigned
    def subscription=(new_value : Stripe::QuoteSubscription?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @subscription = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_data Object to be assigned
    def subscription_data=(new_value : Stripe::QuotesResourceSubscriptionDataSubscriptionData?)
      raise ArgumentError.new("\"subscription_data\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @subscription_data = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_schedule Object to be assigned
    def subscription_schedule=(new_value : Stripe::QuoteSubscriptionSchedule?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @subscription_schedule = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] test_clock Object to be assigned
    def test_clock=(new_value : Stripe::QuoteTestClock?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @test_clock = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total_details Object to be assigned
    def total_details=(new_value : Stripe::QuotesResourceTotalDetails?)
      raise ArgumentError.new("\"total_details\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @total_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(new_value : Stripe::QuoteTransferData?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @transfer_data = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_tax_rates Object to be assigned
    def default_tax_rates=(new_value : Array(Stripe::QuoteDefaultTaxRatesInner)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @default_tax_rates = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line_items Object to be assigned
    def line_items=(new_value : Stripe::QuotesResourceListLineItems?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @line_items = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_subtotal, @amount_total, @application, @application_fee_amount, @application_fee_percent, @automatic_tax, @collection_method, @computed, @created, @currency, @customer, @description, @discounts, @expires_at, @footer, @from_quote, @header, @id, @invoice, @invoice_settings, @livemode, @metadata, @number, @object, @on_behalf_of, @status, @status_transitions, @subscription, @subscription_data, @subscription_schedule, @test_clock, @total_details, @transfer_data, @default_tax_rates, @line_items)
  end
end
