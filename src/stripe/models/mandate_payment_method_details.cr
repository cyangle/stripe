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
  class MandatePaymentMethodDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The type of the payment method associated with this mandate. An additional hash is included on `payment_method_details` with a name matching this value. It contains mandate information specific to the payment method.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: Stripe::MandateAcssDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::MandateAcssDebit? = nil

    @[JSON::Field(key: "au_becs_debit", type: Stripe::MandateAuBecsDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter au_becs_debit : Stripe::MandateAuBecsDebit? = nil

    @[JSON::Field(key: "bacs_debit", type: Stripe::MandateBacsDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bacs_debit : Stripe::MandateBacsDebit? = nil

    @[JSON::Field(key: "blik", type: Stripe::MandateBlik?, default: nil, required: false, nullable: false, emit_null: false)]
    getter blik : Stripe::MandateBlik? = nil

    #
    @[JSON::Field(key: "card", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : JSON::Any? = nil

    #
    @[JSON::Field(key: "link", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link : JSON::Any? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::MandateSepaDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::MandateSepaDebit? = nil

    #
    @[JSON::Field(key: "us_bank_account", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : JSON::Any? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @acss_debit : Stripe::MandateAcssDebit? = nil,
      @au_becs_debit : Stripe::MandateAuBecsDebit? = nil,
      @bacs_debit : Stripe::MandateBacsDebit? = nil,
      @blik : Stripe::MandateBlik? = nil,
      @card : JSON::Any? = nil,
      @link : JSON::Any? = nil,
      @sepa_debit : Stripe::MandateSepaDebit? = nil,
      @us_bank_account : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?
      if __type = @_type
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _acss_debit = @acss_debit
        invalid_properties.concat(_acss_debit.list_invalid_properties_for("acss_debit")) if _acss_debit.is_a?(OpenApi::Validatable)
      end
      if _au_becs_debit = @au_becs_debit
        invalid_properties.concat(_au_becs_debit.list_invalid_properties_for("au_becs_debit")) if _au_becs_debit.is_a?(OpenApi::Validatable)
      end
      if _bacs_debit = @bacs_debit
        invalid_properties.concat(_bacs_debit.list_invalid_properties_for("bacs_debit")) if _bacs_debit.is_a?(OpenApi::Validatable)
      end
      if _blik = @blik
        invalid_properties.concat(_blik.list_invalid_properties_for("blik")) if _blik.is_a?(OpenApi::Validatable)
      end

      if _sepa_debit = @sepa_debit
        invalid_properties.concat(_sepa_debit.list_invalid_properties_for("sepa_debit")) if _sepa_debit.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      if __type = @_type
        return false if __type.to_s.size > 5000
      end
      if _acss_debit = @acss_debit
        return false if _acss_debit.is_a?(OpenApi::Validatable) && !_acss_debit.valid?
      end
      if _au_becs_debit = @au_becs_debit
        return false if _au_becs_debit.is_a?(OpenApi::Validatable) && !_au_becs_debit.valid?
      end
      if _bacs_debit = @bacs_debit
        return false if _bacs_debit.is_a?(OpenApi::Validatable) && !_bacs_debit.valid?
      end
      if _blik = @blik
        return false if _blik.is_a?(OpenApi::Validatable) && !_blik.valid?
      end

      if _sepa_debit = @sepa_debit
        return false if _sepa_debit.is_a?(OpenApi::Validatable) && !_sepa_debit.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(acss_debit : Stripe::MandateAcssDebit?)
      if acss_debit.nil?
        return @acss_debit = nil
      end
      _acss_debit = acss_debit.not_nil!
      _acss_debit.validate if _acss_debit.is_a?(OpenApi::Validatable)
      @acss_debit = _acss_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] au_becs_debit Object to be assigned
    def au_becs_debit=(au_becs_debit : Stripe::MandateAuBecsDebit?)
      if au_becs_debit.nil?
        return @au_becs_debit = nil
      end
      _au_becs_debit = au_becs_debit.not_nil!
      _au_becs_debit.validate if _au_becs_debit.is_a?(OpenApi::Validatable)
      @au_becs_debit = _au_becs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs_debit Object to be assigned
    def bacs_debit=(bacs_debit : Stripe::MandateBacsDebit?)
      if bacs_debit.nil?
        return @bacs_debit = nil
      end
      _bacs_debit = bacs_debit.not_nil!
      _bacs_debit.validate if _bacs_debit.is_a?(OpenApi::Validatable)
      @bacs_debit = _bacs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blik Object to be assigned
    def blik=(blik : Stripe::MandateBlik?)
      if blik.nil?
        return @blik = nil
      end
      _blik = blik.not_nil!
      _blik.validate if _blik.is_a?(OpenApi::Validatable)
      @blik = _blik
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : JSON::Any?)
      if card.nil?
        return @card = nil
      end
      _card = card.not_nil!
      @card = _card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link Object to be assigned
    def link=(link : JSON::Any?)
      if link.nil?
        return @link = nil
      end
      _link = link.not_nil!
      @link = _link
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(sepa_debit : Stripe::MandateSepaDebit?)
      if sepa_debit.nil?
        return @sepa_debit = nil
      end
      _sepa_debit = sepa_debit.not_nil!
      _sepa_debit.validate if _sepa_debit.is_a?(OpenApi::Validatable)
      @sepa_debit = _sepa_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(us_bank_account : JSON::Any?)
      if us_bank_account.nil?
        return @us_bank_account = nil
      end
      _us_bank_account = us_bank_account.not_nil!
      @us_bank_account = _us_bank_account
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @acss_debit, @au_becs_debit, @bacs_debit, @blik, @card, @link, @sepa_debit, @us_bank_account)
  end
end
