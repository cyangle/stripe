#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/files_api"

# Unit tests for Stripe::FilesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "FilesApi" do
  describe "test an instance of FilesApi" do
    it "should create an instance of FilesApi" do
      api_instance = Stripe::FilesApi.new
      api_instance.should be_a(Stripe::FilesApi)
    end
  end

  # unit tests for get_files
  # &lt;p&gt;Returns a list of the files that your account has access to. Stripe sorts and returns the files by their creation dates, placing the most recently created files at the top.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ending_before A cursor for use in pagination. &#x60;ending_before&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with &#x60;obj_bar&#x60;, your subsequent call can include &#x60;ending_before&#x3D;obj_bar&#x60; in order to fetch the previous page of the list.
  # @option opts [String] :starting_after A cursor for use in pagination. &#x60;starting_after&#x60; is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with &#x60;obj_foo&#x60;, your subsequent call can include &#x60;starting_after&#x3D;obj_foo&#x60; in order to fetch the next page of the list.
  # @option opts [Int32] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  # @option opts [String] :purpose Filter queries by the file purpose. If you don&#39;t provide a purpose, the queries return unfiltered files.
  # @option opts [GetAccountsCreatedParameter] :created Only return files that were created during the given date interval.
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [FileResourceFileList]
  describe "get_files test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_files_file
  # &lt;p&gt;Retrieves the details of an existing file object. After you supply a unique file ID, Stripe returns the corresponding file object. Learn how to &lt;a href&#x3D;\&quot;/docs/file-upload#download-file-contents\&quot;&gt;access file contents&lt;/a&gt;.&lt;/p&gt;
  # @param file
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [::File]
  describe "get_files_file test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for post_files
  # &lt;p&gt;To upload a file to Stripe, you need to send a request of type &lt;code&gt;multipart/form-data&lt;/code&gt;. Include the file you want to upload in the request, and the parameters for creating a file.&lt;/p&gt;  &lt;p&gt;All of Stripe’s officially supported Client libraries support sending &lt;code&gt;multipart/form-data&lt;/code&gt;.&lt;/p&gt;
  # @param file A file to upload. Make sure that the specifications follow RFC 2388, which defines file transfers for the &#x60;multipart/form-data&#x60; protocol.
  # @param purpose The [purpose](https://stripe.com/docs/file-upload#uploading-a-file) of the uploaded file.
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [FileLinkCreationParams] :file_link_data
  # @return [::File]
  describe "post_files test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
