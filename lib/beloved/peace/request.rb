require 'rest-client'

class Peace::Request
  class << self
    def get(url)
      puts "===> REQUEST: #{url}"
      request = RestClient.get(url, headers)
      request
    end

    def post(*args)
    end

    def put(*args)
    end

    def delete(*args)
    end

    private

    def headers
      Peace::ServiceCatalog.load! unless Beloved.auth_token
      { "X-Auth-Token": Beloved.auth_token, content_type: :json, accept: :json }
    end
  end
end
