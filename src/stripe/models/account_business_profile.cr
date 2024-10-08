#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_business_profile_annual_revenue"
require "./account_business_profile_support_address"
require "./account_monthly_estimated_revenue"

module Stripe
  #
  class AccountBusinessProfile
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "annual_revenue", type: Stripe::AccountBusinessProfileAnnualRevenue?, default: nil, required: true, nullable: true, emit_null: true)]
    getter annual_revenue : Stripe::AccountBusinessProfileAnnualRevenue? = nil

    # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
    @[JSON::Field(key: "estimated_worker_count", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter estimated_worker_count : Int64? = nil

    # [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
    @[JSON::Field(key: "mcc", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter mcc : String? = nil
    MAX_LENGTH_FOR_MCC = 5000

    # The customer-facing business name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    @[JSON::Field(key: "support_address", type: Stripe::AccountBusinessProfileSupportAddress?, default: nil, required: true, nullable: true, emit_null: true)]
    getter support_address : Stripe::AccountBusinessProfileSupportAddress? = nil

    # A publicly available email address for sending support issues to.
    @[JSON::Field(key: "support_email", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter support_email : String? = nil
    MAX_LENGTH_FOR_SUPPORT_EMAIL = 5000

    # A publicly available phone number to call with support issues.
    @[JSON::Field(key: "support_phone", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter support_phone : String? = nil
    MAX_LENGTH_FOR_SUPPORT_PHONE = 5000

    # A publicly available website for handling support issues.
    @[JSON::Field(key: "support_url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter support_url : String? = nil
    MAX_LENGTH_FOR_SUPPORT_URL = 5000

    # The business's publicly available website.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "monthly_estimated_revenue", type: Stripe::AccountMonthlyEstimatedRevenue?, default: nil, required: false, nullable: false, emit_null: false)]
    getter monthly_estimated_revenue : Stripe::AccountMonthlyEstimatedRevenue? = nil

    # Internal-only description of the product sold or service provided by the business. It's used by Stripe for risk and underwriting purposes.
    @[JSON::Field(key: "product_description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: product_description.nil? && !product_description_present?)]
    getter product_description : String? = nil
    MAX_LENGTH_FOR_PRODUCT_DESCRIPTION = 40000

    @[JSON::Field(ignore: true)]
    property? product_description_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @annual_revenue : Stripe::AccountBusinessProfileAnnualRevenue? = nil,
      @estimated_worker_count : Int64? = nil,
      @mcc : String? = nil,
      @name : String? = nil,
      @support_address : Stripe::AccountBusinessProfileSupportAddress? = nil,
      @support_email : String? = nil,
      @support_phone : String? = nil,
      @support_url : String? = nil,
      @url : String? = nil,
      # Optional properties
      @monthly_estimated_revenue : Stripe::AccountMonthlyEstimatedRevenue? = nil,
      @product_description : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_annual_revenue = @annual_revenue).nil?
        invalid_properties.concat(_annual_revenue.list_invalid_properties_for("annual_revenue")) if _annual_revenue.is_a?(OpenApi::Validatable)
      end

      unless (_mcc = @mcc).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("mcc", _mcc.to_s.size, MAX_LENGTH_FOR_MCC)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_support_address = @support_address).nil?
        invalid_properties.concat(_support_address.list_invalid_properties_for("support_address")) if _support_address.is_a?(OpenApi::Validatable)
      end
      unless (_support_email = @support_email).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("support_email", _support_email.to_s.size, MAX_LENGTH_FOR_SUPPORT_EMAIL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_support_phone = @support_phone).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("support_phone", _support_phone.to_s.size, MAX_LENGTH_FOR_SUPPORT_PHONE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_support_url = @support_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("support_url", _support_url.to_s.size, MAX_LENGTH_FOR_SUPPORT_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_monthly_estimated_revenue = @monthly_estimated_revenue).nil?
        invalid_properties.concat(_monthly_estimated_revenue.list_invalid_properties_for("monthly_estimated_revenue")) if _monthly_estimated_revenue.is_a?(OpenApi::Validatable)
      end
      unless (_product_description = @product_description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product_description", _product_description.to_s.size, MAX_LENGTH_FOR_PRODUCT_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_annual_revenue = @annual_revenue).nil?
        return false if _annual_revenue.is_a?(OpenApi::Validatable) && !_annual_revenue.valid?
      end

      unless (_mcc = @mcc).nil?
        return false if _mcc.to_s.size > MAX_LENGTH_FOR_MCC
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      unless (_support_address = @support_address).nil?
        return false if _support_address.is_a?(OpenApi::Validatable) && !_support_address.valid?
      end

      unless (_support_email = @support_email).nil?
        return false if _support_email.to_s.size > MAX_LENGTH_FOR_SUPPORT_EMAIL
      end

      unless (_support_phone = @support_phone).nil?
        return false if _support_phone.to_s.size > MAX_LENGTH_FOR_SUPPORT_PHONE
      end

      unless (_support_url = @support_url).nil?
        return false if _support_url.to_s.size > MAX_LENGTH_FOR_SUPPORT_URL
      end

      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      unless (_monthly_estimated_revenue = @monthly_estimated_revenue).nil?
        return false if _monthly_estimated_revenue.is_a?(OpenApi::Validatable) && !_monthly_estimated_revenue.valid?
      end

      unless (_product_description = @product_description).nil?
        return false if _product_description.to_s.size > MAX_LENGTH_FOR_PRODUCT_DESCRIPTION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] annual_revenue Object to be assigned
    def annual_revenue=(new_value : Stripe::AccountBusinessProfileAnnualRevenue?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @annual_revenue = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] estimated_worker_count Object to be assigned
    def estimated_worker_count=(new_value : Int64?)
      @estimated_worker_count = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mcc Object to be assigned
    def mcc=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("mcc", new_value.to_s.size, MAX_LENGTH_FOR_MCC)
      end

      @mcc = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] support_address Object to be assigned
    def support_address=(new_value : Stripe::AccountBusinessProfileSupportAddress?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @support_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] support_email Object to be assigned
    def support_email=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("support_email", new_value.to_s.size, MAX_LENGTH_FOR_SUPPORT_EMAIL)
      end

      @support_email = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] support_phone Object to be assigned
    def support_phone=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("support_phone", new_value.to_s.size, MAX_LENGTH_FOR_SUPPORT_PHONE)
      end

      @support_phone = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] support_url Object to be assigned
    def support_url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("support_url", new_value.to_s.size, MAX_LENGTH_FOR_SUPPORT_URL)
      end

      @support_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("url", new_value.to_s.size, MAX_LENGTH_FOR_URL)
      end

      @url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] monthly_estimated_revenue Object to be assigned
    def monthly_estimated_revenue=(new_value : Stripe::AccountMonthlyEstimatedRevenue?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @monthly_estimated_revenue = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_description Object to be assigned
    def product_description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("product_description", new_value.to_s.size, MAX_LENGTH_FOR_PRODUCT_DESCRIPTION)
      end

      @product_description = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@annual_revenue, @estimated_worker_count, @mcc, @name, @support_address, @support_email, @support_phone, @support_url, @url, @monthly_estimated_revenue, @product_description, @product_description_present)
  end
end
