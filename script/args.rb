#!/usr/bin/env ruby
#
# https://docs.ruby-lang.org/en/master/optparse/tutorial_rdoc.html
#

# require OptionParser
require 'optparse'

# create an OptionParser object
option_parser = OptionParser.new do |opts|
  opts.on('-x', '--xxx', 'Short and long, no argument')
  opts.on('-y YYY', '--yyy', 'Short and long, required argument')
  opts.on('-z [ZZZ]', '--zzz', 'Short and long, optional argument')
end

# check for missing options
options = {}
# ARGV will be modified destructively
option_parser.parse!(into: options)
required_options = [:xxx, :yyy]
missing_options = required_options - options.keys
unless missing_options.empty?
  fail "Missing required options: #{missing_options}"
end

# access input options
puts "yyy is #{options[:yyy]}"
puts "xxx is #{options[:xxx]}"
if options[:zzz]
  puts "zzz is #{options[:zzz]}"
end
