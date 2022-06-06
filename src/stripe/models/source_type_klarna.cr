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
  class SourceTypeKlarna
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "background_image_url", type: String?, presence: true, ignore_serialize: background_image_url.nil? && !background_image_url_present?)]
    property background_image_url : String?

    @[JSON::Field(ignore: true)]
    property? background_image_url_present : Bool = false

    @[JSON::Field(key: "client_token", type: String?, presence: true, ignore_serialize: client_token.nil? && !client_token_present?)]
    property client_token : String?

    @[JSON::Field(ignore: true)]
    property? client_token_present : Bool = false

    @[JSON::Field(key: "first_name", type: String?, presence: true, ignore_serialize: first_name.nil? && !first_name_present?)]
    property first_name : String?

    @[JSON::Field(ignore: true)]
    property? first_name_present : Bool = false

    @[JSON::Field(key: "last_name", type: String?, presence: true, ignore_serialize: last_name.nil? && !last_name_present?)]
    property last_name : String?

    @[JSON::Field(ignore: true)]
    property? last_name_present : Bool = false

    @[JSON::Field(key: "locale", type: String?, presence: true, ignore_serialize: locale.nil? && !locale_present?)]
    property locale : String?

    @[JSON::Field(ignore: true)]
    property? locale_present : Bool = false

    @[JSON::Field(key: "logo_url", type: String?, presence: true, ignore_serialize: logo_url.nil? && !logo_url_present?)]
    property logo_url : String?

    @[JSON::Field(ignore: true)]
    property? logo_url_present : Bool = false

    @[JSON::Field(key: "page_title", type: String?, presence: true, ignore_serialize: page_title.nil? && !page_title_present?)]
    property page_title : String?

    @[JSON::Field(ignore: true)]
    property? page_title_present : Bool = false

    @[JSON::Field(key: "pay_later_asset_urls_descriptive", type: String?, presence: true, ignore_serialize: pay_later_asset_urls_descriptive.nil? && !pay_later_asset_urls_descriptive_present?)]
    property pay_later_asset_urls_descriptive : String?

    @[JSON::Field(ignore: true)]
    property? pay_later_asset_urls_descriptive_present : Bool = false

    @[JSON::Field(key: "pay_later_asset_urls_standard", type: String?, presence: true, ignore_serialize: pay_later_asset_urls_standard.nil? && !pay_later_asset_urls_standard_present?)]
    property pay_later_asset_urls_standard : String?

    @[JSON::Field(ignore: true)]
    property? pay_later_asset_urls_standard_present : Bool = false

    @[JSON::Field(key: "pay_later_name", type: String?, presence: true, ignore_serialize: pay_later_name.nil? && !pay_later_name_present?)]
    property pay_later_name : String?

    @[JSON::Field(ignore: true)]
    property? pay_later_name_present : Bool = false

    @[JSON::Field(key: "pay_later_redirect_url", type: String?, presence: true, ignore_serialize: pay_later_redirect_url.nil? && !pay_later_redirect_url_present?)]
    property pay_later_redirect_url : String?

    @[JSON::Field(ignore: true)]
    property? pay_later_redirect_url_present : Bool = false

    @[JSON::Field(key: "pay_now_asset_urls_descriptive", type: String?, presence: true, ignore_serialize: pay_now_asset_urls_descriptive.nil? && !pay_now_asset_urls_descriptive_present?)]
    property pay_now_asset_urls_descriptive : String?

    @[JSON::Field(ignore: true)]
    property? pay_now_asset_urls_descriptive_present : Bool = false

    @[JSON::Field(key: "pay_now_asset_urls_standard", type: String?, presence: true, ignore_serialize: pay_now_asset_urls_standard.nil? && !pay_now_asset_urls_standard_present?)]
    property pay_now_asset_urls_standard : String?

    @[JSON::Field(ignore: true)]
    property? pay_now_asset_urls_standard_present : Bool = false

    @[JSON::Field(key: "pay_now_name", type: String?, presence: true, ignore_serialize: pay_now_name.nil? && !pay_now_name_present?)]
    property pay_now_name : String?

    @[JSON::Field(ignore: true)]
    property? pay_now_name_present : Bool = false

    @[JSON::Field(key: "pay_now_redirect_url", type: String?, presence: true, ignore_serialize: pay_now_redirect_url.nil? && !pay_now_redirect_url_present?)]
    property pay_now_redirect_url : String?

    @[JSON::Field(ignore: true)]
    property? pay_now_redirect_url_present : Bool = false

    @[JSON::Field(key: "pay_over_time_asset_urls_descriptive", type: String?, presence: true, ignore_serialize: pay_over_time_asset_urls_descriptive.nil? && !pay_over_time_asset_urls_descriptive_present?)]
    property pay_over_time_asset_urls_descriptive : String?

    @[JSON::Field(ignore: true)]
    property? pay_over_time_asset_urls_descriptive_present : Bool = false

    @[JSON::Field(key: "pay_over_time_asset_urls_standard", type: String?, presence: true, ignore_serialize: pay_over_time_asset_urls_standard.nil? && !pay_over_time_asset_urls_standard_present?)]
    property pay_over_time_asset_urls_standard : String?

    @[JSON::Field(ignore: true)]
    property? pay_over_time_asset_urls_standard_present : Bool = false

    @[JSON::Field(key: "pay_over_time_name", type: String?, presence: true, ignore_serialize: pay_over_time_name.nil? && !pay_over_time_name_present?)]
    property pay_over_time_name : String?

    @[JSON::Field(ignore: true)]
    property? pay_over_time_name_present : Bool = false

    @[JSON::Field(key: "pay_over_time_redirect_url", type: String?, presence: true, ignore_serialize: pay_over_time_redirect_url.nil? && !pay_over_time_redirect_url_present?)]
    property pay_over_time_redirect_url : String?

    @[JSON::Field(ignore: true)]
    property? pay_over_time_redirect_url_present : Bool = false

    @[JSON::Field(key: "payment_method_categories", type: String?, presence: true, ignore_serialize: payment_method_categories.nil? && !payment_method_categories_present?)]
    property payment_method_categories : String?

    @[JSON::Field(ignore: true)]
    property? payment_method_categories_present : Bool = false

    @[JSON::Field(key: "purchase_country", type: String?, presence: true, ignore_serialize: purchase_country.nil? && !purchase_country_present?)]
    property purchase_country : String?

    @[JSON::Field(ignore: true)]
    property? purchase_country_present : Bool = false

    @[JSON::Field(key: "purchase_type", type: String?, presence: true, ignore_serialize: purchase_type.nil? && !purchase_type_present?)]
    property purchase_type : String?

    @[JSON::Field(ignore: true)]
    property? purchase_type_present : Bool = false

    @[JSON::Field(key: "redirect_url", type: String?, presence: true, ignore_serialize: redirect_url.nil? && !redirect_url_present?)]
    property redirect_url : String?

    @[JSON::Field(ignore: true)]
    property? redirect_url_present : Bool = false

    @[JSON::Field(key: "shipping_delay", type: Int64?, presence: true, ignore_serialize: shipping_delay.nil? && !shipping_delay_present?)]
    property shipping_delay : Int64?

    @[JSON::Field(ignore: true)]
    property? shipping_delay_present : Bool = false

    @[JSON::Field(key: "shipping_first_name", type: String?, presence: true, ignore_serialize: shipping_first_name.nil? && !shipping_first_name_present?)]
    property shipping_first_name : String?

    @[JSON::Field(ignore: true)]
    property? shipping_first_name_present : Bool = false

    @[JSON::Field(key: "shipping_last_name", type: String?, presence: true, ignore_serialize: shipping_last_name.nil? && !shipping_last_name_present?)]
    property shipping_last_name : String?

    @[JSON::Field(ignore: true)]
    property? shipping_last_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @background_image_url : String? = nil,
      @client_token : String? = nil,
      @first_name : String? = nil,
      @last_name : String? = nil,
      @locale : String? = nil,
      @logo_url : String? = nil,
      @page_title : String? = nil,
      @pay_later_asset_urls_descriptive : String? = nil,
      @pay_later_asset_urls_standard : String? = nil,
      @pay_later_name : String? = nil,
      @pay_later_redirect_url : String? = nil,
      @pay_now_asset_urls_descriptive : String? = nil,
      @pay_now_asset_urls_standard : String? = nil,
      @pay_now_name : String? = nil,
      @pay_now_redirect_url : String? = nil,
      @pay_over_time_asset_urls_descriptive : String? = nil,
      @pay_over_time_asset_urls_standard : String? = nil,
      @pay_over_time_name : String? = nil,
      @pay_over_time_redirect_url : String? = nil,
      @payment_method_categories : String? = nil,
      @purchase_country : String? = nil,
      @purchase_type : String? = nil,
      @redirect_url : String? = nil,
      @shipping_delay : Int64? = nil,
      @shipping_first_name : String? = nil,
      @shipping_last_name : String? = nil
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
    def_equals_and_hash(@background_image_url, @background_image_url_present, @client_token, @client_token_present, @first_name, @first_name_present, @last_name, @last_name_present, @locale, @locale_present, @logo_url, @logo_url_present, @page_title, @page_title_present, @pay_later_asset_urls_descriptive, @pay_later_asset_urls_descriptive_present, @pay_later_asset_urls_standard, @pay_later_asset_urls_standard_present, @pay_later_name, @pay_later_name_present, @pay_later_redirect_url, @pay_later_redirect_url_present, @pay_now_asset_urls_descriptive, @pay_now_asset_urls_descriptive_present, @pay_now_asset_urls_standard, @pay_now_asset_urls_standard_present, @pay_now_name, @pay_now_name_present, @pay_now_redirect_url, @pay_now_redirect_url_present, @pay_over_time_asset_urls_descriptive, @pay_over_time_asset_urls_descriptive_present, @pay_over_time_asset_urls_standard, @pay_over_time_asset_urls_standard_present, @pay_over_time_name, @pay_over_time_name_present, @pay_over_time_redirect_url, @pay_over_time_redirect_url_present, @payment_method_categories, @payment_method_categories_present, @purchase_country, @purchase_country_present, @purchase_type, @purchase_type_present, @redirect_url, @redirect_url_present, @shipping_delay, @shipping_delay_present, @shipping_first_name, @shipping_first_name_present, @shipping_last_name, @shipping_last_name_present)
  end
end
