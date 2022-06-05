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
  # These fields can be used to create a new product that this price will belong to.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class InlineProductParams1
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "name", type: String)]
    getter name : String

    # Optional properties

    @[JSON::Field(key: "active", type: Bool?, presence: true, ignore_serialize: active.nil? && !active_present?)]
    property active : Bool?

    @[JSON::Field(ignore: true)]
    property? active_present : Bool = false

    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    getter id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "statement_descriptor", type: String?, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    @[JSON::Field(key: "tax_code", type: String?, presence: true, ignore_serialize: tax_code.nil? && !tax_code_present?)]
    getter tax_code : String?

    @[JSON::Field(ignore: true)]
    property? tax_code_present : Bool = false

    @[JSON::Field(key: "unit_label", type: String?, presence: true, ignore_serialize: unit_label.nil? && !unit_label_present?)]
    getter unit_label : String?

    @[JSON::Field(ignore: true)]
    property? unit_label_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String,
      # Optional properties
      @active : Bool? = nil,
      @id : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @statement_descriptor : String? = nil,
      @tax_code : String? = nil,
      @unit_label : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      if !@id.nil? && @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
        invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      if !@tax_code.nil? && @tax_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"tax_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@unit_label.nil? && @unit_label.to_s.size > 12
        invalid_properties.push("invalid value for \"unit_label\", the character length must be smaller than or equal to 12.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.to_s.size > 5000
      return false if !@id.nil? && @id.to_s.size > 5000
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
      return false if !@tax_code.nil? && @tax_code.to_s.size > 5000
      return false if !@unit_label.nil? && @unit_label.to_s.size > 12

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if !id.nil? && id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if !statement_descriptor.nil? && statement_descriptor.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor = statement_descriptor
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_code Value to be assigned
    def tax_code=(tax_code)
      if !tax_code.nil? && tax_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tax_code\", the character length must be smaller than or equal to 5000.")
      end

      @tax_code = tax_code
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_label Value to be assigned
    def unit_label=(unit_label)
      if !unit_label.nil? && unit_label.to_s.size > 12
        raise ArgumentError.new("invalid value for \"unit_label\", the character length must be smaller than or equal to 12.")
      end

      @unit_label = unit_label
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
    def_equals_and_hash(@name, @active, @id, @metadata, @statement_descriptor, @tax_code, @unit_label)
  end
end
