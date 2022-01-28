#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "nason"
require "time"
require "log"

module Stripe
  class PaymentIntentPaymentMethodOptions
    include NASON::Serializable

    # Optional properties
    @[NASON::Field(key: "acss_debit", type: PaymentIntentPaymentMethodOptionsAcssDebit | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property acss_debit : PaymentIntentPaymentMethodOptionsAcssDebit | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "afterpay_clearpay", type: PaymentMethodOptionsAfterpayClearpay | PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null, nillable: true)]
    property afterpay_clearpay : PaymentMethodOptionsAfterpayClearpay | PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null

    @[NASON::Field(key: "alipay", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property alipay : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "au_becs_debit", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property au_becs_debit : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "bacs_debit", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property bacs_debit : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "bancontact", type: PaymentMethodOptionsBancontact | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Null, nillable: true)]
    property bancontact : PaymentMethodOptionsBancontact | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Null

    @[NASON::Field(key: "boleto", type: PaymentMethodOptionsBoleto | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Null, nillable: true)]
    property boleto : PaymentMethodOptionsBoleto | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Null

    @[NASON::Field(key: "card", type: PaymentIntentPaymentMethodOptionsCard| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null, nillable: true)]
    property card : PaymentIntentPaymentMethodOptionsCard| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null

    @[NASON::Field(key: "card_present", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property card_present : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "eps", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property eps : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "fpx", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property fpx : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "giropay", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property giropay : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "grabpay", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property grabpay : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "ideal", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property ideal : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "interac_present", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property interac_present : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "klarna", type: PaymentMethodOptionsKlarna| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null, nillable: true)]
    property klarna : PaymentMethodOptionsKlarna| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null

    @[NASON::Field(key: "oxxo", type: PaymentMethodOptionsOxxo| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null, nillable: true)]
    property oxxo : PaymentMethodOptionsOxxo| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null

    @[NASON::Field(key: "p24", type: NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null, nillable: true)]
    property p24 : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null

    @[NASON::Field(key: "sepa_debit", type: PaymentIntentPaymentMethodOptionsSepaDebit| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null, nillable: true)]
    property sepa_debit : PaymentIntentPaymentMethodOptionsSepaDebit| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null

    @[NASON::Field(key: "sofort", type: PaymentMethodOptionsSofort| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null, nillable: true)]
    property sofort : PaymentMethodOptionsSofort| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null

    @[NASON::Field(key: "wechat_pay", type: PaymentMethodOptionsWechatPay| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null, nillable: true)]
    property wechat_pay : PaymentMethodOptionsWechatPay| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @acss_debit : PaymentIntentPaymentMethodOptionsAcssDebit | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @afterpay_clearpay : PaymentMethodOptionsAfterpayClearpay | PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null = nil, @alipay : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @au_becs_debit : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @bacs_debit : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @bancontact : PaymentMethodOptionsBancontact | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Null = nil, @boleto : PaymentMethodOptionsBoleto | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Null = nil, @card : PaymentIntentPaymentMethodOptionsCard| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null = nil, @card_present : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @eps : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @fpx : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @giropay : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @grabpay : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @ideal : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @interac_present : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @klarna : PaymentMethodOptionsKlarna| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null = nil, @oxxo : PaymentMethodOptionsOxxo| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null = nil, @p24 : NASON::Any | PaymentIntentTypeSpecificPaymentMethodOptionsClient | Nil | Null = nil, @sepa_debit : PaymentIntentPaymentMethodOptionsSepaDebit| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null = nil, @sofort : PaymentMethodOptionsSofort| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null = nil, @wechat_pay : PaymentMethodOptionsWechatPay| PaymentIntentTypeSpecificPaymentMethodOptionsClient? | Null = nil)
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        acss_debit == o.acss_debit &&
        afterpay_clearpay == o.afterpay_clearpay &&
        alipay == o.alipay &&
        au_becs_debit == o.au_becs_debit &&
        bacs_debit == o.bacs_debit &&
        bancontact == o.bancontact &&
        boleto == o.boleto &&
        card == o.card &&
        card_present == o.card_present &&
        eps == o.eps &&
        fpx == o.fpx &&
        giropay == o.giropay &&
        grabpay == o.grabpay &&
        ideal == o.ideal &&
        interac_present == o.interac_present &&
        klarna == o.klarna &&
        oxxo == o.oxxo &&
        p24 == o.p24 &&
        sepa_debit == o.sepa_debit &&
        sofort == o.sofort &&
        wechat_pay == o.wechat_pay
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [acss_debit, afterpay_clearpay, alipay, au_becs_debit, bacs_debit, bancontact, boleto, card, card_present, eps, fpx, giropay, grabpay, ideal, interac_present, klarna, oxxo, p24, sepa_debit, sofort, wechat_pay].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of String => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Stripe.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of String => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of String => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end