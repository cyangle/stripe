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
  class InvoicesResourceInvoiceTaxId
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The type of the tax ID, one of `eu_vat`, `br_cnpj`, `br_cpf`, `eu_oss_vat`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `li_uid`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, or `unknown`
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [ae_trn, au_abn, au_arn, bg_uic, br_cnpj, br_cpf, ca_bn, ca_gst_hst, ca_pst_bc, ca_pst_mb, ca_pst_sk, ca_qst, ch_vat, cl_tin, es_cif, eu_oss_vat, eu_vat, gb_vat, ge_vat, hk_br, hu_tin, id_npwp, il_vat, in_gst, is_vat, jp_cn, jp_rn, kr_brn, li_uid, mx_rfc, my_frp, my_itn, my_sst, no_vat, nz_gst, ru_inn, ru_kpp, sa_vat, sg_gst, sg_uen, si_tin, th_vat, tw_vat, ua_vat, unknown, us_ein, za_vat]."
    VALID_VALUES_FOR__TYPE  = StaticArray["ae_trn", "au_abn", "au_arn", "bg_uic", "br_cnpj", "br_cpf", "ca_bn", "ca_gst_hst", "ca_pst_bc", "ca_pst_mb", "ca_pst_sk", "ca_qst", "ch_vat", "cl_tin", "es_cif", "eu_oss_vat", "eu_vat", "gb_vat", "ge_vat", "hk_br", "hu_tin", "id_npwp", "il_vat", "in_gst", "is_vat", "jp_cn", "jp_rn", "kr_brn", "li_uid", "mx_rfc", "my_frp", "my_itn", "my_sst", "no_vat", "nz_gst", "ru_inn", "ru_kpp", "sa_vat", "sg_gst", "sg_uen", "si_tin", "th_vat", "tw_vat", "ua_vat", "unknown", "us_ein", "za_vat"]

    # End of Required Properties

    # Optional Properties

    # The value of the tax ID.
    @[JSON::Field(key: "value", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: value.nil? && !value_present?)]
    getter value : String? = nil
    MAX_LENGTH_FOR_VALUE = 5000

    @[JSON::Field(ignore: true)]
    property? value_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @value : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_value = @value).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("value", _value.to_s.size, MAX_LENGTH_FOR_VALUE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_value = @value).nil?
        return false if _value.to_s.size > MAX_LENGTH_FOR_VALUE
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
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value Object to be assigned
    def value=(value : String?)
      if value.nil?
        return @value = nil
      end
      _value = value.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("value", _value.to_s.size, MAX_LENGTH_FOR_VALUE)
      @value = _value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @value, @value_present)
  end
end
