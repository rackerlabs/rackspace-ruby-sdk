require 'pry'
require 'active_support/all'

class Checklist

  attr_accessor :title, :items

  def initialize(title="Remaining Features")
    @title = title
    @items = `grep -Ri '; end' ./lib`.split("\n").map do |line|
      next if line =~ /checklist/

      bits      = line.split
      method    = bits[2][0...-1]
      path_bits = bits[0].split('/')
      service   = path_bits[4]
      file      = path_bits[5]
      file      = file[0...file.index('.rb')].classify
      klass     = "#{service}::#{file}".classify

      "- [ ] #{klass}##{method}"
    end.compact.sort
  end

  def post!
    puts "*" * 20
    puts "The checklist has been pasted to your clipboard."
    puts "*" * 20
    IO.popen('pbcopy', 'w') { |f| f << self.to_s }
    `open https://gist.github.com/`
  end

  def to_s
    "# #{title}: (#{items.count} items)\n" + items.join("\n")
  end

end

Checklist.new.post!
