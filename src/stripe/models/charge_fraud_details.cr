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
  class ChargeFraudDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Assessments from Stripe. If set, the value is `fraudulent`.
    @[JSON::Field(key: "stripe_report", type: String?, presence: true, ignore_serialize: stripe_report.nil? && !stripe_report_present?)]
    getter stripe_report : String?

    @[JSON::Field(ignore: true)]
    property? stripe_report_present : Bool = false

    # Assessments reported by you. If set, possible values of are `safe` and `fraudulent`.
    @[JSON::Field(key: "user_report", type: String?, presence: true, ignore_serialize: user_report.nil? && !user_report_present?)]
    getter user_report : String?

    @[JSON::Field(ignore: true)]
    property? user_report_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @stripe_report : String? = nil,
      @user_report : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@stripe_report.nil? && @stripe_report.to_s.size > 5000
        invalid_properties.push("invalid value for \"stripe_report\", the character length must be smaller than or equal to 5000.")
      end

      if !@user_report.nil? && @user_report.to_s.size > 5000
        invalid_properties.push("invalid value for \"user_report\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@stripe_report.nil? && @stripe_report.to_s.size > 5000
      return false if !@user_report.nil? && @user_report.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] stripe_report Value to be assigned
    def stripe_report=(stripe_report : String?)
      if !stripe_report.nil? && stripe_report.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"stripe_report\", the character length must be smaller than or equal to 5000.")
      end

      @stripe_report = stripe_report
    end

    # Custom attribute writer method with validation
    # @param [Object] user_report Value to be assigned
    def user_report=(user_report : String?)
      if !user_report.nil? && user_report.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"user_report\", the character length must be smaller than or equal to 5000.")
      end

      @user_report = user_report
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
    def_equals_and_hash(@stripe_report, @stripe_report_present, @user_report, @user_report_present)
  end
end
