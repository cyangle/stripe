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
  class Tipping
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "aud", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter aud : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "cad", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cad : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "chf", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter chf : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "czk", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter czk : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "dkk", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter dkk : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "eur", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eur : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "gbp", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter gbp : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "hkd", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter hkd : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "myr", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter myr : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "nok", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter nok : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "nzd", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter nzd : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "sek", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sek : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "sgd", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sgd : Stripe::CurrencySpecificConfig? = nil

    @[JSON::Field(key: "usd", type: Stripe::CurrencySpecificConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter usd : Stripe::CurrencySpecificConfig? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @aud : Stripe::CurrencySpecificConfig? = nil,
      @cad : Stripe::CurrencySpecificConfig? = nil,
      @chf : Stripe::CurrencySpecificConfig? = nil,
      @czk : Stripe::CurrencySpecificConfig? = nil,
      @dkk : Stripe::CurrencySpecificConfig? = nil,
      @eur : Stripe::CurrencySpecificConfig? = nil,
      @gbp : Stripe::CurrencySpecificConfig? = nil,
      @hkd : Stripe::CurrencySpecificConfig? = nil,
      @myr : Stripe::CurrencySpecificConfig? = nil,
      @nok : Stripe::CurrencySpecificConfig? = nil,
      @nzd : Stripe::CurrencySpecificConfig? = nil,
      @sek : Stripe::CurrencySpecificConfig? = nil,
      @sgd : Stripe::CurrencySpecificConfig? = nil,
      @usd : Stripe::CurrencySpecificConfig? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _aud = @aud
        invalid_properties.concat(_aud.list_invalid_properties_for("aud")) if _aud.is_a?(OpenApi::Validatable)
      end
      if _cad = @cad
        invalid_properties.concat(_cad.list_invalid_properties_for("cad")) if _cad.is_a?(OpenApi::Validatable)
      end
      if _chf = @chf
        invalid_properties.concat(_chf.list_invalid_properties_for("chf")) if _chf.is_a?(OpenApi::Validatable)
      end
      if _czk = @czk
        invalid_properties.concat(_czk.list_invalid_properties_for("czk")) if _czk.is_a?(OpenApi::Validatable)
      end
      if _dkk = @dkk
        invalid_properties.concat(_dkk.list_invalid_properties_for("dkk")) if _dkk.is_a?(OpenApi::Validatable)
      end
      if _eur = @eur
        invalid_properties.concat(_eur.list_invalid_properties_for("eur")) if _eur.is_a?(OpenApi::Validatable)
      end
      if _gbp = @gbp
        invalid_properties.concat(_gbp.list_invalid_properties_for("gbp")) if _gbp.is_a?(OpenApi::Validatable)
      end
      if _hkd = @hkd
        invalid_properties.concat(_hkd.list_invalid_properties_for("hkd")) if _hkd.is_a?(OpenApi::Validatable)
      end
      if _myr = @myr
        invalid_properties.concat(_myr.list_invalid_properties_for("myr")) if _myr.is_a?(OpenApi::Validatable)
      end
      if _nok = @nok
        invalid_properties.concat(_nok.list_invalid_properties_for("nok")) if _nok.is_a?(OpenApi::Validatable)
      end
      if _nzd = @nzd
        invalid_properties.concat(_nzd.list_invalid_properties_for("nzd")) if _nzd.is_a?(OpenApi::Validatable)
      end
      if _sek = @sek
        invalid_properties.concat(_sek.list_invalid_properties_for("sek")) if _sek.is_a?(OpenApi::Validatable)
      end
      if _sgd = @sgd
        invalid_properties.concat(_sgd.list_invalid_properties_for("sgd")) if _sgd.is_a?(OpenApi::Validatable)
      end
      if _usd = @usd
        invalid_properties.concat(_usd.list_invalid_properties_for("usd")) if _usd.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _aud = @aud
        return false if _aud.is_a?(OpenApi::Validatable) && !_aud.valid?
      end
      if _cad = @cad
        return false if _cad.is_a?(OpenApi::Validatable) && !_cad.valid?
      end
      if _chf = @chf
        return false if _chf.is_a?(OpenApi::Validatable) && !_chf.valid?
      end
      if _czk = @czk
        return false if _czk.is_a?(OpenApi::Validatable) && !_czk.valid?
      end
      if _dkk = @dkk
        return false if _dkk.is_a?(OpenApi::Validatable) && !_dkk.valid?
      end
      if _eur = @eur
        return false if _eur.is_a?(OpenApi::Validatable) && !_eur.valid?
      end
      if _gbp = @gbp
        return false if _gbp.is_a?(OpenApi::Validatable) && !_gbp.valid?
      end
      if _hkd = @hkd
        return false if _hkd.is_a?(OpenApi::Validatable) && !_hkd.valid?
      end
      if _myr = @myr
        return false if _myr.is_a?(OpenApi::Validatable) && !_myr.valid?
      end
      if _nok = @nok
        return false if _nok.is_a?(OpenApi::Validatable) && !_nok.valid?
      end
      if _nzd = @nzd
        return false if _nzd.is_a?(OpenApi::Validatable) && !_nzd.valid?
      end
      if _sek = @sek
        return false if _sek.is_a?(OpenApi::Validatable) && !_sek.valid?
      end
      if _sgd = @sgd
        return false if _sgd.is_a?(OpenApi::Validatable) && !_sgd.valid?
      end
      if _usd = @usd
        return false if _usd.is_a?(OpenApi::Validatable) && !_usd.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aud Object to be assigned
    def aud=(aud : Stripe::CurrencySpecificConfig?)
      if aud.nil?
        return @aud = nil
      end
      _aud = aud.not_nil!
      _aud.validate if _aud.is_a?(OpenApi::Validatable)
      @aud = _aud
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cad Object to be assigned
    def cad=(cad : Stripe::CurrencySpecificConfig?)
      if cad.nil?
        return @cad = nil
      end
      _cad = cad.not_nil!
      _cad.validate if _cad.is_a?(OpenApi::Validatable)
      @cad = _cad
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chf Object to be assigned
    def chf=(chf : Stripe::CurrencySpecificConfig?)
      if chf.nil?
        return @chf = nil
      end
      _chf = chf.not_nil!
      _chf.validate if _chf.is_a?(OpenApi::Validatable)
      @chf = _chf
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] czk Object to be assigned
    def czk=(czk : Stripe::CurrencySpecificConfig?)
      if czk.nil?
        return @czk = nil
      end
      _czk = czk.not_nil!
      _czk.validate if _czk.is_a?(OpenApi::Validatable)
      @czk = _czk
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dkk Object to be assigned
    def dkk=(dkk : Stripe::CurrencySpecificConfig?)
      if dkk.nil?
        return @dkk = nil
      end
      _dkk = dkk.not_nil!
      _dkk.validate if _dkk.is_a?(OpenApi::Validatable)
      @dkk = _dkk
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eur Object to be assigned
    def eur=(eur : Stripe::CurrencySpecificConfig?)
      if eur.nil?
        return @eur = nil
      end
      _eur = eur.not_nil!
      _eur.validate if _eur.is_a?(OpenApi::Validatable)
      @eur = _eur
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gbp Object to be assigned
    def gbp=(gbp : Stripe::CurrencySpecificConfig?)
      if gbp.nil?
        return @gbp = nil
      end
      _gbp = gbp.not_nil!
      _gbp.validate if _gbp.is_a?(OpenApi::Validatable)
      @gbp = _gbp
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hkd Object to be assigned
    def hkd=(hkd : Stripe::CurrencySpecificConfig?)
      if hkd.nil?
        return @hkd = nil
      end
      _hkd = hkd.not_nil!
      _hkd.validate if _hkd.is_a?(OpenApi::Validatable)
      @hkd = _hkd
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] myr Object to be assigned
    def myr=(myr : Stripe::CurrencySpecificConfig?)
      if myr.nil?
        return @myr = nil
      end
      _myr = myr.not_nil!
      _myr.validate if _myr.is_a?(OpenApi::Validatable)
      @myr = _myr
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] nok Object to be assigned
    def nok=(nok : Stripe::CurrencySpecificConfig?)
      if nok.nil?
        return @nok = nil
      end
      _nok = nok.not_nil!
      _nok.validate if _nok.is_a?(OpenApi::Validatable)
      @nok = _nok
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] nzd Object to be assigned
    def nzd=(nzd : Stripe::CurrencySpecificConfig?)
      if nzd.nil?
        return @nzd = nil
      end
      _nzd = nzd.not_nil!
      _nzd.validate if _nzd.is_a?(OpenApi::Validatable)
      @nzd = _nzd
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sek Object to be assigned
    def sek=(sek : Stripe::CurrencySpecificConfig?)
      if sek.nil?
        return @sek = nil
      end
      _sek = sek.not_nil!
      _sek.validate if _sek.is_a?(OpenApi::Validatable)
      @sek = _sek
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sgd Object to be assigned
    def sgd=(sgd : Stripe::CurrencySpecificConfig?)
      if sgd.nil?
        return @sgd = nil
      end
      _sgd = sgd.not_nil!
      _sgd.validate if _sgd.is_a?(OpenApi::Validatable)
      @sgd = _sgd
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usd Object to be assigned
    def usd=(usd : Stripe::CurrencySpecificConfig?)
      if usd.nil?
        return @usd = nil
      end
      _usd = usd.not_nil!
      _usd.validate if _usd.is_a?(OpenApi::Validatable)
      @usd = _usd
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@aud, @cad, @chf, @czk, @dkk, @eur, @gbp, @hkd, @myr, @nok, @nzd, @sek, @sgd, @usd)
  end
end
