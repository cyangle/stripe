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
  class PostCustomersCustomerRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::PostCustomersRequestAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::PostCustomersRequestAddress? = nil

    # An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
    @[JSON::Field(key: "balance", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter balance : Int64? = nil

    @[JSON::Field(key: "bank_account", type: Stripe::PostCustomersCustomerRequestBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_account : Stripe::PostCustomersCustomerRequestBankAccount? = nil

    @[JSON::Field(key: "card", type: Stripe::PostChargesRequestCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::PostChargesRequestCard? = nil

    @[JSON::Field(key: "cash_balance", type: Stripe::CashBalanceParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cash_balance : Stripe::CashBalanceParam? = nil

    @[JSON::Field(key: "coupon", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter coupon : String? = nil
    MAX_LENGTH_FOR_COUPON = 5000

    # ID of Alipay account to make the customer's new default for invoice payments.
    @[JSON::Field(key: "default_alipay_account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_alipay_account : String? = nil
    MAX_LENGTH_FOR_DEFAULT_ALIPAY_ACCOUNT = 500

    # ID of bank account to make the customer's new default for invoice payments.
    @[JSON::Field(key: "default_bank_account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_bank_account : String? = nil
    MAX_LENGTH_FOR_DEFAULT_BANK_ACCOUNT = 500

    # ID of card to make the customer's new default for invoice payments.
    @[JSON::Field(key: "default_card", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_card : String? = nil
    MAX_LENGTH_FOR_DEFAULT_CARD = 500

    # If you are using payment methods created via the PaymentMethods API, see the [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method) parameter.  Provide the ID of a payment source already attached to this customer to make it this customer's default payment source.  If you want to add a new payment source and make it the default, see the [source](https://stripe.com/docs/api/customers/update#update_customer-source) property.
    @[JSON::Field(key: "default_source", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_source : String? = nil
    MAX_LENGTH_FOR_DEFAULT_SOURCE = 500

    # An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil
    MAX_LENGTH_FOR_EMAIL = 512

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
    @[JSON::Field(key: "invoice_prefix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_prefix : String? = nil
    MAX_LENGTH_FOR_INVOICE_PREFIX = 5000

    @[JSON::Field(key: "invoice_settings", type: Stripe::CustomerParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_settings : Stripe::CustomerParam? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # The customer's full name or business name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 256

    # The sequence to be used on the customer's next invoice. Defaults to 1.
    @[JSON::Field(key: "next_invoice_sequence", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter next_invoice_sequence : Int64? = nil

    # The customer's phone number.
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil
    MAX_LENGTH_FOR_PHONE = 20

    # Customer's preferred languages, ordered by preference.
    @[JSON::Field(key: "preferred_locales", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter preferred_locales : Array(String)? = nil

    # The API ID of a promotion code to apply to the customer. The customer will have a discount applied on all recurring payments. Charges you create through the API will not have the discount.
    @[JSON::Field(key: "promotion_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter promotion_code : String? = nil
    MAX_LENGTH_FOR_PROMOTION_CODE = 5000

    @[JSON::Field(key: "shipping", type: Stripe::PostCustomersRequestShipping?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::PostCustomersRequestShipping? = nil

    @[JSON::Field(key: "source", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source : String? = nil
    MAX_LENGTH_FOR_SOURCE = 5000

    @[JSON::Field(key: "tax", type: Stripe::TaxParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax : Stripe::TaxParam? = nil

    # The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
    @[JSON::Field(key: "tax_exempt", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_exempt : String? = nil
    ERROR_MESSAGE_FOR_TAX_EXEMPT = "invalid value for \"tax_exempt\", must be one of [, exempt, none, reverse]."
    VALID_VALUES_FOR_TAX_EXEMPT  = StaticArray["", "exempt", "none", "reverse"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::PostCustomersRequestAddress? = nil,
      @balance : Int64? = nil,
      @bank_account : Stripe::PostCustomersCustomerRequestBankAccount? = nil,
      @card : Stripe::PostChargesRequestCard? = nil,
      @cash_balance : Stripe::CashBalanceParam? = nil,
      @coupon : String? = nil,
      @default_alipay_account : String? = nil,
      @default_bank_account : String? = nil,
      @default_card : String? = nil,
      @default_source : String? = nil,
      @description : String? = nil,
      @email : String? = nil,
      @expand : Array(String)? = nil,
      @invoice_prefix : String? = nil,
      @invoice_settings : Stripe::CustomerParam? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @name : String? = nil,
      @next_invoice_sequence : Int64? = nil,
      @phone : String? = nil,
      @preferred_locales : Array(String)? = nil,
      @promotion_code : String? = nil,
      @shipping : Stripe::PostCustomersRequestShipping? = nil,
      @source : String? = nil,
      @tax : Stripe::TaxParam? = nil,
      @tax_exempt : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _address = @address
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end

      if _bank_account = @bank_account
        invalid_properties.concat(_bank_account.list_invalid_properties_for("bank_account")) if _bank_account.is_a?(OpenApi::Validatable)
      end
      if _card = @card
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end
      if _cash_balance = @cash_balance
        invalid_properties.concat(_cash_balance.list_invalid_properties_for("cash_balance")) if _cash_balance.is_a?(OpenApi::Validatable)
      end
      if _coupon = @coupon
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("coupon", _coupon.to_s.size, MAX_LENGTH_FOR_COUPON)
          invalid_properties.push(max_length_error)
        end
      end
      if _default_alipay_account = @default_alipay_account
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_alipay_account", _default_alipay_account.to_s.size, MAX_LENGTH_FOR_DEFAULT_ALIPAY_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      if _default_bank_account = @default_bank_account
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_bank_account", _default_bank_account.to_s.size, MAX_LENGTH_FOR_DEFAULT_BANK_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      if _default_card = @default_card
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_card", _default_card.to_s.size, MAX_LENGTH_FOR_DEFAULT_CARD)
          invalid_properties.push(max_length_error)
        end
      end
      if _default_source = @default_source
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_source", _default_source.to_s.size, MAX_LENGTH_FOR_DEFAULT_SOURCE)
          invalid_properties.push(max_length_error)
        end
      end
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      if _email = @email
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, MAX_LENGTH_FOR_EMAIL)
          invalid_properties.push(max_length_error)
        end
      end

      if _invoice_prefix = @invoice_prefix
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice_prefix", _invoice_prefix.to_s.size, MAX_LENGTH_FOR_INVOICE_PREFIX)
          invalid_properties.push(max_length_error)
        end
      end
      if _invoice_settings = @invoice_settings
        invalid_properties.concat(_invoice_settings.list_invalid_properties_for("invoice_settings")) if _invoice_settings.is_a?(OpenApi::Validatable)
      end
      if _metadata = @metadata
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end

      if _phone = @phone
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
          invalid_properties.push(max_length_error)
        end
      end

      if _promotion_code = @promotion_code
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("promotion_code", _promotion_code.to_s.size, MAX_LENGTH_FOR_PROMOTION_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      if _shipping = @shipping
        invalid_properties.concat(_shipping.list_invalid_properties_for("shipping")) if _shipping.is_a?(OpenApi::Validatable)
      end
      if _source = @source
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source", _source.to_s.size, MAX_LENGTH_FOR_SOURCE)
          invalid_properties.push(max_length_error)
        end
      end
      if _tax = @tax
        invalid_properties.concat(_tax.list_invalid_properties_for("tax")) if _tax.is_a?(OpenApi::Validatable)
      end
      if _tax_exempt = @tax_exempt
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_EXEMPT) unless OpenApi::EnumValidator.valid?(_tax_exempt, VALID_VALUES_FOR_TAX_EXEMPT)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _address = @address
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      if _bank_account = @bank_account
        return false if _bank_account.is_a?(OpenApi::Validatable) && !_bank_account.valid?
      end

      if _card = @card
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      if _cash_balance = @cash_balance
        return false if _cash_balance.is_a?(OpenApi::Validatable) && !_cash_balance.valid?
      end

      if _coupon = @coupon
        return false if _coupon.to_s.size > MAX_LENGTH_FOR_COUPON
      end

      if _default_alipay_account = @default_alipay_account
        return false if _default_alipay_account.to_s.size > MAX_LENGTH_FOR_DEFAULT_ALIPAY_ACCOUNT
      end

      if _default_bank_account = @default_bank_account
        return false if _default_bank_account.to_s.size > MAX_LENGTH_FOR_DEFAULT_BANK_ACCOUNT
      end

      if _default_card = @default_card
        return false if _default_card.to_s.size > MAX_LENGTH_FOR_DEFAULT_CARD
      end

      if _default_source = @default_source
        return false if _default_source.to_s.size > MAX_LENGTH_FOR_DEFAULT_SOURCE
      end

      if _description = @description
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      if _email = @email
        return false if _email.to_s.size > MAX_LENGTH_FOR_EMAIL
      end

      if _invoice_prefix = @invoice_prefix
        return false if _invoice_prefix.to_s.size > MAX_LENGTH_FOR_INVOICE_PREFIX
      end

      if _invoice_settings = @invoice_settings
        return false if _invoice_settings.is_a?(OpenApi::Validatable) && !_invoice_settings.valid?
      end

      if _metadata = @metadata
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      if _name = @name
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      if _phone = @phone
        return false if _phone.to_s.size > MAX_LENGTH_FOR_PHONE
      end

      if _promotion_code = @promotion_code
        return false if _promotion_code.to_s.size > MAX_LENGTH_FOR_PROMOTION_CODE
      end

      if _shipping = @shipping
        return false if _shipping.is_a?(OpenApi::Validatable) && !_shipping.valid?
      end

      if _source = @source
        return false if _source.to_s.size > MAX_LENGTH_FOR_SOURCE
      end

      if _tax = @tax
        return false if _tax.is_a?(OpenApi::Validatable) && !_tax.valid?
      end

      if _tax_exempt = @tax_exempt
        return false unless OpenApi::EnumValidator.valid?(_tax_exempt, VALID_VALUES_FOR_TAX_EXEMPT)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::PostCustomersRequestAddress?)
      if address.nil?
        return @address = nil
      end
      _address = address.not_nil!
      _address.validate if _address.is_a?(OpenApi::Validatable)
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
    # @param [Object] bank_account Object to be assigned
    def bank_account=(bank_account : Stripe::PostCustomersCustomerRequestBankAccount?)
      if bank_account.nil?
        return @bank_account = nil
      end
      _bank_account = bank_account.not_nil!
      _bank_account.validate if _bank_account.is_a?(OpenApi::Validatable)
      @bank_account = _bank_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : Stripe::PostChargesRequestCard?)
      if card.nil?
        return @card = nil
      end
      _card = card.not_nil!
      _card.validate if _card.is_a?(OpenApi::Validatable)
      @card = _card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cash_balance Object to be assigned
    def cash_balance=(cash_balance : Stripe::CashBalanceParam?)
      if cash_balance.nil?
        return @cash_balance = nil
      end
      _cash_balance = cash_balance.not_nil!
      _cash_balance.validate if _cash_balance.is_a?(OpenApi::Validatable)
      @cash_balance = _cash_balance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon Object to be assigned
    def coupon=(coupon : String?)
      if coupon.nil?
        return @coupon = nil
      end
      _coupon = coupon.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("coupon", _coupon.to_s.size, MAX_LENGTH_FOR_COUPON)
      @coupon = _coupon
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_alipay_account Object to be assigned
    def default_alipay_account=(default_alipay_account : String?)
      if default_alipay_account.nil?
        return @default_alipay_account = nil
      end
      _default_alipay_account = default_alipay_account.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_alipay_account", _default_alipay_account.to_s.size, MAX_LENGTH_FOR_DEFAULT_ALIPAY_ACCOUNT)
      @default_alipay_account = _default_alipay_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_bank_account Object to be assigned
    def default_bank_account=(default_bank_account : String?)
      if default_bank_account.nil?
        return @default_bank_account = nil
      end
      _default_bank_account = default_bank_account.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_bank_account", _default_bank_account.to_s.size, MAX_LENGTH_FOR_DEFAULT_BANK_ACCOUNT)
      @default_bank_account = _default_bank_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_card Object to be assigned
    def default_card=(default_card : String?)
      if default_card.nil?
        return @default_card = nil
      end
      _default_card = default_card.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_card", _default_card.to_s.size, MAX_LENGTH_FOR_DEFAULT_CARD)
      @default_card = _default_card
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
    # @param [Object] email Object to be assigned
    def email=(email : String?)
      if email.nil?
        return @email = nil
      end
      _email = email.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("email", _email.to_s.size, MAX_LENGTH_FOR_EMAIL)
      @email = _email
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
    # @param [Object] invoice_prefix Object to be assigned
    def invoice_prefix=(invoice_prefix : String?)
      if invoice_prefix.nil?
        return @invoice_prefix = nil
      end
      _invoice_prefix = invoice_prefix.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("invoice_prefix", _invoice_prefix.to_s.size, MAX_LENGTH_FOR_INVOICE_PREFIX)
      @invoice_prefix = _invoice_prefix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_settings Object to be assigned
    def invoice_settings=(invoice_settings : Stripe::CustomerParam?)
      if invoice_settings.nil?
        return @invoice_settings = nil
      end
      _invoice_settings = invoice_settings.not_nil!
      _invoice_settings.validate if _invoice_settings.is_a?(OpenApi::Validatable)
      @invoice_settings = _invoice_settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
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
      OpenApi::PrimitiveValidator.validate_max_length("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
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
    # @param [Object] promotion_code Object to be assigned
    def promotion_code=(promotion_code : String?)
      if promotion_code.nil?
        return @promotion_code = nil
      end
      _promotion_code = promotion_code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("promotion_code", _promotion_code.to_s.size, MAX_LENGTH_FOR_PROMOTION_CODE)
      @promotion_code = _promotion_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::PostCustomersRequestShipping?)
      if shipping.nil?
        return @shipping = nil
      end
      _shipping = shipping.not_nil!
      _shipping.validate if _shipping.is_a?(OpenApi::Validatable)
      @shipping = _shipping
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source : String?)
      if source.nil?
        return @source = nil
      end
      _source = source.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("source", _source.to_s.size, MAX_LENGTH_FOR_SOURCE)
      @source = _source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax Object to be assigned
    def tax=(tax : Stripe::TaxParam?)
      if tax.nil?
        return @tax = nil
      end
      _tax = tax.not_nil!
      _tax.validate if _tax.is_a?(OpenApi::Validatable)
      @tax = _tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_exempt Object to be assigned
    def tax_exempt=(tax_exempt : String?)
      if tax_exempt.nil?
        return @tax_exempt = nil
      end
      _tax_exempt = tax_exempt.not_nil!
      OpenApi::EnumValidator.validate("tax_exempt", _tax_exempt, VALID_VALUES_FOR_TAX_EXEMPT)
      @tax_exempt = _tax_exempt
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @balance, @bank_account, @card, @cash_balance, @coupon, @default_alipay_account, @default_bank_account, @default_card, @default_source, @description, @email, @expand, @invoice_prefix, @invoice_settings, @metadata, @name, @next_invoice_sequence, @phone, @preferred_locales, @promotion_code, @shipping, @source, @tax, @tax_exempt)
  end
end
