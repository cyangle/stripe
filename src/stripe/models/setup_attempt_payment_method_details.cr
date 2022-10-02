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
  class SetupAttemptPaymentMethodDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The type of the payment method used in the SetupIntent (e.g., `card`). An additional hash is included on `payment_method_details` with a name matching this value. It contains confirmation-specific information for the payment method.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    MAX_LENGTH_FOR__TYPE = 5000

    # Optional properties

    #
    @[JSON::Field(key: "acss_debit", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : JSON::Any? = nil

    #
    @[JSON::Field(key: "au_becs_debit", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter au_becs_debit : JSON::Any? = nil

    #
    @[JSON::Field(key: "bacs_debit", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bacs_debit : JSON::Any? = nil

    @[JSON::Field(key: "bancontact", type: Stripe::SetupAttemptPaymentMethodDetailsBancontact?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bancontact : Stripe::SetupAttemptPaymentMethodDetailsBancontact? = nil

    #
    @[JSON::Field(key: "blik", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter blik : JSON::Any? = nil

    #
    @[JSON::Field(key: "boleto", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter boleto : JSON::Any? = nil

    @[JSON::Field(key: "card", type: Stripe::SetupAttemptPaymentMethodDetailsCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::SetupAttemptPaymentMethodDetailsCard? = nil

    @[JSON::Field(key: "card_present", type: Stripe::SetupAttemptPaymentMethodDetailsCardPresent?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card_present : Stripe::SetupAttemptPaymentMethodDetailsCardPresent? = nil

    @[JSON::Field(key: "ideal", type: Stripe::SetupAttemptPaymentMethodDetailsIdeal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ideal : Stripe::SetupAttemptPaymentMethodDetailsIdeal? = nil

    #
    @[JSON::Field(key: "link", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link : JSON::Any? = nil

    #
    @[JSON::Field(key: "sepa_debit", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : JSON::Any? = nil

    @[JSON::Field(key: "sofort", type: Stripe::SetupAttemptPaymentMethodDetailsSofort?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sofort : Stripe::SetupAttemptPaymentMethodDetailsSofort? = nil

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
      @acss_debit : JSON::Any? = nil,
      @au_becs_debit : JSON::Any? = nil,
      @bacs_debit : JSON::Any? = nil,
      @bancontact : Stripe::SetupAttemptPaymentMethodDetailsBancontact? = nil,
      @blik : JSON::Any? = nil,
      @boleto : JSON::Any? = nil,
      @card : Stripe::SetupAttemptPaymentMethodDetailsCard? = nil,
      @card_present2 : Stripe::SetupAttemptPaymentMethodDetailsCardPresent? = nil,
      @ideal : Stripe::SetupAttemptPaymentMethodDetailsIdeal? = nil,
      @link : JSON::Any? = nil,
      @sepa_debit : JSON::Any? = nil,
      @sofort : Stripe::SetupAttemptPaymentMethodDetailsSofort? = nil,
      @us_bank_account : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, MAX_LENGTH_FOR__TYPE)
          invalid_properties.push(max_length_error)
        end
      end

      if _bancontact = @bancontact
        invalid_properties.concat(_bancontact.list_invalid_properties_for("bancontact")) if _bancontact.is_a?(OpenApi::Validatable)
      end

      if _card = @card
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end
      if _card_present = @card_present
        invalid_properties.concat(_card_present.list_invalid_properties_for("card_present")) if _card_present.is_a?(OpenApi::Validatable)
      end
      if _ideal = @ideal
        invalid_properties.concat(_ideal.list_invalid_properties_for("ideal")) if _ideal.is_a?(OpenApi::Validatable)
      end

      if _sofort = @sofort
        invalid_properties.concat(_sofort.list_invalid_properties_for("sofort")) if _sofort.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      if __type = @_type
        return false if __type.to_s.size > MAX_LENGTH_FOR__TYPE
      end

      if _bancontact = @bancontact
        return false if _bancontact.is_a?(OpenApi::Validatable) && !_bancontact.valid?
      end

      if _card = @card
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      if _card_present = @card_present
        return false if _card_present.is_a?(OpenApi::Validatable) && !_card_present.valid?
      end

      if _ideal = @ideal
        return false if _ideal.is_a?(OpenApi::Validatable) && !_ideal.valid?
      end

      if _sofort = @sofort
        return false if _sofort.is_a?(OpenApi::Validatable) && !_sofort.valid?
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
      OpenApi::PrimitiveValidator.validate_max_length("_type", __type.to_s.size, MAX_LENGTH_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(acss_debit : JSON::Any?)
      if acss_debit.nil?
        return @acss_debit = nil
      end
      _acss_debit = acss_debit.not_nil!
      @acss_debit = _acss_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] au_becs_debit Object to be assigned
    def au_becs_debit=(au_becs_debit : JSON::Any?)
      if au_becs_debit.nil?
        return @au_becs_debit = nil
      end
      _au_becs_debit = au_becs_debit.not_nil!
      @au_becs_debit = _au_becs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs_debit Object to be assigned
    def bacs_debit=(bacs_debit : JSON::Any?)
      if bacs_debit.nil?
        return @bacs_debit = nil
      end
      _bacs_debit = bacs_debit.not_nil!
      @bacs_debit = _bacs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bancontact Object to be assigned
    def bancontact=(bancontact : Stripe::SetupAttemptPaymentMethodDetailsBancontact?)
      if bancontact.nil?
        return @bancontact = nil
      end
      _bancontact = bancontact.not_nil!
      _bancontact.validate if _bancontact.is_a?(OpenApi::Validatable)
      @bancontact = _bancontact
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blik Object to be assigned
    def blik=(blik : JSON::Any?)
      if blik.nil?
        return @blik = nil
      end
      _blik = blik.not_nil!
      @blik = _blik
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] boleto Object to be assigned
    def boleto=(boleto : JSON::Any?)
      if boleto.nil?
        return @boleto = nil
      end
      _boleto = boleto.not_nil!
      @boleto = _boleto
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : Stripe::SetupAttemptPaymentMethodDetailsCard?)
      if card.nil?
        return @card = nil
      end
      _card = card.not_nil!
      _card.validate if _card.is_a?(OpenApi::Validatable)
      @card = _card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_present Object to be assigned
    def card_present=(card_present : Stripe::SetupAttemptPaymentMethodDetailsCardPresent?)
      if card_present.nil?
        return @card_present2 = nil
      end
      _card_present = card_present.not_nil!
      _card_present.validate if _card_present.is_a?(OpenApi::Validatable)
      @card_present2 = _card_present
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ideal Object to be assigned
    def ideal=(ideal : Stripe::SetupAttemptPaymentMethodDetailsIdeal?)
      if ideal.nil?
        return @ideal = nil
      end
      _ideal = ideal.not_nil!
      _ideal.validate if _ideal.is_a?(OpenApi::Validatable)
      @ideal = _ideal
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
    def sepa_debit=(sepa_debit : JSON::Any?)
      if sepa_debit.nil?
        return @sepa_debit = nil
      end
      _sepa_debit = sepa_debit.not_nil!
      @sepa_debit = _sepa_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sofort Object to be assigned
    def sofort=(sofort : Stripe::SetupAttemptPaymentMethodDetailsSofort?)
      if sofort.nil?
        return @sofort = nil
      end
      _sofort = sofort.not_nil!
      _sofort.validate if _sofort.is_a?(OpenApi::Validatable)
      @sofort = _sofort
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
    def_equals_and_hash(@_type, @acss_debit, @au_becs_debit, @bacs_debit, @bancontact, @blik, @boleto, @card, @card_present2, @ideal, @link, @sepa_debit, @sofort, @us_bank_account)
  end
end
