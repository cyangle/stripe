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
  class PostInvoicesInvoiceRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "account_tax_ids", type: PostInvoicesRequestAccountTaxIds?, presence: true, ignore_serialize: account_tax_ids.nil? && !account_tax_ids_present?)]
    property account_tax_ids : PostInvoicesRequestAccountTaxIds?

    @[JSON::Field(ignore: true)]
    property? account_tax_ids_present : Bool = false

    # A fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/billing/invoices/connect#collecting-fees).
    @[JSON::Field(key: "application_fee_amount", type: Int64?, presence: true, ignore_serialize: application_fee_amount.nil? && !application_fee_amount_present?)]
    property application_fee_amount : Int64?

    @[JSON::Field(ignore: true)]
    property? application_fee_amount_present : Bool = false

    # Controls whether Stripe will perform [automatic collection](https://stripe.com/docs/billing/invoices/workflow/#auto_advance) of the invoice.
    @[JSON::Field(key: "auto_advance", type: Bool?, presence: true, ignore_serialize: auto_advance.nil? && !auto_advance_present?)]
    property auto_advance : Bool?

    @[JSON::Field(ignore: true)]
    property? auto_advance_present : Bool = false

    @[JSON::Field(key: "automatic_tax", type: AutomaticTaxParam?, presence: true, ignore_serialize: automatic_tax.nil? && !automatic_tax_present?)]
    property automatic_tax : AutomaticTaxParam?

    @[JSON::Field(ignore: true)]
    property? automatic_tax_present : Bool = false

    # Either `charge_automatically` or `send_invoice`. This field can be updated only on `draft` invoices.
    @[JSON::Field(key: "collection_method", type: String?, presence: true, ignore_serialize: collection_method.nil? && !collection_method_present?)]
    getter collection_method : String?

    @[JSON::Field(ignore: true)]
    property? collection_method_present : Bool = false

    ENUM_VALIDATOR_FOR_COLLECTION_METHOD = EnumValidator.new("collection_method", "String", ["charge_automatically", "send_invoice"])

    @[JSON::Field(key: "custom_fields", type: PostInvoicesInvoiceRequestCustomFields?, presence: true, ignore_serialize: custom_fields.nil? && !custom_fields_present?)]
    property custom_fields : PostInvoicesInvoiceRequestCustomFields?

    @[JSON::Field(ignore: true)]
    property? custom_fields_present : Bool = false

    # The number of days from which the invoice is created until it is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
    @[JSON::Field(key: "days_until_due", type: Int64?, presence: true, ignore_serialize: days_until_due.nil? && !days_until_due_present?)]
    property days_until_due : Int64?

    @[JSON::Field(ignore: true)]
    property? days_until_due_present : Bool = false

    # ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
    @[JSON::Field(key: "default_payment_method", type: String?, presence: true, ignore_serialize: default_payment_method.nil? && !default_payment_method_present?)]
    getter default_payment_method : String?

    @[JSON::Field(ignore: true)]
    property? default_payment_method_present : Bool = false

    # ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
    @[JSON::Field(key: "default_source", type: String?, presence: true, ignore_serialize: default_source.nil? && !default_source_present?)]
    getter default_source : String?

    @[JSON::Field(ignore: true)]
    property? default_source_present : Bool = false

    @[JSON::Field(key: "default_tax_rates", type: PostInvoicesInvoiceRequestDefaultTaxRates?, presence: true, ignore_serialize: default_tax_rates.nil? && !default_tax_rates_present?)]
    property default_tax_rates : PostInvoicesInvoiceRequestDefaultTaxRates?

    @[JSON::Field(ignore: true)]
    property? default_tax_rates_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "discounts", type: PostInvoicesInvoiceRequestDiscounts?, presence: true, ignore_serialize: discounts.nil? && !discounts_present?)]
    property discounts : PostInvoicesInvoiceRequestDiscounts?

    @[JSON::Field(ignore: true)]
    property? discounts_present : Bool = false

    # The date on which payment for this invoice is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
    @[JSON::Field(key: "due_date", type: Int64?, presence: true, ignore_serialize: due_date.nil? && !due_date_present?)]
    property due_date : Int64?

    @[JSON::Field(ignore: true)]
    property? due_date_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Footer to be displayed on the invoice.
    @[JSON::Field(key: "footer", type: String?, presence: true, ignore_serialize: footer.nil? && !footer_present?)]
    getter footer : String?

    @[JSON::Field(ignore: true)]
    property? footer_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "on_behalf_of", type: PostInvoicesInvoiceRequestOnBehalfOf?, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    property on_behalf_of : PostInvoicesInvoiceRequestOnBehalfOf?

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    @[JSON::Field(key: "payment_settings", type: PaymentSettings1?, presence: true, ignore_serialize: payment_settings.nil? && !payment_settings_present?)]
    property payment_settings : PaymentSettings1?

    @[JSON::Field(ignore: true)]
    property? payment_settings_present : Bool = false

    # Extra information about a charge for the customer's credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default `statement_descriptor` will be set to the first subscription item's product's `statement_descriptor`.
    @[JSON::Field(key: "statement_descriptor", type: String?, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    @[JSON::Field(key: "transfer_data", type: PostInvoicesInvoiceRequestTransferData?, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    property transfer_data : PostInvoicesInvoiceRequestTransferData?

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_tax_ids : PostInvoicesRequestAccountTaxIds? = nil,
      @application_fee_amount : Int64? = nil,
      @auto_advance : Bool? = nil,
      @automatic_tax : AutomaticTaxParam? = nil,
      @collection_method : String? = nil,
      @custom_fields : PostInvoicesInvoiceRequestCustomFields? = nil,
      @days_until_due : Int64? = nil,
      @default_payment_method : String? = nil,
      @default_source : String? = nil,
      @default_tax_rates : PostInvoicesInvoiceRequestDefaultTaxRates? = nil,
      @description : String? = nil,
      @discounts : PostInvoicesInvoiceRequestDiscounts? = nil,
      @due_date : Int64? = nil,
      @expand : Array(String)? = nil,
      @footer : String? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @on_behalf_of : PostInvoicesInvoiceRequestOnBehalfOf? = nil,
      @payment_settings : PaymentSettings1? = nil,
      @statement_descriptor : String? = nil,
      @transfer_data : PostInvoicesInvoiceRequestTransferData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_COLLECTION_METHOD.error_message) unless ENUM_VALIDATOR_FOR_COLLECTION_METHOD.valid?(@collection_method)

      if !@default_payment_method.nil? && @default_payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@default_source.nil? && @default_source.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_source\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 1500
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 1500.")
      end

      if !@footer.nil? && @footer.to_s.size > 5000
        invalid_properties.push("invalid value for \"footer\", the character length must be smaller than or equal to 5000.")
      end

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
        invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_COLLECTION_METHOD.valid?(@collection_method)
      return false if !@default_payment_method.nil? && @default_payment_method.to_s.size > 5000
      return false if !@default_source.nil? && @default_source.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 1500
      return false if !@footer.nil? && @footer.to_s.size > 5000
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(collection_method)
      ENUM_VALIDATOR_FOR_COLLECTION_METHOD.valid!(collection_method)
      @collection_method = collection_method
    end

    # Custom attribute writer method with validation
    # @param [Object] default_payment_method Value to be assigned
    def default_payment_method=(default_payment_method)
      if !default_payment_method.nil? && default_payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @default_payment_method = default_payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] default_source Value to be assigned
    def default_source=(default_source)
      if !default_source.nil? && default_source.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_source\", the character length must be smaller than or equal to 5000.")
      end

      @default_source = default_source
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 1500
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 1500.")
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
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if !statement_descriptor.nil? && statement_descriptor.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor = statement_descriptor
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
    def_equals_and_hash(@account_tax_ids, @application_fee_amount, @auto_advance, @automatic_tax, @collection_method, @custom_fields, @days_until_due, @default_payment_method, @default_source, @default_tax_rates, @description, @discounts, @due_date, @expand, @footer, @metadata, @on_behalf_of, @payment_settings, @statement_descriptor, @transfer_data)
  end
end