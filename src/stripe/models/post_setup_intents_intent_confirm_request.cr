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
  class PostSetupIntentsIntentConfirmRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The client secret of the SetupIntent.
    @[JSON::Field(key: "client_secret", type: String?, presence: true, ignore_serialize: client_secret.nil? && !client_secret_present?)]
    getter client_secret : String?

    @[JSON::Field(ignore: true)]
    property? client_secret_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "mandate_data", type: PostPaymentIntentsIntentConfirmRequestMandateData?, presence: true, ignore_serialize: mandate_data.nil? && !mandate_data_present?)]
    property mandate_data : PostPaymentIntentsIntentConfirmRequestMandateData?

    @[JSON::Field(ignore: true)]
    property? mandate_data_present : Bool = false

    # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
    @[JSON::Field(key: "payment_method", type: String?, presence: true, ignore_serialize: payment_method.nil? && !payment_method_present?)]
    getter payment_method : String?

    @[JSON::Field(ignore: true)]
    property? payment_method_present : Bool = false

    @[JSON::Field(key: "payment_method_data", type: PaymentMethodDataParams1?, presence: true, ignore_serialize: payment_method_data.nil? && !payment_method_data_present?)]
    property payment_method_data : PaymentMethodDataParams1?

    @[JSON::Field(ignore: true)]
    property? payment_method_data_present : Bool = false

    @[JSON::Field(key: "payment_method_options", type: PaymentMethodOptionsParam18?, presence: true, ignore_serialize: payment_method_options.nil? && !payment_method_options_present?)]
    property payment_method_options : PaymentMethodOptionsParam18?

    @[JSON::Field(ignore: true)]
    property? payment_method_options_present : Bool = false

    # The URL to redirect your customer back to after they authenticate on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter is only used for cards and other redirect-based payment methods.
    @[JSON::Field(key: "return_url", type: String?, presence: true, ignore_serialize: return_url.nil? && !return_url_present?)]
    property return_url : String?

    @[JSON::Field(ignore: true)]
    property? return_url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @client_secret : String? = nil,
      @expand : Array(String)? = nil,
      @mandate_data : PostPaymentIntentsIntentConfirmRequestMandateData? = nil,
      @payment_method : String? = nil,
      @payment_method_data : PaymentMethodDataParams1? = nil,
      @payment_method_options : PaymentMethodOptionsParam18? = nil,
      @return_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@client_secret.nil? && @client_secret.to_s.size > 5000
        invalid_properties.push("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      if !@payment_method.nil? && @payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@client_secret.nil? && @client_secret.to_s.size > 5000
      return false if !@payment_method.nil? && @payment_method.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] client_secret Value to be assigned
    def client_secret=(client_secret : String?)
      if !client_secret.nil? && client_secret.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      @client_secret = client_secret
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_method Value to be assigned
    def payment_method=(payment_method : String?)
      if !payment_method.nil? && payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @payment_method = payment_method
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
    def_equals_and_hash(@client_secret, @client_secret_present, @expand, @expand_present, @mandate_data, @mandate_data_present, @payment_method, @payment_method_present, @payment_method_data, @payment_method_data_present, @payment_method_options, @payment_method_options_present, @return_url, @return_url_present)
  end
end
