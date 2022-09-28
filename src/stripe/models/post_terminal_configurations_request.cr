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
  class PostTerminalConfigurationsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "bbpos_wisepos_e", type: Stripe::BbposWisePose?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bbpos_wisepos_e : Stripe::BbposWisePose? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "tipping", type: Stripe::PostTerminalConfigurationsRequestTipping?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tipping : Stripe::PostTerminalConfigurationsRequestTipping? = nil

    @[JSON::Field(key: "verifone_p400", type: Stripe::VerifoneP400?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verifone_p400 : Stripe::VerifoneP400? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bbpos_wisepos_e : Stripe::BbposWisePose? = nil,
      @expand : Array(String)? = nil,
      @tipping : Stripe::PostTerminalConfigurationsRequestTipping? = nil,
      @verifone_p400 : Stripe::VerifoneP400? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _bbpos_wisepos_e = @bbpos_wisepos_e
        if _bbpos_wisepos_e.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_bbpos_wisepos_e.list_invalid_properties_for("bbpos_wisepos_e"))
        end
      end

      if _tipping = @tipping
        if _tipping.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_tipping.list_invalid_properties_for("tipping"))
        end
      end
      if _verifone_p400 = @verifone_p400
        if _verifone_p400.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_verifone_p400.list_invalid_properties_for("verifone_p400"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _bbpos_wisepos_e = @bbpos_wisepos_e
        if _bbpos_wisepos_e.is_a?(OpenApi::Validatable)
          return false unless _bbpos_wisepos_e.valid?
        end
      end

      if _tipping = @tipping
        if _tipping.is_a?(OpenApi::Validatable)
          return false unless _tipping.valid?
        end
      end
      if _verifone_p400 = @verifone_p400
        if _verifone_p400.is_a?(OpenApi::Validatable)
          return false unless _verifone_p400.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bbpos_wisepos_e Object to be assigned
    def bbpos_wisepos_e=(bbpos_wisepos_e : Stripe::BbposWisePose?)
      if bbpos_wisepos_e.nil?
        return @bbpos_wisepos_e = nil
      end
      _bbpos_wisepos_e = bbpos_wisepos_e.not_nil!
      if _bbpos_wisepos_e.is_a?(OpenApi::Validatable)
        _bbpos_wisepos_e.validate
      end
      @bbpos_wisepos_e = _bbpos_wisepos_e
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tipping Object to be assigned
    def tipping=(tipping : Stripe::PostTerminalConfigurationsRequestTipping?)
      if tipping.nil?
        return @tipping = nil
      end
      _tipping = tipping.not_nil!
      if _tipping.is_a?(OpenApi::Validatable)
        _tipping.validate
      end
      @tipping = _tipping
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verifone_p400 Object to be assigned
    def verifone_p400=(verifone_p400 : Stripe::VerifoneP400?)
      if verifone_p400.nil?
        return @verifone_p400 = nil
      end
      _verifone_p400 = verifone_p400.not_nil!
      if _verifone_p400.is_a?(OpenApi::Validatable)
        _verifone_p400.validate
      end
      @verifone_p400 = _verifone_p400
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bbpos_wisepos_e, @expand, @tipping, @verifone_p400)
  end
end
