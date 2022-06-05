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
  class Tipping
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "aud", type: CurrencySpecificConfig?, presence: true, ignore_serialize: aud.nil? && !aud_present?)]
    property aud : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? aud_present : Bool = false

    @[JSON::Field(key: "cad", type: CurrencySpecificConfig?, presence: true, ignore_serialize: cad.nil? && !cad_present?)]
    property cad : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? cad_present : Bool = false

    @[JSON::Field(key: "chf", type: CurrencySpecificConfig?, presence: true, ignore_serialize: chf.nil? && !chf_present?)]
    property chf : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? chf_present : Bool = false

    @[JSON::Field(key: "czk", type: CurrencySpecificConfig?, presence: true, ignore_serialize: czk.nil? && !czk_present?)]
    property czk : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? czk_present : Bool = false

    @[JSON::Field(key: "dkk", type: CurrencySpecificConfig?, presence: true, ignore_serialize: dkk.nil? && !dkk_present?)]
    property dkk : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? dkk_present : Bool = false

    @[JSON::Field(key: "eur", type: CurrencySpecificConfig?, presence: true, ignore_serialize: eur.nil? && !eur_present?)]
    property eur : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? eur_present : Bool = false

    @[JSON::Field(key: "gbp", type: CurrencySpecificConfig?, presence: true, ignore_serialize: gbp.nil? && !gbp_present?)]
    property gbp : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? gbp_present : Bool = false

    @[JSON::Field(key: "hkd", type: CurrencySpecificConfig?, presence: true, ignore_serialize: hkd.nil? && !hkd_present?)]
    property hkd : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? hkd_present : Bool = false

    @[JSON::Field(key: "myr", type: CurrencySpecificConfig?, presence: true, ignore_serialize: myr.nil? && !myr_present?)]
    property myr : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? myr_present : Bool = false

    @[JSON::Field(key: "nok", type: CurrencySpecificConfig?, presence: true, ignore_serialize: nok.nil? && !nok_present?)]
    property nok : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? nok_present : Bool = false

    @[JSON::Field(key: "nzd", type: CurrencySpecificConfig?, presence: true, ignore_serialize: nzd.nil? && !nzd_present?)]
    property nzd : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? nzd_present : Bool = false

    @[JSON::Field(key: "sek", type: CurrencySpecificConfig?, presence: true, ignore_serialize: sek.nil? && !sek_present?)]
    property sek : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? sek_present : Bool = false

    @[JSON::Field(key: "sgd", type: CurrencySpecificConfig?, presence: true, ignore_serialize: sgd.nil? && !sgd_present?)]
    property sgd : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? sgd_present : Bool = false

    @[JSON::Field(key: "usd", type: CurrencySpecificConfig?, presence: true, ignore_serialize: usd.nil? && !usd_present?)]
    property usd : CurrencySpecificConfig?

    @[JSON::Field(ignore: true)]
    property? usd_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @aud : CurrencySpecificConfig? = nil,
      @cad : CurrencySpecificConfig? = nil,
      @chf : CurrencySpecificConfig? = nil,
      @czk : CurrencySpecificConfig? = nil,
      @dkk : CurrencySpecificConfig? = nil,
      @eur : CurrencySpecificConfig? = nil,
      @gbp : CurrencySpecificConfig? = nil,
      @hkd : CurrencySpecificConfig? = nil,
      @myr : CurrencySpecificConfig? = nil,
      @nok : CurrencySpecificConfig? = nil,
      @nzd : CurrencySpecificConfig? = nil,
      @sek : CurrencySpecificConfig? = nil,
      @sgd : CurrencySpecificConfig? = nil,
      @usd : CurrencySpecificConfig? = nil
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
    def_equals_and_hash(@aud, @cad, @chf, @czk, @dkk, @eur, @gbp, @hkd, @myr, @nok, @nzd, @sek, @sgd, @usd)
  end
end
