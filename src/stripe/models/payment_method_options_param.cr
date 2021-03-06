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
  # Payment-method-specific configuration.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodOptionsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: PaymentMethodOptionsParam?, presence: true, ignore_serialize: acss_debit.nil? && !acss_debit_present?)]
    property acss_debit : PaymentMethodOptionsParam?

    @[JSON::Field(ignore: true)]
    property? acss_debit_present : Bool = false

    @[JSON::Field(key: "alipay", type: JSON::Any?, presence: true, ignore_serialize: alipay.nil? && !alipay_present?)]
    property alipay : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? alipay_present : Bool = false

    @[JSON::Field(key: "boleto", type: PaymentMethodOptionsParam1?, presence: true, ignore_serialize: boleto.nil? && !boleto_present?)]
    property boleto : PaymentMethodOptionsParam1?

    @[JSON::Field(ignore: true)]
    property? boleto_present : Bool = false

    @[JSON::Field(key: "konbini", type: PaymentMethodOptionsParam1?, presence: true, ignore_serialize: konbini.nil? && !konbini_present?)]
    property konbini : PaymentMethodOptionsParam1?

    @[JSON::Field(ignore: true)]
    property? konbini_present : Bool = false

    @[JSON::Field(key: "oxxo", type: PaymentMethodOptionsParam1?, presence: true, ignore_serialize: oxxo.nil? && !oxxo_present?)]
    property oxxo : PaymentMethodOptionsParam1?

    @[JSON::Field(ignore: true)]
    property? oxxo_present : Bool = false

    @[JSON::Field(key: "us_bank_account", type: PaymentMethodOptionsParam2?, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    property us_bank_account : PaymentMethodOptionsParam2?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    @[JSON::Field(key: "wechat_pay", type: PaymentMethodOptionsParam3?, presence: true, ignore_serialize: wechat_pay.nil? && !wechat_pay_present?)]
    property wechat_pay : PaymentMethodOptionsParam3?

    @[JSON::Field(ignore: true)]
    property? wechat_pay_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : PaymentMethodOptionsParam? = nil,
      @alipay : JSON::Any? = nil,
      @boleto : PaymentMethodOptionsParam1? = nil,
      @konbini : PaymentMethodOptionsParam1? = nil,
      @oxxo : PaymentMethodOptionsParam1? = nil,
      @us_bank_account : PaymentMethodOptionsParam2? = nil,
      @wechat_pay : PaymentMethodOptionsParam3? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
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
    def_equals_and_hash(@acss_debit, @acss_debit_present, @alipay, @alipay_present, @boleto, @boleto_present, @konbini, @konbini_present, @oxxo, @oxxo_present, @us_bank_account, @us_bank_account_present, @wechat_pay, @wechat_pay_present)
  end
end
