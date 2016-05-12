require 'active_support/all'
require 'active_model'

class Peace::Model
  include ActiveModel::Validations
  include Peace::ORM
  include Peace::Association

  class << self
    attr_accessor :custom_api_path

    def resource_name
      @resource_name ||= self.to_s.split('::').last.downcase
    end

    def collection_name
      @collection_name ||= resource_name.pluralize
    end

    # def custom_api_path
    #   binding.pry
    #   # I have a `server` object. How can I test it's `rackspace_api_path`?
    #   # Bubbling the message up just returns nil.
    #   # This is due to the initialization of the class-level instance variables.
    #   # They are "there", but not "set" until the class is re-opened for method
    #   # definitions, hence the nil.
    #
    #   # Might have to re-think how we setup and expose this value.
    #   # I'd hate to move it out of the model but this late initialization
    #   # blocks the entire feature.
    #
    #   @custom_api_path
    # end

    # A Mustache-inspired templated string that overrides
    # default naming conventions and injects nested URL variables.
    def rackspace_api_path(str)
      @custom_api_path = str
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

  def as_json(options=nil)
    options = { root: true }
    super(options)
  end

  # Provide the URL based on object state
  def url
    Peace::URL.new(self).url
  end

  def custom_api_path
    self.class.custom_api_path
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
