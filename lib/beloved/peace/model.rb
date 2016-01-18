require 'active_support/all'

class Peace::Model

  class << self
    def all
      response = Peace::Request.get(self::BASE_URL)
      body = JSON.parse(response.body)
      body[json_key_name].map{ |f| self.new(f) }
    end

    def first
      all.first
    end

    private

    def json_key_name
      @json_key_name ||= self.to_s.tableize.split('/').last
    end
  end

  def initialize(hash={})
    hash.each{ |k,v| self.send("#{k}=", v) }
  end

end
