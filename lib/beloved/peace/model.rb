class Peace::Model

  class << self
    def all
      response = Peace::Request.get(self::BASE_URL)
      body = JSON.parse(response.body)
      body['flavors'].map{ |f| self.new(f) }
    end

    def first
      all.first
    end
  end

  def initialize(hash={})
    hash.each{ |k,v| self.send("#{k}=", v) }
  end

end
