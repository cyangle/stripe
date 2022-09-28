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
  class PostPaymentIntentsIntentRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "application_fee_amount", type: Stripe::PostPaymentIntentsIntentRequestApplicationFeeAmount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_amount : Stripe::PostPaymentIntentsIntentRequestApplicationFeeAmount? = nil

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil

    ENUM_VALIDATOR_FOR_CAPTURE_METHOD = EnumValidator.new("capture_method", "String", ["automatic", "manual"])

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # ID of the Customer this PaymentIntent belongs to, if one exists.  Payment methods attached to other Customers cannot be used with this PaymentIntent.  If present in combination with [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage), this PaymentIntent's payment method will be attached to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # ID of the payment method (a PaymentMethod, Card, or [compatible Source](https://stripe.com/docs/payments/payment-methods/transitioning#compatibility) object) to attach to this PaymentIntent.
    @[JSON::Field(key: "payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method : String? = nil

    @[JSON::Field(key: "payment_method_data", type: Stripe::PaymentMethodDataParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_data : Stripe::PaymentMethodDataParams? = nil

    @[JSON::Field(key: "payment_method_options", type: Stripe::PaymentMethodOptionsParam15?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_options : Stripe::PaymentMethodOptionsParam15? = nil

    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use. Use automatic_payment_methods to manage payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_types : Array(String)? = nil

    @[JSON::Field(key: "receipt_email", type: Stripe::PostPaymentIntentsIntentRequestReceiptEmail?, default: nil, required: false, nullable: false, emit_null: false)]
    getter receipt_email : Stripe::PostPaymentIntentsIntentRequestReceiptEmail? = nil

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.  When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).  If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["", "off_session", "on_session"])

    @[JSON::Field(key: "shipping", type: Stripe::PostPaymentIntentsIntentRequestShipping?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::PostPaymentIntentsIntentRequestShipping? = nil

    # For non-card charges, you can use this value as the complete description that appears on your customers’ statements. Must contain at least one letter, maximum 22 characters.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil

    # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix : String? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::TransferDataUpdateParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::TransferDataUpdateParams? = nil

    # A string that identifies the resulting payment as part of a group. `transfer_group` may only be provided if it has not been set. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts) for details.
    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_group : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @application_fee_amount : Stripe::PostPaymentIntentsIntentRequestApplicationFeeAmount? = nil,
      @capture_method : String? = nil,
      @currency : String? = nil,
      @customer : String? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @payment_method : String? = nil,
      @payment_method_data : Stripe::PaymentMethodDataParams? = nil,
      @payment_method_options : Stripe::PaymentMethodOptionsParam15? = nil,
      @payment_method_types : Array(String)? = nil,
      @receipt_email : Stripe::PostPaymentIntentsIntentRequestReceiptEmail? = nil,
      @setup_future_usage : String? = nil,
      @shipping : Stripe::PostPaymentIntentsIntentRequestShipping? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : Stripe::TransferDataUpdateParams? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _application_fee_amount = @application_fee_amount
        if _application_fee_amount.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_application_fee_amount.list_invalid_properties_for("application_fee_amount"))
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_CAPTURE_METHOD.error_message) unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)

      if _customer = @customer
        if _customer.to_s.size > 5000
          invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _description = @description
        if _description.to_s.size > 1000
          invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
        end
      end

      if _metadata = @metadata
        if _metadata.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_metadata.list_invalid_properties_for("metadata"))
        end
      end
      if _payment_method = @payment_method
        if _payment_method.to_s.size > 5000
          invalid_properties.push("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _payment_method_data = @payment_method_data
        if _payment_method_data.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_payment_method_data.list_invalid_properties_for("payment_method_data"))
        end
      end
      if _payment_method_options = @payment_method_options
        if _payment_method_options.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options"))
        end
      end

      if _receipt_email = @receipt_email
        if _receipt_email.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_receipt_email.list_invalid_properties_for("receipt_email"))
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)
      if _shipping = @shipping
        if _shipping.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_shipping.list_invalid_properties_for("shipping"))
        end
      end
      if _statement_descriptor = @statement_descriptor
        if _statement_descriptor.to_s.size > 22
          invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
        end
      end
      if _statement_descriptor_suffix = @statement_descriptor_suffix
        if _statement_descriptor_suffix.to_s.size > 22
          invalid_properties.push("invalid value for \"statement_descriptor_suffix\", the character length must be smaller than or equal to 22.")
        end
      end
      if _transfer_data = @transfer_data
        if _transfer_data.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _application_fee_amount = @application_fee_amount
        if _application_fee_amount.is_a?(OpenApi::Validatable)
          return false unless _application_fee_amount.valid?
        end
      end
      return false unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)

      if _customer = @customer
        return false if _customer.to_s.size > 5000
      end
      if _description = @description
        return false if _description.to_s.size > 1000
      end

      if _metadata = @metadata
        if _metadata.is_a?(OpenApi::Validatable)
          return false unless _metadata.valid?
        end
      end
      if _payment_method = @payment_method
        return false if _payment_method.to_s.size > 5000
      end
      if _payment_method_data = @payment_method_data
        if _payment_method_data.is_a?(OpenApi::Validatable)
          return false unless _payment_method_data.valid?
        end
      end
      if _payment_method_options = @payment_method_options
        if _payment_method_options.is_a?(OpenApi::Validatable)
          return false unless _payment_method_options.valid?
        end
      end

      if _receipt_email = @receipt_email
        if _receipt_email.is_a?(OpenApi::Validatable)
          return false unless _receipt_email.valid?
        end
      end
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)
      if _shipping = @shipping
        if _shipping.is_a?(OpenApi::Validatable)
          return false unless _shipping.valid?
        end
      end
      if _statement_descriptor = @statement_descriptor
        return false if _statement_descriptor.to_s.size > 22
      end
      if _statement_descriptor_suffix = @statement_descriptor_suffix
        return false if _statement_descriptor_suffix.to_s.size > 22
      end
      if _transfer_data = @transfer_data
        if _transfer_data.is_a?(OpenApi::Validatable)
          return false unless _transfer_data.valid?
        end
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
    # @param [Object] application_fee_amount Object to be assigned
    def application_fee_amount=(application_fee_amount : Stripe::PostPaymentIntentsIntentRequestApplicationFeeAmount?)
      if application_fee_amount.nil?
        return @application_fee_amount = nil
      end
      _application_fee_amount = application_fee_amount.not_nil!
      if _application_fee_amount.is_a?(OpenApi::Validatable)
        _application_fee_amount.validate
      end
      @application_fee_amount = _application_fee_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method : String?)
      if capture_method.nil?
        return @capture_method = nil
      end
      _capture_method = capture_method.not_nil!
      ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid!(_capture_method)
      @capture_method = _capture_method
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
      if _customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
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
      if _description.to_s.size > 1000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      @description = _description
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
      if _metadata.is_a?(OpenApi::Validatable)
        _metadata.validate
      end
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method : String?)
      if payment_method.nil?
        return @payment_method = nil
      end
      _payment_method = payment_method.not_nil!
      if _payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @payment_method = _payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_data Object to be assigned
    def payment_method_data=(payment_method_data : Stripe::PaymentMethodDataParams?)
      if payment_method_data.nil?
        return @payment_method_data = nil
      end
      _payment_method_data = payment_method_data.not_nil!
      if _payment_method_data.is_a?(OpenApi::Validatable)
        _payment_method_data.validate
      end
      @payment_method_data = _payment_method_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(payment_method_options : Stripe::PaymentMethodOptionsParam15?)
      if payment_method_options.nil?
        return @payment_method_options = nil
      end
      _payment_method_options = payment_method_options.not_nil!
      if _payment_method_options.is_a?(OpenApi::Validatable)
        _payment_method_options.validate
      end
      @payment_method_options = _payment_method_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(payment_method_types : Array(String)?)
      if payment_method_types.nil?
        return @payment_method_types = nil
      end
      _payment_method_types = payment_method_types.not_nil!
      @payment_method_types = _payment_method_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt_email Object to be assigned
    def receipt_email=(receipt_email : Stripe::PostPaymentIntentsIntentRequestReceiptEmail?)
      if receipt_email.nil?
        return @receipt_email = nil
      end
      _receipt_email = receipt_email.not_nil!
      if _receipt_email.is_a?(OpenApi::Validatable)
        _receipt_email.validate
      end
      @receipt_email = _receipt_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      if setup_future_usage.nil?
        return @setup_future_usage = nil
      end
      _setup_future_usage = setup_future_usage.not_nil!
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(_setup_future_usage)
      @setup_future_usage = _setup_future_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::PostPaymentIntentsIntentRequestShipping?)
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
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      if _statement_descriptor.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
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
      if _statement_descriptor_suffix.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor_suffix\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor_suffix = _statement_descriptor_suffix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::TransferDataUpdateParams?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      if _transfer_data.is_a?(OpenApi::Validatable)
        _transfer_data.validate
      end
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
    def_equals_and_hash(@amount, @application_fee_amount, @capture_method, @currency, @customer, @description, @expand, @metadata, @payment_method, @payment_method_data, @payment_method_options, @payment_method_types, @receipt_email, @setup_future_usage, @shipping, @statement_descriptor, @statement_descriptor_suffix, @transfer_data, @transfer_group)
  end
end
