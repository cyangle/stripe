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
  class PostCustomersRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "address", type: PostCustomersRequestAddress?, presence: true, ignore_serialize: address.nil? && !address_present?)]
    property address : PostCustomersRequestAddress?

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    # An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
    @[JSON::Field(key: "balance", type: Int64?, presence: true, ignore_serialize: balance.nil? && !balance_present?)]
    property balance : Int64?

    @[JSON::Field(ignore: true)]
    property? balance_present : Bool = false

    @[JSON::Field(key: "cash_balance", type: CashBalanceParam?, presence: true, ignore_serialize: cash_balance.nil? && !cash_balance_present?)]
    property cash_balance : CashBalanceParam?

    @[JSON::Field(ignore: true)]
    property? cash_balance_present : Bool = false

    @[JSON::Field(key: "coupon", type: String?, presence: true, ignore_serialize: coupon.nil? && !coupon_present?)]
    getter coupon : String?

    @[JSON::Field(ignore: true)]
    property? coupon_present : Bool = false

    # An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
    @[JSON::Field(key: "invoice_prefix", type: String?, presence: true, ignore_serialize: invoice_prefix.nil? && !invoice_prefix_present?)]
    getter invoice_prefix : String?

    @[JSON::Field(ignore: true)]
    property? invoice_prefix_present : Bool = false

    @[JSON::Field(key: "invoice_settings", type: CustomerParam?, presence: true, ignore_serialize: invoice_settings.nil? && !invoice_settings_present?)]
    property invoice_settings : CustomerParam?

    @[JSON::Field(ignore: true)]
    property? invoice_settings_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The customer's full name or business name.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # The sequence to be used on the customer's next invoice. Defaults to 1.
    @[JSON::Field(key: "next_invoice_sequence", type: Int64?, presence: true, ignore_serialize: next_invoice_sequence.nil? && !next_invoice_sequence_present?)]
    property next_invoice_sequence : Int64?

    @[JSON::Field(ignore: true)]
    property? next_invoice_sequence_present : Bool = false

    @[JSON::Field(key: "payment_method", type: String?, presence: true, ignore_serialize: payment_method.nil? && !payment_method_present?)]
    getter payment_method : String?

    @[JSON::Field(ignore: true)]
    property? payment_method_present : Bool = false

    # The customer's phone number.
    @[JSON::Field(key: "phone", type: String?, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String?

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # Customer's preferred languages, ordered by preference.
    @[JSON::Field(key: "preferred_locales", type: Array(String)?, presence: true, ignore_serialize: preferred_locales.nil? && !preferred_locales_present?)]
    property preferred_locales : Array(String)?

    @[JSON::Field(ignore: true)]
    property? preferred_locales_present : Bool = false

    # The API ID of a promotion code to apply to the customer. The customer will have a discount applied on all recurring payments. Charges you create through the API will not have the discount.
    @[JSON::Field(key: "promotion_code", type: String?, presence: true, ignore_serialize: promotion_code.nil? && !promotion_code_present?)]
    getter promotion_code : String?

    @[JSON::Field(ignore: true)]
    property? promotion_code_present : Bool = false

    @[JSON::Field(key: "shipping", type: PostCustomersRequestShipping?, presence: true, ignore_serialize: shipping.nil? && !shipping_present?)]
    property shipping : PostCustomersRequestShipping?

    @[JSON::Field(ignore: true)]
    property? shipping_present : Bool = false

    @[JSON::Field(key: "source", type: String?, presence: true, ignore_serialize: source.nil? && !source_present?)]
    getter source : String?

    @[JSON::Field(ignore: true)]
    property? source_present : Bool = false

    @[JSON::Field(key: "tax", type: TaxParam?, presence: true, ignore_serialize: tax.nil? && !tax_present?)]
    property tax : TaxParam?

    @[JSON::Field(ignore: true)]
    property? tax_present : Bool = false

    # The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
    @[JSON::Field(key: "tax_exempt", type: String?, presence: true, ignore_serialize: tax_exempt.nil? && !tax_exempt_present?)]
    getter tax_exempt : String?

    @[JSON::Field(ignore: true)]
    property? tax_exempt_present : Bool = false

    ENUM_VALIDATOR_FOR_TAX_EXEMPT = EnumValidator.new("tax_exempt", "String", ["", "exempt", "none", "reverse"])

    # The customer's tax IDs.
    @[JSON::Field(key: "tax_id_data", type: Array(DataParams)?, presence: true, ignore_serialize: tax_id_data.nil? && !tax_id_data_present?)]
    property tax_id_data : Array(DataParams)?

    @[JSON::Field(ignore: true)]
    property? tax_id_data_present : Bool = false

    # ID of the test clock to attach to the customer.
    @[JSON::Field(key: "test_clock", type: String?, presence: true, ignore_serialize: test_clock.nil? && !test_clock_present?)]
    getter test_clock : String?

    @[JSON::Field(ignore: true)]
    property? test_clock_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : PostCustomersRequestAddress? = nil,
      @balance : Int64? = nil,
      @cash_balance : CashBalanceParam? = nil,
      @coupon : String? = nil,
      @description : String? = nil,
      @email : String? = nil,
      @expand : Array(String)? = nil,
      @invoice_prefix : String? = nil,
      @invoice_settings : CustomerParam? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @name : String? = nil,
      @next_invoice_sequence : Int64? = nil,
      @payment_method : String? = nil,
      @phone : String? = nil,
      @preferred_locales : Array(String)? = nil,
      @promotion_code : String? = nil,
      @shipping : PostCustomersRequestShipping? = nil,
      @source : String? = nil,
      @tax : TaxParam? = nil,
      @tax_exempt : String? = nil,
      @tax_id_data : Array(DataParams)? = nil,
      @test_clock : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@coupon.nil? && @coupon.to_s.size > 5000
        invalid_properties.push("invalid value for \"coupon\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@email.nil? && @email.to_s.size > 512
        invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 512.")
      end

      if !@invoice_prefix.nil? && @invoice_prefix.to_s.size > 5000
        invalid_properties.push("invalid value for \"invoice_prefix\", the character length must be smaller than or equal to 5000.")
      end

      if !@name.nil? && @name.to_s.size > 256
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 256.")
      end

      if !@payment_method.nil? && @payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@phone.nil? && @phone.to_s.size > 20
        invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 20.")
      end

      if !@promotion_code.nil? && @promotion_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"promotion_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@source.nil? && @source.to_s.size > 5000
        invalid_properties.push("invalid value for \"source\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_TAX_EXEMPT.error_message) unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt)

      if !@test_clock.nil? && @test_clock.to_s.size > 5000
        invalid_properties.push("invalid value for \"test_clock\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@coupon.nil? && @coupon.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@email.nil? && @email.to_s.size > 512
      return false if !@invoice_prefix.nil? && @invoice_prefix.to_s.size > 5000
      return false if !@name.nil? && @name.to_s.size > 256
      return false if !@payment_method.nil? && @payment_method.to_s.size > 5000
      return false if !@phone.nil? && @phone.to_s.size > 20
      return false if !@promotion_code.nil? && @promotion_code.to_s.size > 5000
      return false if !@source.nil? && @source.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt)
      return false if !@test_clock.nil? && @test_clock.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] coupon Value to be assigned
    def coupon=(coupon : String?)
      if !coupon.nil? && coupon.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"coupon\", the character length must be smaller than or equal to 5000.")
      end

      @coupon = coupon
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description : String?)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email : String?)
      if !email.nil? && email.to_s.size > 512
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 512.")
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_prefix Value to be assigned
    def invoice_prefix=(invoice_prefix : String?)
      if !invoice_prefix.nil? && invoice_prefix.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"invoice_prefix\", the character length must be smaller than or equal to 5000.")
      end

      @invoice_prefix = invoice_prefix
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name : String?)
      if !name.nil? && name.to_s.size > 256
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 256.")
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_method Value to be assigned
    def payment_method=(payment_method : String?)
      if !payment_method.nil? && payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @payment_method = payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone : String?)
      if !phone.nil? && phone.to_s.size > 20
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 20.")
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] promotion_code Value to be assigned
    def promotion_code=(promotion_code : String?)
      if !promotion_code.nil? && promotion_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"promotion_code\", the character length must be smaller than or equal to 5000.")
      end

      @promotion_code = promotion_code
    end

    # Custom attribute writer method with validation
    # @param [Object] source Value to be assigned
    def source=(source : String?)
      if !source.nil? && source.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"source\", the character length must be smaller than or equal to 5000.")
      end

      @source = source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_exempt Object to be assigned
    def tax_exempt=(tax_exempt : String?)
      ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid!(tax_exempt)
      @tax_exempt = tax_exempt
    end

    # Custom attribute writer method with validation
    # @param [Object] test_clock Value to be assigned
    def test_clock=(test_clock : String?)
      if !test_clock.nil? && test_clock.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"test_clock\", the character length must be smaller than or equal to 5000.")
      end

      @test_clock = test_clock
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
    def_equals_and_hash(@address, @address_present, @balance, @balance_present, @cash_balance, @cash_balance_present, @coupon, @coupon_present, @description, @description_present, @email, @email_present, @expand, @expand_present, @invoice_prefix, @invoice_prefix_present, @invoice_settings, @invoice_settings_present, @metadata, @metadata_present, @name, @name_present, @next_invoice_sequence, @next_invoice_sequence_present, @payment_method, @payment_method_present, @phone, @phone_present, @preferred_locales, @preferred_locales_present, @promotion_code, @promotion_code_present, @shipping, @shipping_present, @source, @source_present, @tax, @tax_present, @tax_exempt, @tax_exempt_present, @tax_id_data, @tax_id_data_present, @test_clock, @test_clock_present)
  end
end
