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
  # This object represents a customer of your business. It lets you create recurring charges and track payments that belong to the same customer.  Related guide: [Save a card during payment](https://stripe.com/docs/payments/save-during-payment).
  class Customer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["customer"])

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::CustomerAddress?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address.nil? && !address_present?)]
    getter address : Stripe::CustomerAddress? = nil

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    # Current balance, if any, being stored on the customer. If negative, the customer has credit to apply to their next invoice. If positive, the customer has an amount owed that will be added to their next invoice. The balance does not refer to any unpaid invoices; it solely takes into account amounts that have yet to be successfully applied to any invoice. This balance is only taken into account as invoices are finalized.
    @[JSON::Field(key: "balance", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter balance : Int64? = nil

    @[JSON::Field(key: "cash_balance", type: Stripe::CustomerCashBalance?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cash_balance.nil? && !cash_balance_present?)]
    getter cash_balance : Stripe::CustomerCashBalance? = nil

    @[JSON::Field(ignore: true)]
    property? cash_balance_present : Bool = false

    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) the customer can be charged in for recurring billing purposes.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    getter currency : String? = nil

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    @[JSON::Field(key: "default_source", type: Stripe::CustomerDefaultSource?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: default_source.nil? && !default_source_present?)]
    getter default_source : Stripe::CustomerDefaultSource? = nil

    @[JSON::Field(ignore: true)]
    property? default_source_present : Bool = false

    # When the customer's latest invoice is billed by charging automatically, `delinquent` is `true` if the invoice's latest charge failed. When the customer's latest invoice is billed by sending an invoice, `delinquent` is `true` if the invoice isn't paid by its due date.  If an invoice is marked uncollectible by [dunning](https://stripe.com/docs/billing/automatic-collection), `delinquent` doesn't get reset to `false`.
    @[JSON::Field(key: "delinquent", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: delinquent.nil? && !delinquent_present?)]
    getter delinquent : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? delinquent_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "discount", type: Stripe::CustomerDiscount?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: discount.nil? && !discount_present?)]
    getter discount : Stripe::CustomerDiscount? = nil

    @[JSON::Field(ignore: true)]
    property? discount_present : Bool = false

    # The customer's email address.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String? = nil

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # The current multi-currency balances, if any, being stored on the customer.If positive in a currency, the customer has a credit to apply to their next invoice denominated in that currency.If negative, the customer has an amount owed that will be added to their next invoice denominated in that currency. These balances do not refer to any unpaid invoices.They solely track amounts that have yet to be successfully applied to any invoice. A balance in a particular currency is only applied to any invoice as an invoice in that currency is finalized.
    @[JSON::Field(key: "invoice_credit_balance", type: Hash(String, Int64)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_credit_balance : Hash(String, Int64)? = nil

    # The prefix for the customer used to generate unique invoice numbers.
    @[JSON::Field(key: "invoice_prefix", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: invoice_prefix.nil? && !invoice_prefix_present?)]
    getter invoice_prefix : String? = nil

    @[JSON::Field(ignore: true)]
    property? invoice_prefix_present : Bool = false

    @[JSON::Field(key: "invoice_settings", type: Stripe::InvoiceSettingCustomerSetting?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_settings : Stripe::InvoiceSettingCustomerSetting? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The customer's full name or business name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # The suffix of the customer's next invoice number, e.g., 0001.
    @[JSON::Field(key: "next_invoice_sequence", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter next_invoice_sequence : Int64? = nil

    # The customer's phone number.
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String? = nil

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # The customer's preferred locales (languages), ordered by preference.
    @[JSON::Field(key: "preferred_locales", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preferred_locales.nil? && !preferred_locales_present?)]
    getter preferred_locales : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? preferred_locales_present : Bool = false

    @[JSON::Field(key: "shipping", type: Stripe::CustomerShipping1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: shipping.nil? && !shipping_present?)]
    getter shipping : Stripe::CustomerShipping1? = nil

    @[JSON::Field(ignore: true)]
    property? shipping_present : Bool = false

    @[JSON::Field(key: "sources", type: Stripe::ApmsSourcesSourceList1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sources : Stripe::ApmsSourcesSourceList1? = nil

    @[JSON::Field(key: "subscriptions", type: Stripe::SubscriptionList1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscriptions : Stripe::SubscriptionList1? = nil

    @[JSON::Field(key: "tax", type: Stripe::CustomerTax?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax : Stripe::CustomerTax? = nil

    # Describes the customer's tax exemption status. One of `none`, `exempt`, or `reverse`. When set to `reverse`, invoice and receipt PDFs include the text **\"Reverse charge\"**.
    @[JSON::Field(key: "tax_exempt", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tax_exempt.nil? && !tax_exempt_present?)]
    getter tax_exempt : String? = nil

    @[JSON::Field(ignore: true)]
    property? tax_exempt_present : Bool = false

    ENUM_VALIDATOR_FOR_TAX_EXEMPT = EnumValidator.new("tax_exempt", "String", ["exempt", "none", "reverse"])

    @[JSON::Field(key: "tax_ids", type: Stripe::TaxIDsList1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_ids : Stripe::TaxIDsList1? = nil

    @[JSON::Field(key: "test_clock", type: Stripe::CustomerTestClock?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: test_clock.nil? && !test_clock_present?)]
    getter test_clock : Stripe::CustomerTestClock? = nil

    @[JSON::Field(ignore: true)]
    property? test_clock_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      # Optional properties
      @address : Stripe::CustomerAddress? = nil,
      @balance : Int64? = nil,
      @cash_balance : Stripe::CustomerCashBalance? = nil,
      @currency : String? = nil,
      @default_source : Stripe::CustomerDefaultSource? = nil,
      @delinquent : Bool? = nil,
      @description : String? = nil,
      @discount : Stripe::CustomerDiscount? = nil,
      @email : String? = nil,
      @invoice_credit_balance : Hash(String, Int64)? = nil,
      @invoice_prefix : String? = nil,
      @invoice_settings : Stripe::InvoiceSettingCustomerSetting? = nil,
      @metadata : Hash(String, String)? = nil,
      @name : String? = nil,
      @next_invoice_sequence : Int64? = nil,
      @phone : String? = nil,
      @preferred_locales : Array(String)? = nil,
      @shipping : Stripe::CustomerShipping1? = nil,
      @sources : Stripe::ApmsSourcesSourceList1? = nil,
      @subscriptions : Stripe::SubscriptionList1? = nil,
      @tax : Stripe::CustomerTax? = nil,
      @tax_exempt : String? = nil,
      @tax_ids : Stripe::TaxIDsList1? = nil,
      @test_clock : Stripe::CustomerTestClock? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      if _address = @address
        if _address.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_address.list_invalid_properties_for("address"))
        end
      end

      if _cash_balance = @cash_balance
        if _cash_balance.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_cash_balance.list_invalid_properties_for("cash_balance"))
        end
      end
      if _currency = @currency
        if _currency.to_s.size > 5000
          invalid_properties.push("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _default_source = @default_source
        if _default_source.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_default_source.list_invalid_properties_for("default_source"))
        end
      end

      if _description = @description
        if _description.to_s.size > 5000
          invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _discount = @discount
        if _discount.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_discount.list_invalid_properties_for("discount"))
        end
      end
      if _email = @email
        if _email.to_s.size > 5000
          invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
        end
      end

      if _invoice_prefix = @invoice_prefix
        if _invoice_prefix.to_s.size > 5000
          invalid_properties.push("invalid value for \"invoice_prefix\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _invoice_settings = @invoice_settings
        if _invoice_settings.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_invoice_settings.list_invalid_properties_for("invoice_settings"))
        end
      end

      if _name = @name
        if _name.to_s.size > 5000
          invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
        end
      end

      if _phone = @phone
        if _phone.to_s.size > 5000
          invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
        end
      end

      if _shipping = @shipping
        if _shipping.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_shipping.list_invalid_properties_for("shipping"))
        end
      end
      if _sources = @sources
        if _sources.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_sources.list_invalid_properties_for("sources"))
        end
      end
      if _subscriptions = @subscriptions
        if _subscriptions.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_subscriptions.list_invalid_properties_for("subscriptions"))
        end
      end
      if _tax = @tax
        if _tax.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_tax.list_invalid_properties_for("tax"))
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_TAX_EXEMPT.error_message) unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt)
      if _tax_ids = @tax_ids
        if _tax_ids.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_tax_ids.list_invalid_properties_for("tax_ids"))
        end
      end
      if _test_clock = @test_clock
        if _test_clock.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_test_clock.list_invalid_properties_for("test_clock"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      if _address = @address
        if _address.is_a?(OpenApi::Validatable)
          return false unless _address.valid?
        end
      end

      if _cash_balance = @cash_balance
        if _cash_balance.is_a?(OpenApi::Validatable)
          return false unless _cash_balance.valid?
        end
      end
      if _currency = @currency
        return false if _currency.to_s.size > 5000
      end
      if _default_source = @default_source
        if _default_source.is_a?(OpenApi::Validatable)
          return false unless _default_source.valid?
        end
      end

      if _description = @description
        return false if _description.to_s.size > 5000
      end
      if _discount = @discount
        if _discount.is_a?(OpenApi::Validatable)
          return false unless _discount.valid?
        end
      end
      if _email = @email
        return false if _email.to_s.size > 5000
      end

      if _invoice_prefix = @invoice_prefix
        return false if _invoice_prefix.to_s.size > 5000
      end
      if _invoice_settings = @invoice_settings
        if _invoice_settings.is_a?(OpenApi::Validatable)
          return false unless _invoice_settings.valid?
        end
      end

      if _name = @name
        return false if _name.to_s.size > 5000
      end

      if _phone = @phone
        return false if _phone.to_s.size > 5000
      end

      if _shipping = @shipping
        if _shipping.is_a?(OpenApi::Validatable)
          return false unless _shipping.valid?
        end
      end
      if _sources = @sources
        if _sources.is_a?(OpenApi::Validatable)
          return false unless _sources.valid?
        end
      end
      if _subscriptions = @subscriptions
        if _subscriptions.is_a?(OpenApi::Validatable)
          return false unless _subscriptions.valid?
        end
      end
      if _tax = @tax
        if _tax.is_a?(OpenApi::Validatable)
          return false unless _tax.valid?
        end
      end
      return false unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt)
      if _tax_ids = @tax_ids
        if _tax_ids.is_a?(OpenApi::Validatable)
          return false unless _tax_ids.valid?
        end
      end
      if _test_clock = @test_clock
        if _test_clock.is_a?(OpenApi::Validatable)
          return false unless _test_clock.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::CustomerAddress?)
      if address.nil?
        return @address = nil
      end
      _address = address.not_nil!
      if _address.is_a?(OpenApi::Validatable)
        _address.validate
      end
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance Object to be assigned
    def balance=(balance : Int64?)
      if balance.nil?
        return @balance = nil
      end
      _balance = balance.not_nil!
      @balance = _balance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cash_balance Object to be assigned
    def cash_balance=(cash_balance : Stripe::CustomerCashBalance?)
      if cash_balance.nil?
        return @cash_balance = nil
      end
      _cash_balance = cash_balance.not_nil!
      if _cash_balance.is_a?(OpenApi::Validatable)
        _cash_balance.validate
      end
      @cash_balance = _cash_balance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        return @currency = nil
      end
      _currency = currency.not_nil!
      if _currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_source Object to be assigned
    def default_source=(default_source : Stripe::CustomerDefaultSource?)
      if default_source.nil?
        return @default_source = nil
      end
      _default_source = default_source.not_nil!
      if _default_source.is_a?(OpenApi::Validatable)
        _default_source.validate
      end
      @default_source = _default_source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delinquent Object to be assigned
    def delinquent=(delinquent : Bool?)
      if delinquent.nil?
        return @delinquent = nil
      end
      _delinquent = delinquent.not_nil!
      @delinquent = _delinquent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if _description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discount Object to be assigned
    def discount=(discount : Stripe::CustomerDiscount?)
      if discount.nil?
        return @discount = nil
      end
      _discount = discount.not_nil!
      if _discount.is_a?(OpenApi::Validatable)
        _discount.validate
      end
      @discount = _discount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(email : String?)
      if email.nil?
        return @email = nil
      end
      _email = email.not_nil!
      if _email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      @email = _email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_credit_balance Object to be assigned
    def invoice_credit_balance=(invoice_credit_balance : Hash(String, Int64)?)
      if invoice_credit_balance.nil?
        return @invoice_credit_balance = nil
      end
      _invoice_credit_balance = invoice_credit_balance.not_nil!
      @invoice_credit_balance = _invoice_credit_balance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_prefix Object to be assigned
    def invoice_prefix=(invoice_prefix : String?)
      if invoice_prefix.nil?
        return @invoice_prefix = nil
      end
      _invoice_prefix = invoice_prefix.not_nil!
      if _invoice_prefix.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"invoice_prefix\", the character length must be smaller than or equal to 5000.")
      end

      @invoice_prefix = _invoice_prefix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_settings Object to be assigned
    def invoice_settings=(invoice_settings : Stripe::InvoiceSettingCustomerSetting?)
      if invoice_settings.nil?
        return @invoice_settings = nil
      end
      _invoice_settings = invoice_settings.not_nil!
      if _invoice_settings.is_a?(OpenApi::Validatable)
        _invoice_settings.validate
      end
      @invoice_settings = _invoice_settings
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
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      if _name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] next_invoice_sequence Object to be assigned
    def next_invoice_sequence=(next_invoice_sequence : Int64?)
      if next_invoice_sequence.nil?
        return @next_invoice_sequence = nil
      end
      _next_invoice_sequence = next_invoice_sequence.not_nil!
      @next_invoice_sequence = _next_invoice_sequence
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      _phone = phone.not_nil!
      if _phone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      @phone = _phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_locales Object to be assigned
    def preferred_locales=(preferred_locales : Array(String)?)
      if preferred_locales.nil?
        return @preferred_locales = nil
      end
      _preferred_locales = preferred_locales.not_nil!
      @preferred_locales = _preferred_locales
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::CustomerShipping1?)
      if shipping.nil?
        return @shipping = nil
      end
      _shipping = shipping.not_nil!
      if _shipping.is_a?(OpenApi::Validatable)
        _shipping.validate
      end
      @shipping = _shipping
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sources Object to be assigned
    def sources=(sources : Stripe::ApmsSourcesSourceList1?)
      if sources.nil?
        return @sources = nil
      end
      _sources = sources.not_nil!
      if _sources.is_a?(OpenApi::Validatable)
        _sources.validate
      end
      @sources = _sources
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscriptions Object to be assigned
    def subscriptions=(subscriptions : Stripe::SubscriptionList1?)
      if subscriptions.nil?
        return @subscriptions = nil
      end
      _subscriptions = subscriptions.not_nil!
      if _subscriptions.is_a?(OpenApi::Validatable)
        _subscriptions.validate
      end
      @subscriptions = _subscriptions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax Object to be assigned
    def tax=(tax : Stripe::CustomerTax?)
      if tax.nil?
        return @tax = nil
      end
      _tax = tax.not_nil!
      if _tax.is_a?(OpenApi::Validatable)
        _tax.validate
      end
      @tax = _tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_exempt Object to be assigned
    def tax_exempt=(tax_exempt : String?)
      if tax_exempt.nil?
        return @tax_exempt = nil
      end
      _tax_exempt = tax_exempt.not_nil!
      ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid!(_tax_exempt)
      @tax_exempt = _tax_exempt
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_ids Object to be assigned
    def tax_ids=(tax_ids : Stripe::TaxIDsList1?)
      if tax_ids.nil?
        return @tax_ids = nil
      end
      _tax_ids = tax_ids.not_nil!
      if _tax_ids.is_a?(OpenApi::Validatable)
        _tax_ids.validate
      end
      @tax_ids = _tax_ids
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] test_clock Object to be assigned
    def test_clock=(test_clock : Stripe::CustomerTestClock?)
      if test_clock.nil?
        return @test_clock = nil
      end
      _test_clock = test_clock.not_nil!
      if _test_clock.is_a?(OpenApi::Validatable)
        _test_clock.validate
      end
      @test_clock = _test_clock
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @id, @livemode, @object, @address, @address_present, @balance, @cash_balance, @cash_balance_present, @currency, @currency_present, @default_source, @default_source_present, @delinquent, @delinquent_present, @description, @description_present, @discount, @discount_present, @email, @email_present, @invoice_credit_balance, @invoice_prefix, @invoice_prefix_present, @invoice_settings, @metadata, @name, @name_present, @next_invoice_sequence, @phone, @phone_present, @preferred_locales, @preferred_locales_present, @shipping, @shipping_present, @sources, @subscriptions, @tax, @tax_exempt, @tax_exempt_present, @tax_ids, @test_clock, @test_clock_present)
  end
end
