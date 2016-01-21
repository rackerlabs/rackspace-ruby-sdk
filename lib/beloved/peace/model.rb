require 'active_support/all'

class Peace::Model
  extend Peace::ORM
  extend Peace::Association

  def initialize(hash={})
    hash.each{ |k,v| self.send("#{k}=", v) }
  end

  def url
    url = self.class.collection_url
    url << "/#{id}" if self.id
    url
  end

  # private
  #
  # def api_path
  #   url = self.class.collection_url
  #
  #   if arr = /{{\w+}}/.match(url)
  #     fragment = arr[0]
  #     variable = fragment[2...-2]
  #     value    = self.send(variable)
  #
  #     raise "Template error" unless value
  #
  #     url.gsub(fragment, value.to_s)
  #   else
  #     url
  #   end
  # end
end
