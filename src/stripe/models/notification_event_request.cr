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
  class NotificationEventRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # ID of the API request that caused the event. If null, the event was automatic (e.g., Stripe's automatic subscription handling). Request logs are available in the [dashboard](https://dashboard.stripe.com/logs), but currently not in the API.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: id.nil? && !id_present?)]
    getter id : String? = nil

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # The idempotency key transmitted during the request, if any. *Note: This property is populated only for events on or after May 23, 2017*.
    @[JSON::Field(key: "idempotency_key", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: idempotency_key.nil? && !idempotency_key_present?)]
    getter idempotency_key : String? = nil

    @[JSON::Field(ignore: true)]
    property? idempotency_key_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @id : String? = nil,
      @idempotency_key : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _idempotency_key = @idempotency_key
        if _idempotency_key.to_s.size > 5000
          invalid_properties.push("invalid value for \"idempotency_key\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      if _idempotency_key = @idempotency_key
        return false if _idempotency_key.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        return @id = nil
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] idempotency_key Object to be assigned
    def idempotency_key=(idempotency_key : String?)
      if idempotency_key.nil?
        return @idempotency_key = nil
      end
      _idempotency_key = idempotency_key.not_nil!
      if _idempotency_key.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"idempotency_key\", the character length must be smaller than or equal to 5000.")
      end

      @idempotency_key = idempotency_key
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
    def_equals_and_hash(@id, @id_present, @idempotency_key, @idempotency_key_present)
  end
end
