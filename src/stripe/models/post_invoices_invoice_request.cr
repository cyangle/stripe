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

    # Controls whether Stripe will perform [automatic collection](https://stripe.com/docs/billing/invoices/workflow/#auto_advance) of the invoice.
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

    # ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
    @[JSON::Field(key: "default_source", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_source : String? = nil
    MAX_LENGTH_FOR_DEFAULT_SOURCE = 5000

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

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Footer to be displayed on the invoice.
    @[JSON::Field(key: "footer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter footer : String? = nil
    MAX_LENGTH_FOR_FOOTER = 5000

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    @[JSON::Field(key: "on_behalf_of", type: Stripe::PostInvoicesInvoiceRequestOnBehalfOf?, default: nil, required: false, nullable: false, emit_null: false)]
    getter on_behalf_of : Stripe::PostInvoicesInvoiceRequestOnBehalfOf? = nil

    @[JSON::Field(key: "payment_settings", type: Stripe::PaymentSettings?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_settings : Stripe::PaymentSettings? = nil

    @[JSON::Field(key: "rendering_options", type: Stripe::PostInvoicesRequestRenderingOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter rendering_options : Stripe::PostInvoicesRequestRenderingOptions? = nil

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
      @expand : Array(String)? = nil,
      @footer : String? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @on_behalf_of : Stripe::PostInvoicesInvoiceRequestOnBehalfOf? = nil,
      @payment_settings : Stripe::PaymentSettings? = nil,
      @rendering_options : Stripe::PostInvoicesRequestRenderingOptions? = nil,
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
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_source", _default_source.to_s.size, MAX_LENGTH_FOR_DEFAULT_SOURCE)
          invalid_properties.push(max_length_error)
        end
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

      unless (_footer = @footer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("footer", _footer.to_s.size, MAX_LENGTH_FOR_FOOTER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_on_behalf_of = @on_behalf_of).nil?
        invalid_properties.concat(_on_behalf_of.list_invalid_properties_for("on_behalf_of")) if _on_behalf_of.is_a?(OpenApi::Validatable)
      end
      unless (_payment_settings = @payment_settings).nil?
        invalid_properties.concat(_payment_settings.list_invalid_properties_for("payment_settings")) if _payment_settings.is_a?(OpenApi::Validatable)
      end
      unless (_rendering_options = @rendering_options).nil?
        invalid_properties.concat(_rendering_options.list_invalid_properties_for("rendering_options")) if _rendering_options.is_a?(OpenApi::Validatable)
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
        return false if _default_source.to_s.size > MAX_LENGTH_FOR_DEFAULT_SOURCE
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

      unless (_footer = @footer).nil?
        return false if _footer.to_s.size > MAX_LENGTH_FOR_FOOTER
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        return false if _on_behalf_of.is_a?(OpenApi::Validatable) && !_on_behalf_of.valid?
      end

      unless (_payment_settings = @payment_settings).nil?
        return false if _payment_settings.is_a?(OpenApi::Validatable) && !_payment_settings.valid?
      end

      unless (_rendering_options = @rendering_options).nil?
        return false if _rendering_options.is_a?(OpenApi::Validatable) && !_rendering_options.valid?
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
    def account_tax_ids=(account_tax_ids : Stripe::PostInvoicesRequestAccountTaxIds?)
      if account_tax_ids.nil?
        return @account_tax_ids = nil
      end
      _account_tax_ids = account_tax_ids.not_nil!
      _account_tax_ids.validate if _account_tax_ids.is_a?(OpenApi::Validatable)
      @account_tax_ids = _account_tax_ids
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
    # @param [Object] auto_advance Object to be assigned
    def auto_advance=(auto_advance : Bool?)
      if auto_advance.nil?
        return @auto_advance = nil
      end
      _auto_advance = auto_advance.not_nil!
      @auto_advance = _auto_advance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic_tax Object to be assigned
    def automatic_tax=(automatic_tax : Stripe::AutomaticTaxParam?)
      if automatic_tax.nil?
        return @automatic_tax = nil
      end
      _automatic_tax = automatic_tax.not_nil!
      _automatic_tax.validate if _automatic_tax.is_a?(OpenApi::Validatable)
      @automatic_tax = _automatic_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(collection_method : String?)
      if collection_method.nil?
        return @collection_method = nil
      end
      _collection_method = collection_method.not_nil!
      OpenApi::EnumValidator.validate("collection_method", _collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      @collection_method = _collection_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] custom_fields Object to be assigned
    def custom_fields=(custom_fields : Stripe::PostInvoicesInvoiceRequestCustomFields?)
      if custom_fields.nil?
        return @custom_fields = nil
      end
      _custom_fields = custom_fields.not_nil!
      _custom_fields.validate if _custom_fields.is_a?(OpenApi::Validatable)
      @custom_fields = _custom_fields
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] days_until_due Object to be assigned
    def days_until_due=(days_until_due : Int64?)
      if days_until_due.nil?
        return @days_until_due = nil
      end
      _days_until_due = days_until_due.not_nil!
      @days_until_due = _days_until_due
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_payment_method Object to be assigned
    def default_payment_method=(default_payment_method : String?)
      if default_payment_method.nil?
        return @default_payment_method = nil
      end
      _default_payment_method = default_payment_method.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_payment_method", _default_payment_method.to_s.size, MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD)
      @default_payment_method = _default_payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_source Object to be assigned
    def default_source=(default_source : String?)
      if default_source.nil?
        return @default_source = nil
      end
      _default_source = default_source.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_source", _default_source.to_s.size, MAX_LENGTH_FOR_DEFAULT_SOURCE)
      @default_source = _default_source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_tax_rates Object to be assigned
    def default_tax_rates=(default_tax_rates : Stripe::PostInvoicesInvoiceRequestDefaultTaxRates?)
      if default_tax_rates.nil?
        return @default_tax_rates = nil
      end
      _default_tax_rates = default_tax_rates.not_nil!
      _default_tax_rates.validate if _default_tax_rates.is_a?(OpenApi::Validatable)
      @default_tax_rates = _default_tax_rates
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(discounts : Stripe::PostInvoicesInvoiceRequestDiscounts?)
      if discounts.nil?
        return @discounts = nil
      end
      _discounts = discounts.not_nil!
      _discounts.validate if _discounts.is_a?(OpenApi::Validatable)
      @discounts = _discounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] due_date Object to be assigned
    def due_date=(due_date : Int64?)
      if due_date.nil?
        return @due_date = nil
      end
      _due_date = due_date.not_nil!
      @due_date = _due_date
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
    # @param [Object] footer Object to be assigned
    def footer=(footer : String?)
      if footer.nil?
        return @footer = nil
      end
      _footer = footer.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("footer", _footer.to_s.size, MAX_LENGTH_FOR_FOOTER)
      @footer = _footer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountsRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(on_behalf_of : Stripe::PostInvoicesInvoiceRequestOnBehalfOf?)
      if on_behalf_of.nil?
        return @on_behalf_of = nil
      end
      _on_behalf_of = on_behalf_of.not_nil!
      _on_behalf_of.validate if _on_behalf_of.is_a?(OpenApi::Validatable)
      @on_behalf_of = _on_behalf_of
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_settings Object to be assigned
    def payment_settings=(payment_settings : Stripe::PaymentSettings?)
      if payment_settings.nil?
        return @payment_settings = nil
      end
      _payment_settings = payment_settings.not_nil!
      _payment_settings.validate if _payment_settings.is_a?(OpenApi::Validatable)
      @payment_settings = _payment_settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rendering_options Object to be assigned
    def rendering_options=(rendering_options : Stripe::PostInvoicesRequestRenderingOptions?)
      if rendering_options.nil?
        return @rendering_options = nil
      end
      _rendering_options = rendering_options.not_nil!
      _rendering_options.validate if _rendering_options.is_a?(OpenApi::Validatable)
      @rendering_options = _rendering_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      @statement_descriptor = _statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::PostInvoicesInvoiceRequestTransferData?)
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
    def_equals_and_hash(@account_tax_ids, @application_fee_amount, @auto_advance, @automatic_tax, @collection_method, @custom_fields, @days_until_due, @default_payment_method, @default_source, @default_tax_rates, @description, @discounts, @due_date, @expand, @footer, @metadata, @on_behalf_of, @payment_settings, @rendering_options, @statement_descriptor, @transfer_data)
  end
end
