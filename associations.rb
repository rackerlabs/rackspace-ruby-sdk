require 'pry'
require 'active_support/all'

services = {}

Dir.glob("#{Dir.pwd}/lib/rackspace/services/**/*.rb").each do |file|
  next if file =~ /base/

  line = File.readlines(file).find{ |l| l =~ /attr_accessor/ }

  next unless line

  symbols    = line.strip[14..-1]
  attributes = symbols.split(', ').map{ |s| s[1..-1] }
  path       = file.gsub('lib/rackspace/services', 'spec/factories')
  bits       = path.split('/')
  service    = bits[-2].to_sym
  object     = bits[-1][0...-3]
  klass      = "Rackspace::#{service.to_s.classify}::#{object.classify}"
  belongs_to = attributes.select{ |a| a =~ /_id/ }.map{ |a| a.gsub('_id', '').to_sym }

  services[service] ||= {}
  services[service][object.to_sym] ||= {}
  services[service][object.to_sym][:belongs_to] ||= belongs_to

  belongs_to.each do |b|
    services[service][b.to_sym] ||= {}
    services[service][b.to_sym][:has_many] ||= []
    services[service][b.to_sym][:has_many] << object.pluralize.to_sym
  end
end


services.each do |(service_name, resources)|
  resources.each do |(resource_name, deets)|
    b = deets[:belongs_to]
    h = deets[:has_many]
    c = []

    if b && b.size > 0
      b.each { |x| c << "belongs_to :#{x}" }
    end

    if h && h.size > 0
      h.each { |x| c << "has_many :#{x}" }
    end

    next if c.size == 0

    IO.popen('pbcopy', 'w') { |f| f << c.join("\n") }

    path = "#{Dir.pwd}/lib/rackspace/services/#{service_name}/#{resource_name}.rb"
    `atom #{path}`

    gets.chomp
  end

end
