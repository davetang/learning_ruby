#!/usr/bin/env ruby
#
# Case with regex, which has syntax similar to Perl.
# However the delimiters need to be `/`
#

srand(1984)

def dna_seq(n)
  n.times.map{ ['A', 'C', 'G', 'T'].sample }.join
end

nuc = dna_seq(100)

case nuc
when /(A{5})/
  puts "Found " + $1
when /(C{5})/
  puts "Found " + $1
when /(G{5})/
  puts "Found " + $1
when /(T{5})/
  puts "Found " + $1
else
  puts "Repeated nucleotides of size 6 not found"
end
