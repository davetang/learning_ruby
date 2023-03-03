# Learning Ruby

I have inherited and need to maintain a bunch of Ruby scripts. So here we go.

## Learn Ruby in Y minutes

[Learn X in Y minutes](https://learnxinyminutes.com/) is a useful site for
quickly getting the gist of Algorithms and Data Structures, Programming
Languages, and Computational Tools. I will go through the [Learn Ruby in Y
minutes](https://learnxinyminutes.com/docs/ruby/) page first and keep my notes
below.

You can use the `irb` (interactive Ruby) to run the code in an interactive
session.

Comments start with `#`; multi-line comments are delimited with `=begin` and
`=end`.

```ruby
# comment

=begin
multi
line comment
=end
```

Almost everything is an object.

```ruby
3.class
# => Integer

"Hello".class
# => String
```

Arithmetics are the same as Perl.

```ruby
10 - 10 * 2
# => -10

2**8
# => 256

11 % 2
# => 1
```

Use `0b` as a prefix for binary numbers.

```ruby
0b110
=> 6
```

Bitwise operators are also the same as Perl

```ruby
0b110 & 0b101
# => 4

0b110 | 0b001
# => 7

0b110 ^ 0b101
# => 3
```

Special values, which are also objects.

```ruby
# equivalent to NULL
nil

true
false
```

Comparison operators are the same as other languages.

```ruby
1 == 1
# => true

# works on strings
'one' == 'one'
# => true

2 != 1
# => true

# bang-bang to force Boolean
!!0
=> true
```

The spaceship operator exists in Ruby. Returns 1 when the first argument is
greater, -1 when the second is greater, and 0 otherwise.

```ruby
10<=>1
# => 1

1<=>10
# => -1

10<=>10
=> 0
```

Just like in Perl, there are two versions of logical operators; the "word"
versions are meant to be used as flow-control constructs.

```ruby
true && false
# => false

# log_error is do_something fails
do_something() or log_error()
```

String interpolation using `#`.

```ruby
placeholder = 'use string interpolation'
"I can #{placeholder} when using double quoted strings"
# => "I can use string interpolation when using double quoted strings"
```

Combine strings (no other types) using `+`.

```ruby
'hello' + ' world'
# => "hello world"
```

`puts` and `print`

```ruby
puts "Hello world"
# Hello world
# => nil

print "Hello world"
# Hello world=> nil
```

Assignment returns the value, so you can do multiple assignment.

```ruby
x = y = 10
# => 10

x
# => 10

y
# => 10
```

There's a data type called a symbol in Ruby and they are immutable, reusable
constants represented internally by an integer value. They're often used
instead of strings to efficiently convey specific, meaningful values.

```ruby
status = :pending
# => :pending

:pending.class
# => Symbol
```

Arrays (zero index) can contain different types and negative indexes work.

```ruby
a = [1, 'hello', false]
# => [1, "hello", false]

a[-2]
# => "hello"
```

`pop` and `push`.

```ruby
a = [1,2,3,4,5]

a
# => [1, 2, 3, 4, 5]

a.pop
# => 5

a
# => [1, 2, 3, 4]

a.push(10)
# => [1, 2, 3, 4, 10]
a
# => [1, 2, 3, 4, 10]
```

Hashes are the same as Perl but to use a `[` for indexing.

```ruby
hash = { 'colour' => 'green', 'number' => 5 }
# => {"colour"=>"green", "number"=>5}

hash['colour']
# => "green"
```

`if` conditional.

```ruby
if true
   'if statement'
elsif false
   'else if, optional'
else
   'else, also optional'
end
```

In Ruby, traditional `for` loops aren't very common. Instead, these  basic loops are implemented using enumerable, which hinges on `each`.

```ruby
(1..5).each do |counter|
   puts "iteration #{counter}"
end
# iteration 1
# iteration 2
# iteration 3
# iteration 4
# iteration 5
# => 1..5
```

The `do |variable| ... end` construct above is called a 'block'. Blocks are
similar to lambdas, anonymous functions or closures in other programming
languages. They can be passed around as objects, called, or attached as
methods.

The 'each' method of a range runs the block once for each element of the range.
The block is passed a counter as a parameter. You can also surround blocks in
curly brackets.

```ruby
(1..5).each { |c| puts "iteration #{c}" }
# iteration 1
# iteration 2
# iteration 3
# iteration 4
# iteration 5
# => 1..5
```

The contents of data structures can also be iterated using each.

```ruby
hash = { 'colour' => 'green', 'number' => 5 }
hash.each do |key, value|
  puts "#{key} is #{value}"
end
# colour is green
# number is 5
# => {"colour"=>"green", "number"=>5}
```

If you need an index you can use 'each_with_index' and define an index
variable.

```ruby
a = [1,2,3,4,5]
# => [1, 2, 3, 4, 5]

a.each_with_index do |e, i|
  puts "index #{i} is #{e} in the array"
end
# index 0 is 1 in the array
# index 1 is 2 in the array
# index 2 is 3 in the array
# index 3 is 4 in the array
# index 4 is 5 in the array
# => [1, 2, 3, 4, 5]
```

Exception handling.

```ruby
begin
  if false
    raise NoMemoryError, 'You ran out of memory.'
  end
rescue NoMemoryError => exception_variable
  puts 'NoMemoryError was raised', exception_variable
rescue RuntimeError => other_exception_variable
  puts 'RuntimeError was raised now'
else
  puts 'This runs if no exceptions were thrown at all'
ensure
  puts 'This code always runs no matter what'
end
# This runs if no exceptions were thrown at all
# This code always runs no matter what
# => nil
```

Methods.

```ruby
def times(x, y)
  x * y
end
# => :times

times(6, 7)
# => 42

times 6, 7
# => 42
```

Ruby will automatically destructure arrays on assignment to multiple variables,
i.e. multiple assignment.

```ruby
a, b, c = [1, 2, 3]
# => [1, 2, 3]

a
# => 1
b
# => 2
c
# => 3
```
