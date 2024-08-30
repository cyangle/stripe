#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class PaymentMethodOptionsWechatPay
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The app ID registered with WeChat Pay. Only required when client is ios or android.
    @[JSON::Field(key: "app_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter app_id : String? = nil
    MAX_LENGTH_FOR_APP_ID = 5000

    # The client type that the end customer will pay from
    @[JSON::Field(key: "client", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter client : String? = nil
    ERROR_MESSAGE_FOR_CLIENT = "invalid value for \"client\", must be one of [android, ios, web]."
    VALID_VALUES_FOR_CLIENT  = String.static_array("android", "ios", "web")

    # End of Required Properties

    # Optional Properties

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.  If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.  When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [none]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("none")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @app_id : String? = nil,
      @client : String? = nil,
      # Optional properties
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_app_id = @app_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("app_id", _app_id.to_s.size, MAX_LENGTH_FOR_APP_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_client = @client).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CLIENT) unless OpenApi::EnumValidator.valid?(_client, VALID_VALUES_FOR_CLIENT)
      end
      unless (_setup_future_usage = @setup_future_usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_app_id = @app_id).nil?
        return false if _app_id.to_s.size > MAX_LENGTH_FOR_APP_ID
      end

      unless (_client = @client).nil?
        return false unless OpenApi::EnumValidator.valid?(_client, VALID_VALUES_FOR_CLIENT)
      end

      unless (_setup_future_usage = @setup_future_usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] app_id Object to be assigned
    def app_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("app_id", new_value.to_s.size, MAX_LENGTH_FOR_APP_ID)
      end

      @app_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client Object to be assigned
    def client=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("client", new_value, VALID_VALUES_FOR_CLIENT)
      end

      @client = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("setup_future_usage", new_value, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      @setup_future_usage = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@app_id, @client, @setup_future_usage)
  end
end
