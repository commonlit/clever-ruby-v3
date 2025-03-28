=begin
#Clever API

#The Clever API

OpenAPI spec version: 3.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

module CleverV3
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the specific event
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [EventResponse]
    def get_event(id, opts = {})
      data, _status_code, _headers = get_event_with_http_info(id, opts)
      data
    end

    # Returns the specific event
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventResponse, Integer, Hash)>] EventResponse data, response status code and response headers
    def get_event_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.get_event ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EventsApi.get_event"
      end
      # resource path
      local_var_path = '/events/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'EventResponse' 

      auth_names = opts[:auth_names] || ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of events
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @option opts [String] :school 
    # @option opts [Array<String>] :record_type 
    # @return [EventsResponse]
    def get_events(opts = {})
      data, _status_code, _headers = get_events_with_http_info(opts)
      data
    end

    # Returns a list of events
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @option opts [String] :school 
    # @option opts [Array<String>] :record_type 
    # @return [Array<(EventsResponse, Integer, Hash)>] EventsResponse data, response status code and response headers
    def get_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.get_events ...'
      end
      # resource path
      local_var_path = '/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'starting_after'] = opts[:'starting_after'] if !opts[:'starting_after'].nil?
      query_params[:'ending_before'] = opts[:'ending_before'] if !opts[:'ending_before'].nil?
      query_params[:'school'] = opts[:'school'] if !opts[:'school'].nil?
      query_params[:'record_type'] = @api_client.build_collection_param(opts[:'record_type'], :multi) if !opts[:'record_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type = opts[:return_type] || 'EventsResponse'

      auth_names = opts[:auth_names] || ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EventsResponse')

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
