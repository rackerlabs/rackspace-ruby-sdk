require 'active_support/all'

class Peace::Model
  include Peace::ORM
  include Peace::Association

  def initialize(hash={})
    send(:refresh!, hash)
  end

  def to_json
    { "#{key_name}": self }.to_json
  end

  private

  def key_name
    self.class.to_s.split('::').last.downcase
  end

  def refresh!(hash)
    keys = hash.keys

    if keys.count == 1
      if keys.first == key_name 
        matching_key(hash)
      else
        flat(hash)
      end
    else
      flat(hash)
    end
  end

  def flat(hash={})
    hash.each{ |k,v| self.send("#{k}=", v) }
  end

  def matching_key(hash={})
    hash.first[1].each do |(k,v)|
      begin
        self.class.send(:define_method, "#{k}=") do |value|
          instance_variable_set("@" + k.to_s, value)
        end

        self.class.send(:define_method, k) do
          instance_variable_get("@" + k.to_s)
        end

        self.send("#{k}=", v)
      rescue
        puts "Can't do: #{k}"
      end
    end
  end
end
