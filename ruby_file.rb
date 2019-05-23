#!/usr/bin/ruby

require 'erb'
require 'json'

json_file_name=File.expand_path(File.dirname(__FILE__)) + "/data/people.json"
people = JSON.parse(File.read(json_file_name))

erb_file_name = File.expand_path(File.dirname(__FILE__)) + "/SomeProject/blah.erb"
erb = ERB.new(File.read(erb_file_name))

puts erb.result(binding)
