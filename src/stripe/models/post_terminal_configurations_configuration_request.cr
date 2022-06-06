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
  class PostTerminalConfigurationsConfigurationRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "bbpos_wisepos_e", type: PostTerminalConfigurationsConfigurationRequestBbposWiseposE?, presence: true, ignore_serialize: bbpos_wisepos_e.nil? && !bbpos_wisepos_e_present?)]
    property bbpos_wisepos_e : PostTerminalConfigurationsConfigurationRequestBbposWiseposE?

    @[JSON::Field(ignore: true)]
    property? bbpos_wisepos_e_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "tipping", type: PostTerminalConfigurationsRequestTipping?, presence: true, ignore_serialize: tipping.nil? && !tipping_present?)]
    property tipping : PostTerminalConfigurationsRequestTipping?

    @[JSON::Field(ignore: true)]
    property? tipping_present : Bool = false

    @[JSON::Field(key: "verifone_p400", type: PostTerminalConfigurationsConfigurationRequestVerifoneP400?, presence: true, ignore_serialize: verifone_p400.nil? && !verifone_p400_present?)]
    property verifone_p400 : PostTerminalConfigurationsConfigurationRequestVerifoneP400?

    @[JSON::Field(ignore: true)]
    property? verifone_p400_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bbpos_wisepos_e : PostTerminalConfigurationsConfigurationRequestBbposWiseposE? = nil,
      @expand : Array(String)? = nil,
      @tipping : PostTerminalConfigurationsRequestTipping? = nil,
      @verifone_p400 : PostTerminalConfigurationsConfigurationRequestVerifoneP400? = nil
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
    def_equals_and_hash(@bbpos_wisepos_e, @bbpos_wisepos_e_present, @expand, @expand_present, @tipping, @tipping_present, @verifone_p400, @verifone_p400_present)
  end
end
