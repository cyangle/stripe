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
  class CustomerAcceptance
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [offline, online]."
    VALID_VALUES_FOR__TYPE  = StaticArray["offline", "online"]

    # End of Required Properties

    # Optional Properties

    # The time at which the customer accepted the Mandate.
    @[JSON::Field(key: "accepted_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: accepted_at.nil? && !accepted_at_present?)]
    getter accepted_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? accepted_at_present : Bool = false

    #
    @[JSON::Field(key: "offline", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter offline : JSON::Any? = nil

    @[JSON::Field(key: "online", type: Stripe::OnlineAcceptance?, default: nil, required: false, nullable: false, emit_null: false)]
    getter online : Stripe::OnlineAcceptance? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @accepted_at : Int64? = nil,
      @offline : JSON::Any? = nil,
      @online : Stripe::OnlineAcceptance? = nil
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

      unless (_online = @online).nil?
        invalid_properties.concat(_online.list_invalid_properties_for("online")) if _online.is_a?(OpenApi::Validatable)
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

      unless (_online = @online).nil?
        return false if _online.is_a?(OpenApi::Validatable) && !_online.valid?
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
    # @param [Object] accepted_at Object to be assigned
    def accepted_at=(accepted_at : Int64?)
      if accepted_at.nil?
        return @accepted_at = nil
      end
      _accepted_at = accepted_at.not_nil!
      @accepted_at = _accepted_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] offline Object to be assigned
    def offline=(offline : JSON::Any?)
      if offline.nil?
        return @offline = nil
      end
      _offline = offline.not_nil!
      @offline = _offline
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] online Object to be assigned
    def online=(online : Stripe::OnlineAcceptance?)
      if online.nil?
        return @online = nil
      end
      _online = online.not_nil!
      _online.validate if _online.is_a?(OpenApi::Validatable)
      @online = _online
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @accepted_at, @accepted_at_present, @offline, @online)
  end
end
