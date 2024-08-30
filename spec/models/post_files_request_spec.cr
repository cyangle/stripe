#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

# Unit tests for Stripe::PostFilesRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/stripe/models/post_files_request"

describe Stripe::PostFilesRequest do
  describe "test an instance of PostFilesRequest" do
    it "should create an instance of PostFilesRequest" do
      # instance = Stripe::PostFilesRequest.new
      # (instance).should be_a(Stripe::PostFilesRequest)
    end
  end

  describe "test attribute 'expand'" do
    it "should work" do
      # instance = Stripe::PostFilesRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'file'" do
    it "should work" do
      # instance = Stripe::PostFilesRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'file_link_data'" do
    it "should work" do
      # instance = Stripe::PostFilesRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'purpose'" do
    it "should work" do
      # instance = Stripe::PostFilesRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Stripe::PostFilesRequest::ENUM_VALIDATOR_FOR_PURPOSE
      # validator.allowable_values.each do |value|
      #   instance.purpose = value.as(String)
      # end
    end
  end
end
