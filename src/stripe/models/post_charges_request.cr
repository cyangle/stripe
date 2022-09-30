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
  class PostChargesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "application_fee", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee : Int64? = nil

    # A fee in cents (or local equivalent) that will be applied to the charge and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the `Stripe-Account` header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/connect/direct-charges#collecting-fees).
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_amount : Int64? = nil

    # Whether to immediately capture the charge. Defaults to `true`. When `false`, the charge issues an authorization (or pre-authorization), and will need to be [captured](https://stripe.com/docs/api#capture_charge) later. Uncaptured charges expire after a set number of days (7 by default). For more information, see the [authorizing charges and settling later](https://stripe.com/docs/charges/placing-a-hold) documentation.
    @[JSON::Field(key: "capture", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture : Bool? = nil

    @[JSON::Field(key: "card", type: Stripe::PostChargesRequestCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::PostChargesRequestCard? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # The ID of an existing customer that will be charged in this request.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # An arbitrary string which you can attach to a `Charge` object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    @[JSON::Field(key: "destination", type: Stripe::PostChargesRequestDestination?, default: nil, required: false, nullable: false, emit_null: false)]
    getter destination : Stripe::PostChargesRequestDestination? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # The Stripe account ID for which these funds are intended. Automatically set if you use the `destination` parameter. For details, see [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/charges-transfers#on-behalf-of).
    @[JSON::Field(key: "on_behalf_of", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter on_behalf_of : String? = nil

    @[JSON::Field(key: "radar_options", type: Stripe::RadarOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter radar_options : Stripe::RadarOptions? = nil

    # The email address to which this charge's [receipt](https://stripe.com/docs/dashboard/receipts) will be sent. The receipt will not be sent until the charge is paid, and no receipts will be sent for test mode charges. If this charge is for a [Customer](https://stripe.com/docs/api/customers/object), the email address specified here will override the customer's email address. If `receipt_email` is specified for a charge in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    @[JSON::Field(key: "receipt_email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter receipt_email : String? = nil

    @[JSON::Field(key: "shipping", type: Stripe::OptionalFieldsShipping?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::OptionalFieldsShipping? = nil

    # A payment source to be charged. This can be the ID of a [card](https://stripe.com/docs/api#cards) (i.e., credit or debit card), a [bank account](https://stripe.com/docs/api#bank_accounts), a [source](https://stripe.com/docs/api#sources), a [token](https://stripe.com/docs/api#tokens), or a [connected account](https://stripe.com/docs/connect/account-debits#charging-a-connected-account). For certain sources---namely, [cards](https://stripe.com/docs/api#cards), [bank accounts](https://stripe.com/docs/api#bank_accounts), and attached [sources](https://stripe.com/docs/api#sources)---you must also pass the ID of the associated customer.
    @[JSON::Field(key: "source", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source : String? = nil

    # For card charges, use `statement_descriptor_suffix` instead. Otherwise, you can use this value as the complete description of a charge on your customers’ statements. Must contain at least one letter, maximum 22 characters.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil

    # Provides information about the charge that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix : String? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::TransferDataSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::TransferDataSpecs? = nil

    # A string that identifies this transaction as part of a group. For details, see [Grouping transactions](https://stripe.com/docs/connect/charges-transfers#transfer-options).
    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_group : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @application_fee : Int64? = nil,
      @application_fee_amount : Int64? = nil,
      @capture : Bool? = nil,
      @card : Stripe::PostChargesRequestCard? = nil,
      @currency : String? = nil,
      @customer : String? = nil,
      @description : String? = nil,
      @destination : Stripe::PostChargesRequestDestination? = nil,
      @expand : Array(String)? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @on_behalf_of : String? = nil,
      @radar_options : Stripe::RadarOptions? = nil,
      @receipt_email : String? = nil,
      @shipping : Stripe::OptionalFieldsShipping? = nil,
      @source : String? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : Stripe::TransferDataSpecs? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _card = @card
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end

      if _customer = @customer
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, 500)
          invalid_properties.push(max_length_error)
        end
      end
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 40000)
          invalid_properties.push(max_length_error)
        end
      end
      if _destination = @destination
        invalid_properties.concat(_destination.list_invalid_properties_for("destination")) if _destination.is_a?(OpenApi::Validatable)
      end

      if _metadata = @metadata
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      if _on_behalf_of = @on_behalf_of
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("on_behalf_of", _on_behalf_of.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _radar_options = @radar_options
        invalid_properties.concat(_radar_options.list_invalid_properties_for("radar_options")) if _radar_options.is_a?(OpenApi::Validatable)
      end

      if _shipping = @shipping
        invalid_properties.concat(_shipping.list_invalid_properties_for("shipping")) if _shipping.is_a?(OpenApi::Validatable)
      end
      if _source = @source
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source", _source.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _statement_descriptor = @statement_descriptor
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 22)
          invalid_properties.push(max_length_error)
        end
      end
      if _statement_descriptor_suffix = @statement_descriptor_suffix
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, 22)
          invalid_properties.push(max_length_error)
        end
      end
      if _transfer_data = @transfer_data
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _card = @card
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      if _customer = @customer
        return false if _customer.to_s.size > 500
      end

      if _description = @description
        return false if _description.to_s.size > 40000
      end

      if _destination = @destination
        return false if _destination.is_a?(OpenApi::Validatable) && !_destination.valid?
      end

      if _metadata = @metadata
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      if _on_behalf_of = @on_behalf_of
        return false if _on_behalf_of.to_s.size > 5000
      end

      if _radar_options = @radar_options
        return false if _radar_options.is_a?(OpenApi::Validatable) && !_radar_options.valid?
      end

      if _shipping = @shipping
        return false if _shipping.is_a?(OpenApi::Validatable) && !_shipping.valid?
      end

      if _source = @source
        return false if _source.to_s.size > 5000
      end

      if _statement_descriptor = @statement_descriptor
        return false if _statement_descriptor.to_s.size > 22
      end

      if _statement_descriptor_suffix = @statement_descriptor_suffix
        return false if _statement_descriptor_suffix.to_s.size > 22
      end

      if _transfer_data = @transfer_data
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee Object to be assigned
    def application_fee=(application_fee : Int64?)
      if application_fee.nil?
        return @application_fee = nil
      end
      _application_fee = application_fee.not_nil!
      @application_fee = _application_fee
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
    # @param [Object] capture Object to be assigned
    def capture=(capture : Bool?)
      if capture.nil?
        return @capture = nil
      end
      _capture = capture.not_nil!
      @capture = _capture
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
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        return @currency = nil
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, 500)
        raise ArgumentError.new(max_length_error)
      end

      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 40000)
        raise ArgumentError.new(max_length_error)
      end

      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination Object to be assigned
    def destination=(destination : Stripe::PostChargesRequestDestination?)
      if destination.nil?
        return @destination = nil
      end
      _destination = destination.not_nil!
      _destination.validate if _destination.is_a?(OpenApi::Validatable)
      @destination = _destination
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
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(on_behalf_of : String?)
      if on_behalf_of.nil?
        return @on_behalf_of = nil
      end
      _on_behalf_of = on_behalf_of.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("on_behalf_of", _on_behalf_of.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @on_behalf_of = _on_behalf_of
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] radar_options Object to be assigned
    def radar_options=(radar_options : Stripe::RadarOptions?)
      if radar_options.nil?
        return @radar_options = nil
      end
      _radar_options = radar_options.not_nil!
      _radar_options.validate if _radar_options.is_a?(OpenApi::Validatable)
      @radar_options = _radar_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt_email Object to be assigned
    def receipt_email=(receipt_email : String?)
      if receipt_email.nil?
        return @receipt_email = nil
      end
      _receipt_email = receipt_email.not_nil!
      @receipt_email = _receipt_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::OptionalFieldsShipping?)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source", _source.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @source = _source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 22)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor = _statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix Object to be assigned
    def statement_descriptor_suffix=(statement_descriptor_suffix : String?)
      if statement_descriptor_suffix.nil?
        return @statement_descriptor_suffix = nil
      end
      _statement_descriptor_suffix = statement_descriptor_suffix.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, 22)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor_suffix = _statement_descriptor_suffix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::TransferDataSpecs?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      _transfer_data.validate if _transfer_data.is_a?(OpenApi::Validatable)
      @transfer_data = _transfer_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_group Object to be assigned
    def transfer_group=(transfer_group : String?)
      if transfer_group.nil?
        return @transfer_group = nil
      end
      _transfer_group = transfer_group.not_nil!
      @transfer_group = _transfer_group
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @application_fee, @application_fee_amount, @capture, @card, @currency, @customer, @description, @destination, @expand, @metadata, @on_behalf_of, @radar_options, @receipt_email, @shipping, @source, @statement_descriptor, @statement_descriptor_suffix, @transfer_data, @transfer_group)
  end
end
