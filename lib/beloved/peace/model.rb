require 'active_support/all'

class Peace::Model
  include Peace::ORM
  include Peace::Association

  def initialize(hash={})
    hash.each{ |k,v| self.send("#{k}=", v) }
  end

end
