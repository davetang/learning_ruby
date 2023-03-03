#!/usr/bin/env ruby
#
# Parse a BED file
#

usage = <<-DOC
Usage: #{$0} <infile.bed>
DOC

if ARGV.length < 1
  puts usage
  exit(1)
end

bed = ARGV[0]

if !File.exist?(bed)
  puts "#{bed} does not exist"
  exit(1)
end

File.open(bed).each_line do |line|
  next if line.chomp! =~ /^#/
  cols = line.split(/\t/)
  if cols.length < 3
    STDERR.puts("Skipping #{line}; missing information")
    next
  end
  ref, start_pos, end_pos = cols
  if start_pos > end_pos
    STDERR.puts("Skipping #{line}; start > end")
    next
  end
  region = end_pos.to_i - start_pos.to_i
  puts "Region = #{region} bps"
end
exit(0)
