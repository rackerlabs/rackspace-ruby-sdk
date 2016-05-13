require 'json'
require 'rest-client'

class Peace::Request
  class << self
    def get(url)
      puts "===> GET: #{url}" if ENV['LOG']
      request = RestClient.get(url, headers)
      JSON.parse(request)
    end

    def post(url, data)
      puts "===> POST: #{url}: #{data}" if ENV['LOG']
      binding.pry
      request = RestClient.post(url, data.to_json, headers)
      JSON.parse(request)
    end

    def put(url, data)
      puts "===> PUT: #{url}: #{data}" if ENV['LOG']
      request = RestClient.put(url, data.to_json, headers)
      JSON.parse(request)
    end

    def delete(url)
      puts "===> DELETE: #{url}" if ENV['LOG']
      RestClient.delete(url, headers) == ""
    end

    private

    def headers
      Peace::ServiceCatalog.load! unless Rackspace.auth_token
      { "X-Auth-Token": Rackspace.auth_token, content_type: :json, accept: :json }
    end
  end
end
