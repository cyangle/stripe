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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class AccountDashboardSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The display name for this account. This is used on the Stripe Dashboard to differentiate between accounts.
    @[JSON::Field(key: "display_name", type: String?, presence: true, ignore_serialize: display_name.nil? && !display_name_present?)]
    getter display_name : String?

    @[JSON::Field(ignore: true)]
    property? display_name_present : Bool = false

    # The timezone used in the Stripe Dashboard for this account. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones).
    @[JSON::Field(key: "timezone", type: String?, presence: true, ignore_serialize: timezone.nil? && !timezone_present?)]
    getter timezone : String?

    @[JSON::Field(ignore: true)]
    property? timezone_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @display_name : String? = nil,
      @timezone : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@display_name.nil? && @display_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"display_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@timezone.nil? && @timezone.to_s.size > 5000
        invalid_properties.push("invalid value for \"timezone\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.size > 5000
      return false if !@timezone.nil? && @timezone.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name : String?)
      if !display_name.nil? && display_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"display_name\", the character length must be smaller than or equal to 5000.")
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] timezone Value to be assigned
    def timezone=(timezone : String?)
      if !timezone.nil? && timezone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"timezone\", the character length must be smaller than or equal to 5000.")
      end

      @timezone = timezone
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
    def_equals_and_hash(@display_name, @display_name_present, @timezone, @timezone_present)
  end
end
