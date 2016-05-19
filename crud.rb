require 'pry'

Dir.glob("#{Dir.pwd}/spec/rackspace/services/**/*/").each do |dir|
  bits = dir.split('/')
  next unless bits.size == 11 # resource level
  puts dir

  %w{create show update destroy index}.each do |a|
    path = "#{dir}/#{a}.json"
    File.open path, 'wb' do |f|
      f.write '{}'
    end
  end
end
