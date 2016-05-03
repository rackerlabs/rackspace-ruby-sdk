require 'active_support/all'
require 'active_model'

class Peace::Model
  include Peace::ORM
  include Peace::Association
  include ActiveModel::Validations

  def initialize(hash={})
    send(:refresh!, hash)
  end

  def to_json
    { "#{obj_name}": self }.to_json
  end

  private

  def obj_name
    @obj_name ||= self.class.to_s.split('::').last.downcase
  end

  def refresh!(hash)
    keys      = hash.keys
    is_nested = (keys.count == 1 && keys.first == obj_name)
    hash      = is_nested ? hash.first[1] : hash
    hash.each { |(k,v)| self.send("#{k}=", v) }
    self
  rescue Exception => e
    puts "Peace::Model#refresh failed: #{e}"
  end
end
