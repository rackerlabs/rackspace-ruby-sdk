require 'active_support/all'
require 'active_model'

class Peace::Model
  include ActiveModel::Validations
  include Peace::ORM
  include Peace::Association

  class << self
    def resource_name
      @resource_name ||= self.to_s.split('::').last.downcase
    end

    def collection_name
      @collection_name ||= resource_name.pluralize
    end
  end


  def initialize(hash={})
    send(:refresh!, hash)
  end

  def resource_name
    @resource_name ||= self.class.to_s.split('::').last.downcase
  end

  def collection_name
    @collection_name ||= resource_name.pluralize
  end

  def to_json
    { "#{resource_name}": self }.to_json
  end


  private

  def refresh!(hash)
    keys      = hash.keys
    is_nested = (keys.count == 1 && keys.first == resource_name)
    hash      = is_nested ? hash.first[1] : hash

    hash.each do |(k,v)|
      begin
        self.send("#{k}=", v)
      rescue Exception => e
        puts "===> Peace::Model#refresh failed: #{e}" if ENV['LOG']
      end
    end

    self
  end
end
