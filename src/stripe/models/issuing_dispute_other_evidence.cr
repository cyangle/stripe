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
  class IssuingDisputeOtherEvidence
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "additional_documentation", type: IssuingDisputeCanceledEvidenceAdditionalDocumentation?, presence: true, ignore_serialize: additional_documentation.nil? && !additional_documentation_present?)]
    property additional_documentation : IssuingDisputeCanceledEvidenceAdditionalDocumentation?

    @[JSON::Field(ignore: true)]
    property? additional_documentation_present : Bool = false

    # Explanation of why the cardholder is disputing this transaction.
    @[JSON::Field(key: "explanation", type: String?, presence: true, ignore_serialize: explanation.nil? && !explanation_present?)]
    getter explanation : String?

    @[JSON::Field(ignore: true)]
    property? explanation_present : Bool = false

    # Description of the merchandise or service that was purchased.
    @[JSON::Field(key: "product_description", type: String?, presence: true, ignore_serialize: product_description.nil? && !product_description_present?)]
    getter product_description : String?

    @[JSON::Field(ignore: true)]
    property? product_description_present : Bool = false

    # Whether the product was a merchandise or service.
    @[JSON::Field(key: "product_type", type: String?, presence: true, ignore_serialize: product_type.nil? && !product_type_present?)]
    getter product_type : String?

    @[JSON::Field(ignore: true)]
    property? product_type_present : Bool = false

    ENUM_VALIDATOR_FOR_PRODUCT_TYPE = EnumValidator.new("product_type", "String", ["merchandise", "service"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : IssuingDisputeCanceledEvidenceAdditionalDocumentation? = nil,
      @explanation : String? = nil,
      @product_description : String? = nil,
      @product_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@explanation.nil? && @explanation.to_s.size > 5000
        invalid_properties.push("invalid value for \"explanation\", the character length must be smaller than or equal to 5000.")
      end

      if !@product_description.nil? && @product_description.to_s.size > 5000
        invalid_properties.push("invalid value for \"product_description\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_PRODUCT_TYPE.error_message) unless ENUM_VALIDATOR_FOR_PRODUCT_TYPE.valid?(@product_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@explanation.nil? && @explanation.to_s.size > 5000
      return false if !@product_description.nil? && @product_description.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_PRODUCT_TYPE.valid?(@product_type)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] explanation Value to be assigned
    def explanation=(explanation : String?)
      if !explanation.nil? && explanation.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"explanation\", the character length must be smaller than or equal to 5000.")
      end

      @explanation = explanation
    end

    # Custom attribute writer method with validation
    # @param [Object] product_description Value to be assigned
    def product_description=(product_description : String?)
      if !product_description.nil? && product_description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"product_description\", the character length must be smaller than or equal to 5000.")
      end

      @product_description = product_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_type Object to be assigned
    def product_type=(product_type : String?)
      ENUM_VALIDATOR_FOR_PRODUCT_TYPE.valid!(product_type)
      @product_type = product_type
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
    def_equals_and_hash(@additional_documentation, @additional_documentation_present, @explanation, @explanation_present, @product_description, @product_description_present, @product_type, @product_type_present)
  end
end
