#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./refund_destination_details_card"
require "./refund_destination_details_generic"

module Stripe
  #
  class RefundDestinationDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The type of transaction-specific details of the payment method used in the refund (e.g., `card`). An additional hash is included on `destination_details` with a name matching this value. It contains information specific to the refund transaction.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    MAX_LENGTH_FOR__TYPE = 5000

    # End of Required Properties

    # Optional Properties

    #
    @[JSON::Field(key: "affirm", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter affirm : JSON::Any? = nil

    #
    @[JSON::Field(key: "afterpay_clearpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter afterpay_clearpay : JSON::Any? = nil

    #
    @[JSON::Field(key: "alipay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter alipay : JSON::Any? = nil

    #
    @[JSON::Field(key: "amazon_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amazon_pay : JSON::Any? = nil

    #
    @[JSON::Field(key: "au_bank_transfer", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter au_bank_transfer : JSON::Any? = nil

    @[JSON::Field(key: "blik", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter blik : Stripe::RefundDestinationDetailsGeneric? = nil

    @[JSON::Field(key: "br_bank_transfer", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter br_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil

    @[JSON::Field(key: "card", type: Stripe::RefundDestinationDetailsCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::RefundDestinationDetailsCard? = nil

    #
    @[JSON::Field(key: "cashapp", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cashapp : JSON::Any? = nil

    #
    @[JSON::Field(key: "customer_cash_balance", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_cash_balance : JSON::Any? = nil

    #
    @[JSON::Field(key: "eps", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eps : JSON::Any? = nil

    @[JSON::Field(key: "eu_bank_transfer", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eu_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil

    @[JSON::Field(key: "gb_bank_transfer", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter gb_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil

    #
    @[JSON::Field(key: "giropay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter giropay : JSON::Any? = nil

    #
    @[JSON::Field(key: "grabpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter grabpay : JSON::Any? = nil

    @[JSON::Field(key: "jp_bank_transfer", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter jp_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil

    #
    @[JSON::Field(key: "klarna", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter klarna : JSON::Any? = nil

    @[JSON::Field(key: "multibanco", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter multibanco : Stripe::RefundDestinationDetailsGeneric? = nil

    @[JSON::Field(key: "mx_bank_transfer", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mx_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil

    @[JSON::Field(key: "p24", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter p24 : Stripe::RefundDestinationDetailsGeneric? = nil

    #
    @[JSON::Field(key: "paynow", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paynow : JSON::Any? = nil

    #
    @[JSON::Field(key: "paypal", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paypal : JSON::Any? = nil

    #
    @[JSON::Field(key: "pix", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pix : JSON::Any? = nil

    #
    @[JSON::Field(key: "revolut", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter revolut : JSON::Any? = nil

    #
    @[JSON::Field(key: "sofort", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sofort : JSON::Any? = nil

    @[JSON::Field(key: "swish", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter swish : Stripe::RefundDestinationDetailsGeneric? = nil

    @[JSON::Field(key: "th_bank_transfer", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter th_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil

    @[JSON::Field(key: "us_bank_transfer", type: Stripe::RefundDestinationDetailsGeneric?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil

    #
    @[JSON::Field(key: "wechat_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter wechat_pay : JSON::Any? = nil

    #
    @[JSON::Field(key: "zip", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter zip : JSON::Any? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @affirm : JSON::Any? = nil,
      @afterpay_clearpay : JSON::Any? = nil,
      @alipay : JSON::Any? = nil,
      @amazon_pay : JSON::Any? = nil,
      @au_bank_transfer : JSON::Any? = nil,
      @blik : Stripe::RefundDestinationDetailsGeneric? = nil,
      @br_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil,
      @card : Stripe::RefundDestinationDetailsCard? = nil,
      @cashapp : JSON::Any? = nil,
      @customer_cash_balance : JSON::Any? = nil,
      @eps : JSON::Any? = nil,
      @eu_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil,
      @gb_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil,
      @giropay : JSON::Any? = nil,
      @grabpay : JSON::Any? = nil,
      @jp_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil,
      @klarna : JSON::Any? = nil,
      @multibanco : Stripe::RefundDestinationDetailsGeneric? = nil,
      @mx_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil,
      @p24 : Stripe::RefundDestinationDetailsGeneric? = nil,
      @paynow : JSON::Any? = nil,
      @paypal : JSON::Any? = nil,
      @pix : JSON::Any? = nil,
      @revolut : JSON::Any? = nil,
      @sofort : JSON::Any? = nil,
      @swish : Stripe::RefundDestinationDetailsGeneric? = nil,
      @th_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil,
      @us_bank_transfer : Stripe::RefundDestinationDetailsGeneric? = nil,
      @wechat_pay : JSON::Any? = nil,
      @zip : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, MAX_LENGTH_FOR__TYPE)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_blik = @blik).nil?
        invalid_properties.concat(_blik.list_invalid_properties_for("blik")) if _blik.is_a?(OpenApi::Validatable)
      end
      unless (_br_bank_transfer = @br_bank_transfer).nil?
        invalid_properties.concat(_br_bank_transfer.list_invalid_properties_for("br_bank_transfer")) if _br_bank_transfer.is_a?(OpenApi::Validatable)
      end
      unless (_card = @card).nil?
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end

      unless (_eu_bank_transfer = @eu_bank_transfer).nil?
        invalid_properties.concat(_eu_bank_transfer.list_invalid_properties_for("eu_bank_transfer")) if _eu_bank_transfer.is_a?(OpenApi::Validatable)
      end
      unless (_gb_bank_transfer = @gb_bank_transfer).nil?
        invalid_properties.concat(_gb_bank_transfer.list_invalid_properties_for("gb_bank_transfer")) if _gb_bank_transfer.is_a?(OpenApi::Validatable)
      end

      unless (_jp_bank_transfer = @jp_bank_transfer).nil?
        invalid_properties.concat(_jp_bank_transfer.list_invalid_properties_for("jp_bank_transfer")) if _jp_bank_transfer.is_a?(OpenApi::Validatable)
      end

      unless (_multibanco = @multibanco).nil?
        invalid_properties.concat(_multibanco.list_invalid_properties_for("multibanco")) if _multibanco.is_a?(OpenApi::Validatable)
      end
      unless (_mx_bank_transfer = @mx_bank_transfer).nil?
        invalid_properties.concat(_mx_bank_transfer.list_invalid_properties_for("mx_bank_transfer")) if _mx_bank_transfer.is_a?(OpenApi::Validatable)
      end
      unless (_p24 = @p24).nil?
        invalid_properties.concat(_p24.list_invalid_properties_for("p24")) if _p24.is_a?(OpenApi::Validatable)
      end

      unless (_swish = @swish).nil?
        invalid_properties.concat(_swish.list_invalid_properties_for("swish")) if _swish.is_a?(OpenApi::Validatable)
      end
      unless (_th_bank_transfer = @th_bank_transfer).nil?
        invalid_properties.concat(_th_bank_transfer.list_invalid_properties_for("th_bank_transfer")) if _th_bank_transfer.is_a?(OpenApi::Validatable)
      end
      unless (_us_bank_transfer = @us_bank_transfer).nil?
        invalid_properties.concat(_us_bank_transfer.list_invalid_properties_for("us_bank_transfer")) if _us_bank_transfer.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false if __type.to_s.size > MAX_LENGTH_FOR__TYPE
      end

      unless (_blik = @blik).nil?
        return false if _blik.is_a?(OpenApi::Validatable) && !_blik.valid?
      end

      unless (_br_bank_transfer = @br_bank_transfer).nil?
        return false if _br_bank_transfer.is_a?(OpenApi::Validatable) && !_br_bank_transfer.valid?
      end

      unless (_card = @card).nil?
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      unless (_eu_bank_transfer = @eu_bank_transfer).nil?
        return false if _eu_bank_transfer.is_a?(OpenApi::Validatable) && !_eu_bank_transfer.valid?
      end

      unless (_gb_bank_transfer = @gb_bank_transfer).nil?
        return false if _gb_bank_transfer.is_a?(OpenApi::Validatable) && !_gb_bank_transfer.valid?
      end

      unless (_jp_bank_transfer = @jp_bank_transfer).nil?
        return false if _jp_bank_transfer.is_a?(OpenApi::Validatable) && !_jp_bank_transfer.valid?
      end

      unless (_multibanco = @multibanco).nil?
        return false if _multibanco.is_a?(OpenApi::Validatable) && !_multibanco.valid?
      end

      unless (_mx_bank_transfer = @mx_bank_transfer).nil?
        return false if _mx_bank_transfer.is_a?(OpenApi::Validatable) && !_mx_bank_transfer.valid?
      end

      unless (_p24 = @p24).nil?
        return false if _p24.is_a?(OpenApi::Validatable) && !_p24.valid?
      end

      unless (_swish = @swish).nil?
        return false if _swish.is_a?(OpenApi::Validatable) && !_swish.valid?
      end

      unless (_th_bank_transfer = @th_bank_transfer).nil?
        return false if _th_bank_transfer.is_a?(OpenApi::Validatable) && !_th_bank_transfer.valid?
      end

      unless (_us_bank_transfer = @us_bank_transfer).nil?
        return false if _us_bank_transfer.is_a?(OpenApi::Validatable) && !_us_bank_transfer.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("_type", new_value.to_s.size, MAX_LENGTH_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] affirm Object to be assigned
    def affirm=(new_value : JSON::Any?)
      @affirm = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] afterpay_clearpay Object to be assigned
    def afterpay_clearpay=(new_value : JSON::Any?)
      @afterpay_clearpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alipay Object to be assigned
    def alipay=(new_value : JSON::Any?)
      @alipay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amazon_pay Object to be assigned
    def amazon_pay=(new_value : JSON::Any?)
      @amazon_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] au_bank_transfer Object to be assigned
    def au_bank_transfer=(new_value : JSON::Any?)
      @au_bank_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blik Object to be assigned
    def blik=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @blik = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] br_bank_transfer Object to be assigned
    def br_bank_transfer=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @br_bank_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(new_value : Stripe::RefundDestinationDetailsCard?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @card = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cashapp Object to be assigned
    def cashapp=(new_value : JSON::Any?)
      @cashapp = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_cash_balance Object to be assigned
    def customer_cash_balance=(new_value : JSON::Any?)
      @customer_cash_balance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eps Object to be assigned
    def eps=(new_value : JSON::Any?)
      @eps = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eu_bank_transfer Object to be assigned
    def eu_bank_transfer=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @eu_bank_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gb_bank_transfer Object to be assigned
    def gb_bank_transfer=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @gb_bank_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] giropay Object to be assigned
    def giropay=(new_value : JSON::Any?)
      @giropay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grabpay Object to be assigned
    def grabpay=(new_value : JSON::Any?)
      @grabpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] jp_bank_transfer Object to be assigned
    def jp_bank_transfer=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @jp_bank_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] klarna Object to be assigned
    def klarna=(new_value : JSON::Any?)
      @klarna = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] multibanco Object to be assigned
    def multibanco=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @multibanco = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mx_bank_transfer Object to be assigned
    def mx_bank_transfer=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @mx_bank_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] p24 Object to be assigned
    def p24=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @p24 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paynow Object to be assigned
    def paynow=(new_value : JSON::Any?)
      @paynow = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paypal Object to be assigned
    def paypal=(new_value : JSON::Any?)
      @paypal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pix Object to be assigned
    def pix=(new_value : JSON::Any?)
      @pix = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] revolut Object to be assigned
    def revolut=(new_value : JSON::Any?)
      @revolut = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sofort Object to be assigned
    def sofort=(new_value : JSON::Any?)
      @sofort = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] swish Object to be assigned
    def swish=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @swish = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] th_bank_transfer Object to be assigned
    def th_bank_transfer=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @th_bank_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_transfer Object to be assigned
    def us_bank_transfer=(new_value : Stripe::RefundDestinationDetailsGeneric?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @us_bank_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wechat_pay Object to be assigned
    def wechat_pay=(new_value : JSON::Any?)
      @wechat_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] zip Object to be assigned
    def zip=(new_value : JSON::Any?)
      @zip = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @affirm, @afterpay_clearpay, @alipay, @amazon_pay, @au_bank_transfer, @blik, @br_bank_transfer, @card, @cashapp, @customer_cash_balance, @eps, @eu_bank_transfer, @gb_bank_transfer, @giropay, @grabpay, @jp_bank_transfer, @klarna, @multibanco, @mx_bank_transfer, @p24, @paynow, @paypal, @pix, @revolut, @sofort, @swish, @th_bank_transfer, @us_bank_transfer, @wechat_pay, @zip)
  end
end