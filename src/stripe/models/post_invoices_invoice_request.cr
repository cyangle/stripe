#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./automatic_tax_param"
require "./connect_account_reference"
require "./payment_settings"
require "./post_accounts_request_metadata"
require "./post_invoices_invoice_request_custom_fields"
require "./post_invoices_invoice_request_default_tax_rates"
require "./post_invoices_invoice_request_discounts"
require "./post_invoices_invoice_request_effective_at"
require "./post_invoices_invoice_request_shipping_cost"
require "./post_invoices_invoice_request_shipping_details"
require "./post_invoices_invoice_request_transfer_data"
require "./post_invoices_request_account_tax_ids"
require "./rendering_param"

module Stripe
  class PostInvoicesInvoiceRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "account_tax_ids", type: Stripe::PostInvoicesRequestAccountTaxIds?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_tax_ids : Stripe::PostInvoicesRequestAccountTaxIds? = nil

    # A fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/billing/invoices/connect#collecting-fees).
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_amount : Int64? = nil

    # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice.
    @[JSON::Field(key: "auto_advance", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter auto_advance : Bool? = nil

    @[JSON::Field(key: "automatic_tax", type: Stripe::AutomaticTaxParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::AutomaticTaxParam? = nil

    # Either `charge_automatically` or `send_invoice`. This field can be updated only on `draft` invoices.
    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [charge_automatically, send_invoice]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = String.static_array("charge_automatically", "send_invoice")

    @[JSON::Field(key: "custom_fields", type: Stripe::PostInvoicesInvoiceRequestCustomFields?, default: nil, required: false, nullable: false, emit_null: false)]
    getter custom_fields : Stripe::PostInvoicesInvoiceRequestCustomFields? = nil

    # The number of days from which the invoice is created until it is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
    @[JSON::Field(key: "days_until_due", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter days_until_due : Int64? = nil

    # ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
    @[JSON::Field(key: "default_payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_payment_method : String? = nil
    MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD = 5000

    @[JSON::Field(key: "default_source", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_source : String? = nil
    ERROR_MESSAGE_FOR_DEFAULT_SOURCE = "invalid value for \"default_source\", must be one of []."
    VALID_VALUES_FOR_DEFAULT_SOURCE  = String.static_array("")

    @[JSON::Field(key: "default_tax_rates", type: Stripe::PostInvoicesInvoiceRequestDefaultTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_tax_rates : Stripe::PostInvoicesInvoiceRequestDefaultTaxRates? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 1500

    @[JSON::Field(key: "discounts", type: Stripe::PostInvoicesInvoiceRequestDiscounts?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Stripe::PostInvoicesInvoiceRequestDiscounts? = nil

    # The date on which payment for this invoice is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
    @[JSON::Field(key: "due_date", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter due_date : Int64? = nil

    @[JSON::Field(key: "effective_at", type: Stripe::PostInvoicesInvoiceRequestEffectiveAt?, default: nil, required: false, nullable: false, emit_null: false)]
    getter effective_at : Stripe::PostInvoicesInvoiceRequestEffectiveAt? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Footer to be displayed on the invoice.
    @[JSON::Field(key: "footer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter footer : String? = nil
    MAX_LENGTH_FOR_FOOTER = 5000

    @[JSON::Field(key: "issuer", type: Stripe::ConnectAccountReference?, default: nil, required: false, nullable: false, emit_null: false)]
    getter issuer : Stripe::ConnectAccountReference? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    @[JSON::Field(key: "number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter number : String? = nil
    ERROR_MESSAGE_FOR_NUMBER = "invalid value for \"number\", must be one of []."
    VALID_VALUES_FOR_NUMBER  = String.static_array("")

    @[JSON::Field(key: "on_behalf_of", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter on_behalf_of : String? = nil
    ERROR_MESSAGE_FOR_ON_BEHALF_OF = "invalid value for \"on_behalf_of\", must be one of []."
    VALID_VALUES_FOR_ON_BEHALF_OF  = String.static_array("")

    @[JSON::Field(key: "payment_settings", type: Stripe::PaymentSettings?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_settings : Stripe::PaymentSettings? = nil

    @[JSON::Field(key: "rendering", type: Stripe::RenderingParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter rendering : Stripe::RenderingParam? = nil

    @[JSON::Field(key: "shipping_cost", type: Stripe::PostInvoicesInvoiceRequestShippingCost?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_cost : Stripe::PostInvoicesInvoiceRequestShippingCost? = nil

    @[JSON::Field(key: "shipping_details", type: Stripe::PostInvoicesInvoiceRequestShippingDetails?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_details : Stripe::PostInvoicesInvoiceRequestShippingDetails? = nil

    # Extra information about a charge for the customer's credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default `statement_descriptor` will be set to the first subscription item's product's `statement_descriptor`.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 22

    @[JSON::Field(key: "transfer_data", type: Stripe::PostInvoicesInvoiceRequestTransferData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::PostInvoicesInvoiceRequestTransferData? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_tax_ids : Stripe::PostInvoicesRequestAccountTaxIds? = nil,
      @application_fee_amount : Int64? = nil,
      @auto_advance : Bool? = nil,
      @automatic_tax : Stripe::AutomaticTaxParam? = nil,
      @collection_method : String? = nil,
      @custom_fields : Stripe::PostInvoicesInvoiceRequestCustomFields? = nil,
      @days_until_due : Int64? = nil,
      @default_payment_method : String? = nil,
      @default_source : String? = nil,
      @default_tax_rates : Stripe::PostInvoicesInvoiceRequestDefaultTaxRates? = nil,
      @description : String? = nil,
      @discounts : Stripe::PostInvoicesInvoiceRequestDiscounts? = nil,
      @due_date : Int64? = nil,
      @effective_at : Stripe::PostInvoicesInvoiceRequestEffectiveAt? = nil,
      @expand : Array(String)? = nil,
      @footer : String? = nil,
      @issuer : Stripe::ConnectAccountReference? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @number : String? = nil,
      @on_behalf_of : String? = nil,
      @payment_settings : Stripe::PaymentSettings? = nil,
      @rendering : Stripe::RenderingParam? = nil,
      @shipping_cost : Stripe::PostInvoicesInvoiceRequestShippingCost? = nil,
      @shipping_details : Stripe::PostInvoicesInvoiceRequestShippingDetails? = nil,
      @statement_descriptor : String? = nil,
      @transfer_data : Stripe::PostInvoicesInvoiceRequestTransferData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_tax_ids = @account_tax_ids).nil?
        invalid_properties.concat(_account_tax_ids.list_invalid_properties_for("account_tax_ids")) if _account_tax_ids.is_a?(OpenApi::Validatable)
      end

      unless (_automatic_tax = @automatic_tax).nil?
        invalid_properties.concat(_automatic_tax.list_invalid_properties_for("automatic_tax")) if _automatic_tax.is_a?(OpenApi::Validatable)
      end
      unless (_collection_method = @collection_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_COLLECTION_METHOD) unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end
      unless (_custom_fields = @custom_fields).nil?
        invalid_properties.concat(_custom_fields.list_invalid_properties_for("custom_fields")) if _custom_fields.is_a?(OpenApi::Validatable)
      end

      unless (_default_payment_method = @default_payment_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_payment_method", _default_payment_method.to_s.size, MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_default_source = @default_source).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_DEFAULT_SOURCE) unless OpenApi::EnumValidator.valid?(_default_source, VALID_VALUES_FOR_DEFAULT_SOURCE)
      end
      unless (_default_tax_rates = @default_tax_rates).nil?
        invalid_properties.concat(_default_tax_rates.list_invalid_properties_for("default_tax_rates")) if _default_tax_rates.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_discounts = @discounts).nil?
        invalid_properties.concat(_discounts.list_invalid_properties_for("discounts")) if _discounts.is_a?(OpenApi::Validatable)
      end

      unless (_effective_at = @effective_at).nil?
        invalid_properties.concat(_effective_at.list_invalid_properties_for("effective_at")) if _effective_at.is_a?(OpenApi::Validatable)
      end

      unless (_footer = @footer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("footer", _footer.to_s.size, MAX_LENGTH_FOR_FOOTER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_issuer = @issuer).nil?
        invalid_properties.concat(_issuer.list_invalid_properties_for("issuer")) if _issuer.is_a?(OpenApi::Validatable)
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_number = @number).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_NUMBER) unless OpenApi::EnumValidator.valid?(_number, VALID_VALUES_FOR_NUMBER)
      end
      unless (_on_behalf_of = @on_behalf_of).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ON_BEHALF_OF) unless OpenApi::EnumValidator.valid?(_on_behalf_of, VALID_VALUES_FOR_ON_BEHALF_OF)
      end
      unless (_payment_settings = @payment_settings).nil?
        invalid_properties.concat(_payment_settings.list_invalid_properties_for("payment_settings")) if _payment_settings.is_a?(OpenApi::Validatable)
      end
      unless (_rendering = @rendering).nil?
        invalid_properties.concat(_rendering.list_invalid_properties_for("rendering")) if _rendering.is_a?(OpenApi::Validatable)
      end
      unless (_shipping_cost = @shipping_cost).nil?
        invalid_properties.concat(_shipping_cost.list_invalid_properties_for("shipping_cost")) if _shipping_cost.is_a?(OpenApi::Validatable)
      end
      unless (_shipping_details = @shipping_details).nil?
        invalid_properties.concat(_shipping_details.list_invalid_properties_for("shipping_details")) if _shipping_details.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_tax_ids = @account_tax_ids).nil?
        return false if _account_tax_ids.is_a?(OpenApi::Validatable) && !_account_tax_ids.valid?
      end

      unless (_automatic_tax = @automatic_tax).nil?
        return false if _automatic_tax.is_a?(OpenApi::Validatable) && !_automatic_tax.valid?
      end

      unless (_collection_method = @collection_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      unless (_custom_fields = @custom_fields).nil?
        return false if _custom_fields.is_a?(OpenApi::Validatable) && !_custom_fields.valid?
      end

      unless (_default_payment_method = @default_payment_method).nil?
        return false if _default_payment_method.to_s.size > MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD
      end

      unless (_default_source = @default_source).nil?
        return false unless OpenApi::EnumValidator.valid?(_default_source, VALID_VALUES_FOR_DEFAULT_SOURCE)
      end

      unless (_default_tax_rates = @default_tax_rates).nil?
        return false if _default_tax_rates.is_a?(OpenApi::Validatable) && !_default_tax_rates.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_discounts = @discounts).nil?
        return false if _discounts.is_a?(OpenApi::Validatable) && !_discounts.valid?
      end

      unless (_effective_at = @effective_at).nil?
        return false if _effective_at.is_a?(OpenApi::Validatable) && !_effective_at.valid?
      end

      unless (_footer = @footer).nil?
        return false if _footer.to_s.size > MAX_LENGTH_FOR_FOOTER
      end

      unless (_issuer = @issuer).nil?
        return false if _issuer.is_a?(OpenApi::Validatable) && !_issuer.valid?
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_number = @number).nil?
        return false unless OpenApi::EnumValidator.valid?(_number, VALID_VALUES_FOR_NUMBER)
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        return false unless OpenApi::EnumValidator.valid?(_on_behalf_of, VALID_VALUES_FOR_ON_BEHALF_OF)
      end

      unless (_payment_settings = @payment_settings).nil?
        return false if _payment_settings.is_a?(OpenApi::Validatable) && !_payment_settings.valid?
      end

      unless (_rendering = @rendering).nil?
        return false if _rendering.is_a?(OpenApi::Validatable) && !_rendering.valid?
      end

      unless (_shipping_cost = @shipping_cost).nil?
        return false if _shipping_cost.is_a?(OpenApi::Validatable) && !_shipping_cost.valid?
      end

      unless (_shipping_details = @shipping_details).nil?
        return false if _shipping_details.is_a?(OpenApi::Validatable) && !_shipping_details.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_tax_ids Object to be assigned
    def account_tax_ids=(new_value : Stripe::PostInvoicesRequestAccountTaxIds?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @account_tax_ids = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_amount Object to be assigned
    def application_fee_amount=(new_value : Int64?)
      @application_fee_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] auto_advance Object to be assigned
    def auto_advance=(new_value : Bool?)
      @auto_advance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic_tax Object to be assigned
    def automatic_tax=(new_value : Stripe::AutomaticTaxParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @automatic_tax = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("collection_method", new_value, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      @collection_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] custom_fields Object to be assigned
    def custom_fields=(new_value : Stripe::PostInvoicesInvoiceRequestCustomFields?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @custom_fields = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] days_until_due Object to be assigned
    def days_until_due=(new_value : Int64?)
      @days_until_due = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_payment_method Object to be assigned
    def default_payment_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("default_payment_method", new_value.to_s.size, MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD)
      end

      @default_payment_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_source Object to be assigned
    def default_source=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("default_source", new_value, VALID_VALUES_FOR_DEFAULT_SOURCE)
      end

      @default_source = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_tax_rates Object to be assigned
    def default_tax_rates=(new_value : Stripe::PostInvoicesInvoiceRequestDefaultTaxRates?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @default_tax_rates = new_value
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
    def discounts=(new_value : Stripe::PostInvoicesInvoiceRequestDiscounts?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @discounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] due_date Object to be assigned
    def due_date=(new_value : Int64?)
      @due_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] effective_at Object to be assigned
    def effective_at=(new_value : Stripe::PostInvoicesInvoiceRequestEffectiveAt?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @effective_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
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
    # @param [Object] issuer Object to be assigned
    def issuer=(new_value : Stripe::ConnectAccountReference?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @issuer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::PostAccountsRequestMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number Object to be assigned
    def number=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("number", new_value, VALID_VALUES_FOR_NUMBER)
      end

      @number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("on_behalf_of", new_value, VALID_VALUES_FOR_ON_BEHALF_OF)
      end

      @on_behalf_of = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_settings Object to be assigned
    def payment_settings=(new_value : Stripe::PaymentSettings?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_settings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rendering Object to be assigned
    def rendering=(new_value : Stripe::RenderingParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @rendering = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_cost Object to be assigned
    def shipping_cost=(new_value : Stripe::PostInvoicesInvoiceRequestShippingCost?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @shipping_cost = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_details Object to be assigned
    def shipping_details=(new_value : Stripe::PostInvoicesInvoiceRequestShippingDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @shipping_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      end

      @statement_descriptor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(new_value : Stripe::PostInvoicesInvoiceRequestTransferData?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @transfer_data = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_tax_ids, @application_fee_amount, @auto_advance, @automatic_tax, @collection_method, @custom_fields, @days_until_due, @default_payment_method, @default_source, @default_tax_rates, @description, @discounts, @due_date, @effective_at, @expand, @footer, @issuer, @metadata, @number, @on_behalf_of, @payment_settings, @rendering, @shipping_cost, @shipping_details, @statement_descriptor, @transfer_data)
  end
end
