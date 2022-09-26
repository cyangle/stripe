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
  #
  class PaymentMethodCardWalletMasterpass
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "billing_address", type: Stripe::PaymentMethodCardWalletMasterpassBillingAddress?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: billing_address.nil? && !billing_address_present?)]
    getter billing_address : Stripe::PaymentMethodCardWalletMasterpassBillingAddress? = nil

    @[JSON::Field(ignore: true)]
    property? billing_address_present : Bool = false

    # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String? = nil

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    @[JSON::Field(key: "shipping_address", type: Stripe::PaymentMethodCardWalletMasterpassShippingAddress?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: shipping_address.nil? && !shipping_address_present?)]
    getter shipping_address : Stripe::PaymentMethodCardWalletMasterpassShippingAddress? = nil

    @[JSON::Field(ignore: true)]
    property? shipping_address_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @billing_address : Stripe::PaymentMethodCardWalletMasterpassBillingAddress? = nil,
      @email : String? = nil,
      @name : String? = nil,
      @shipping_address : Stripe::PaymentMethodCardWalletMasterpassShippingAddress? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model billing_address : Stripe::PaymentMethodCardWalletMasterpassBillingAddress?
      if _email = @email
        if _email.to_s.size > 5000
          invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _name = @name
        if _name.to_s.size > 5000
          invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model shipping_address : Stripe::PaymentMethodCardWalletMasterpassShippingAddress?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _email = @email
        return false if _email.to_s.size > 5000
      end
      if _name = @name
        return false if _name.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_address Object to be assigned
    def billing_address=(billing_address : Stripe::PaymentMethodCardWalletMasterpassBillingAddress?)
      if billing_address.nil?
        return @billing_address = nil
      end
      @billing_address = billing_address
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

      @email = email
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

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_address Object to be assigned
    def shipping_address=(shipping_address : Stripe::PaymentMethodCardWalletMasterpassShippingAddress?)
      if shipping_address.nil?
        return @shipping_address = nil
      end
      @shipping_address = shipping_address
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
    def_equals_and_hash(@billing_address, @billing_address_present, @email, @email_present, @name, @name_present, @shipping_address, @shipping_address_present)
  end
end
