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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentIntentNextAction
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Type of the next action to perform, one of `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    # Optional properties

    @[JSON::Field(key: "alipay_handle_redirect", type: PaymentIntentNextActionAlipayHandleRedirect?, presence: true, ignore_serialize: alipay_handle_redirect.nil? && !alipay_handle_redirect_present?)]
    property alipay_handle_redirect : PaymentIntentNextActionAlipayHandleRedirect?

    @[JSON::Field(ignore: true)]
    property? alipay_handle_redirect_present : Bool = false

    @[JSON::Field(key: "boleto_display_details", type: PaymentIntentNextActionBoleto?, presence: true, ignore_serialize: boleto_display_details.nil? && !boleto_display_details_present?)]
    property boleto_display_details : PaymentIntentNextActionBoleto?

    @[JSON::Field(ignore: true)]
    property? boleto_display_details_present : Bool = false

    @[JSON::Field(key: "card_await_notification", type: PaymentIntentNextActionCardAwaitNotification?, presence: true, ignore_serialize: card_await_notification.nil? && !card_await_notification_present?)]
    property card_await_notification : PaymentIntentNextActionCardAwaitNotification?

    @[JSON::Field(ignore: true)]
    property? card_await_notification_present : Bool = false

    @[JSON::Field(key: "display_bank_transfer_instructions", type: PaymentIntentNextActionDisplayBankTransferInstructions?, presence: true, ignore_serialize: display_bank_transfer_instructions.nil? && !display_bank_transfer_instructions_present?)]
    property display_bank_transfer_instructions : PaymentIntentNextActionDisplayBankTransferInstructions?

    @[JSON::Field(ignore: true)]
    property? display_bank_transfer_instructions_present : Bool = false

    @[JSON::Field(key: "konbini_display_details", type: PaymentIntentNextActionKonbini?, presence: true, ignore_serialize: konbini_display_details.nil? && !konbini_display_details_present?)]
    property konbini_display_details : PaymentIntentNextActionKonbini?

    @[JSON::Field(ignore: true)]
    property? konbini_display_details_present : Bool = false

    @[JSON::Field(key: "oxxo_display_details", type: PaymentIntentNextActionDisplayOxxoDetails?, presence: true, ignore_serialize: oxxo_display_details.nil? && !oxxo_display_details_present?)]
    property oxxo_display_details : PaymentIntentNextActionDisplayOxxoDetails?

    @[JSON::Field(ignore: true)]
    property? oxxo_display_details_present : Bool = false

    @[JSON::Field(key: "paynow_display_qr_code", type: PaymentIntentNextActionPaynowDisplayQrCode?, presence: true, ignore_serialize: paynow_display_qr_code.nil? && !paynow_display_qr_code_present?)]
    property paynow_display_qr_code : PaymentIntentNextActionPaynowDisplayQrCode?

    @[JSON::Field(ignore: true)]
    property? paynow_display_qr_code_present : Bool = false

    @[JSON::Field(key: "redirect_to_url", type: PaymentIntentNextActionRedirectToUrl?, presence: true, ignore_serialize: redirect_to_url.nil? && !redirect_to_url_present?)]
    property redirect_to_url : PaymentIntentNextActionRedirectToUrl?

    @[JSON::Field(ignore: true)]
    property? redirect_to_url_present : Bool = false

    # When confirming a PaymentIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
    @[JSON::Field(key: "use_stripe_sdk", type: JSON::Any, presence: true, ignore_serialize: use_stripe_sdk.nil? && !use_stripe_sdk_present?)]
    property use_stripe_sdk : JSON::Any

    @[JSON::Field(ignore: true)]
    property? use_stripe_sdk_present : Bool = false

    @[JSON::Field(key: "verify_with_microdeposits", type: PaymentIntentNextActionVerifyWithMicrodeposits?, presence: true, ignore_serialize: verify_with_microdeposits.nil? && !verify_with_microdeposits_present?)]
    property verify_with_microdeposits : PaymentIntentNextActionVerifyWithMicrodeposits?

    @[JSON::Field(ignore: true)]
    property? verify_with_microdeposits_present : Bool = false

    @[JSON::Field(key: "wechat_pay_display_qr_code", type: PaymentIntentNextActionWechatPayDisplayQrCode?, presence: true, ignore_serialize: wechat_pay_display_qr_code.nil? && !wechat_pay_display_qr_code_present?)]
    property wechat_pay_display_qr_code : PaymentIntentNextActionWechatPayDisplayQrCode?

    @[JSON::Field(ignore: true)]
    property? wechat_pay_display_qr_code_present : Bool = false

    @[JSON::Field(key: "wechat_pay_redirect_to_android_app", type: PaymentIntentNextActionWechatPayRedirectToAndroidApp?, presence: true, ignore_serialize: wechat_pay_redirect_to_android_app.nil? && !wechat_pay_redirect_to_android_app_present?)]
    property wechat_pay_redirect_to_android_app : PaymentIntentNextActionWechatPayRedirectToAndroidApp?

    @[JSON::Field(ignore: true)]
    property? wechat_pay_redirect_to_android_app_present : Bool = false

    @[JSON::Field(key: "wechat_pay_redirect_to_ios_app", type: PaymentIntentNextActionWechatPayRedirectToIosApp?, presence: true, ignore_serialize: wechat_pay_redirect_to_ios_app.nil? && !wechat_pay_redirect_to_ios_app_present?)]
    property wechat_pay_redirect_to_ios_app : PaymentIntentNextActionWechatPayRedirectToIosApp?

    @[JSON::Field(ignore: true)]
    property? wechat_pay_redirect_to_ios_app_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String,
      # Optional properties
      @alipay_handle_redirect : PaymentIntentNextActionAlipayHandleRedirect? = nil,
      @boleto_display_details : PaymentIntentNextActionBoleto? = nil,
      @card_await_notification : PaymentIntentNextActionCardAwaitNotification? = nil,
      @display_bank_transfer_instructions : PaymentIntentNextActionDisplayBankTransferInstructions? = nil,
      @konbini_display_details : PaymentIntentNextActionKonbini? = nil,
      @oxxo_display_details : PaymentIntentNextActionDisplayOxxoDetails? = nil,
      @paynow_display_qr_code : PaymentIntentNextActionPaynowDisplayQrCode? = nil,
      @redirect_to_url : PaymentIntentNextActionRedirectToUrl? = nil,
      @use_stripe_sdk : JSON::Any = nil,
      @verify_with_microdeposits : PaymentIntentNextActionVerifyWithMicrodeposits? = nil,
      @wechat_pay_display_qr_code : PaymentIntentNextActionWechatPayDisplayQrCode? = nil,
      @wechat_pay_redirect_to_android_app : PaymentIntentNextActionWechatPayRedirectToAndroidApp? = nil,
      @wechat_pay_redirect_to_ios_app : PaymentIntentNextActionWechatPayRedirectToIosApp? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @_type.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] _type Value to be assigned
    def _type=(_type : String)
      if _type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
      end

      @_type = _type
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
    def_equals_and_hash(@_type, @alipay_handle_redirect, @alipay_handle_redirect_present, @boleto_display_details, @boleto_display_details_present, @card_await_notification, @card_await_notification_present, @display_bank_transfer_instructions, @display_bank_transfer_instructions_present, @konbini_display_details, @konbini_display_details_present, @oxxo_display_details, @oxxo_display_details_present, @paynow_display_qr_code, @paynow_display_qr_code_present, @redirect_to_url, @redirect_to_url_present, @use_stripe_sdk, @use_stripe_sdk_present, @verify_with_microdeposits, @verify_with_microdeposits_present, @wechat_pay_display_qr_code, @wechat_pay_display_qr_code_present, @wechat_pay_redirect_to_android_app, @wechat_pay_redirect_to_android_app_present, @wechat_pay_redirect_to_ios_app, @wechat_pay_redirect_to_ios_app_present)
  end
end
