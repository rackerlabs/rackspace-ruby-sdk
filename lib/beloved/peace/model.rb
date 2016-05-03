require 'active_support/all'
require 'active_model'

class Peace::Model
  include Peace::ORM
  include Peace::Association
  include ActiveModel::Validations

  def initialize(hash={})
    send(:hydrate!, hash)
  end

  def to_json
    { "#{obj_name}": self }.to_json
  end

  private

  def obj_name
    @obj_name ||= self.class.to_s.split('::').last.downcase
  end

  # Do I want to do this hydration or simply rely on attr_accessors?
  def hydrate!(hash)
    keys        = hash.keys
    nested_hash = (keys.count == 1 && keys.first == obj_name)
    nested_hash ? matching_key(hash) : flat(hash)
  end

  def flat(hash={})
    hash.each{ |k,v| self.send("#{k}=", v) }
  end

  def matching_key(hash={})
    hash.first[1].each do |(k,v)|
      begin
        k = k.downcase.gsub('-','_').gsub(':','_')

        self.class.send(:define_method, "#{k}=") do |value|
          instance_variable_set("@" + k.to_s, value)
        end

        self.class.send(:define_method, k) do
          instance_variable_get("@" + k.to_s)
        end

        self.send("#{k}=", v)
      rescue Exception => e
        puts "Can't do: #{k}"
      end
    end
  end
end
