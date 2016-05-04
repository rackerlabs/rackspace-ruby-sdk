require 'json'
require 'rest-client'

class Peace::Request
  class << self
    def get(url)
      puts "===> GET: #{url}" if ENV['LOG']
      request = RestClient.get(url, headers)
      request
    end

    def post(obj)
      puts "===> POST: #{obj.url}: #{obj.to_json}" if ENV['LOG']
      request = RestClient.post(obj.url, obj.to_json, headers)
      JSON.parse(request)
    end

    def put(obj)
      puts "===> PUT: #{obj.url}" if ENV['LOG']
      request = RestClient.put(obj.url, obj.to_json, headers)
      JSON.parse(request)
    end

    def delete(*args)
    end

    private

    def headers
      Peace::ServiceCatalog.load! unless Rackspace.auth_token
      { "X-Auth-Token": Rackspace.auth_token, content_type: :json, accept: :json }
    end
  end
end
