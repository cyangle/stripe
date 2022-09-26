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
  class MandateAcceptanceParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["accepted", "pending", "refused", "revoked"])

    # Optional properties

    @[JSON::Field(key: "date", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter date : Int64? = nil

    @[JSON::Field(key: "ip", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ip : String? = nil

    @[JSON::Field(key: "offline", type: Stripe::MandateOfflineAcceptanceParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter offline : Stripe::MandateOfflineAcceptanceParams? = nil

    @[JSON::Field(key: "online", type: Stripe::MandateOnlineAcceptanceParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter online : Stripe::MandateOnlineAcceptanceParams? = nil

    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["offline", "online"])

    @[JSON::Field(key: "user_agent", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user_agent : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : String? = nil,
      # Optional properties
      @date : Int64? = nil,
      @ip : String? = nil,
      @offline : Stripe::MandateOfflineAcceptanceParams? = nil,
      @online : Stripe::MandateOnlineAcceptanceParams? = nil,
      @_type : String? = nil,
      @user_agent : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      # This is a model offline : Stripe::MandateOfflineAcceptanceParams?
      # This is a model online : Stripe::MandateOnlineAcceptanceParams?

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)
      if _user_agent = @user_agent
        if _user_agent.to_s.size > 5000
          invalid_properties.push("invalid value for \"user_agent\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)
      if _user_agent = @user_agent
        return false if _user_agent.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date Object to be assigned
    def date=(date : Int64?)
      if date.nil?
        return @date = nil
      end
      @date = date
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip Object to be assigned
    def ip=(ip : String?)
      if ip.nil?
        return @ip = nil
      end
      @ip = ip
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] offline Object to be assigned
    def offline=(offline : Stripe::MandateOfflineAcceptanceParams?)
      if offline.nil?
        return @offline = nil
      end
      @offline = offline
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] online Object to be assigned
    def online=(online : Stripe::MandateOnlineAcceptanceParams?)
      if online.nil?
        return @online = nil
      end
      @online = online
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_agent Object to be assigned
    def user_agent=(user_agent : String?)
      if user_agent.nil?
        return @user_agent = nil
      end
      _user_agent = user_agent.not_nil!
      if _user_agent.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"user_agent\", the character length must be smaller than or equal to 5000.")
      end

      @user_agent = user_agent
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
    def_equals_and_hash(@status, @date, @ip, @offline, @online, @_type, @user_agent)
  end
end
