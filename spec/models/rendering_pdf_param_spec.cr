#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::RenderingPdfParam
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/rendering_pdf_param"

describe Stripe::RenderingPdfParam do
  describe "test an instance of RenderingPdfParam" do
    it "should create an instance of RenderingPdfParam" do
      # instance = Stripe::RenderingPdfParam.new
      # (instance).should be_a(Stripe::RenderingPdfParam)
    end
  end

  describe "test attribute 'page_size'" do
    it "should work" do
      # instance = Stripe::RenderingPdfParam.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::RenderingPdfParam::ENUM_VALIDATOR_FOR_PAGE_SIZE
      # validator.allowable_values.each do |value|
      #   instance.page_size = value.as(String)
      # end
    end
  end
end