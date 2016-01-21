require 'active_support/all'

class Peace::Model
  extend Peace::ORM
  extend Peace::Association

  def initialize(hash={})
    hash.each{ |k,v| self.send("#{k}=", v) }
  end

end
