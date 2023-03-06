#!/usr/bin/env ruby
#
# Unfamiliar syntax
#

# https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/
# blocks on one line
[1, 2, 3].each { |i| puts i }
# multi-line blocks
[1, 2, 3].each do |i|
  puts i
  puts i
end

# you can pass a block to a method
# and you can give it a name
def explicit_block(&block)
  return "No block given" unless block_given?
  block.call
end
explicit_block { puts "This is a block" }
puts explicit_block

# defining lambdas
my_lambda = -> (x) { puts "Hello " + x }
my_lambda2 = lambda { |x| puts "Hello " + x + " again" }
my_lambda.call("Alice")
my_lambda2.call("Alice")

# Procs are similar to lambdas
my_proc = Proc.new { |x| puts x }
my_proc.call(1984)

# the ampersand colon or pretzel colon syntax
# https://www.honeybadger.io/blog/how-ruby-ampersand-colon-works/
#
# When an & is added to the beginning of a method argument, it calls to_proc on
# its operand and passes it in as a block. 
words = ["would", "you", "like", "to", "play", "a", "game?"]
# this...
puts words.map(&:length)
# ..is equivalent to this:
puts words.map { |word| word.length }
