# cacheable_attr

Allow any standard Ruby object's attributes to be cacheable

## Install

Add the following to your Gemfile:

```ruby
gem 'cacheable_attr'
```

or simply install with RubyGems:

```sh
gem install cacheable_attr
```

## Example

```ruby
require 'cacheable_attr'

class NumberGenerator
  extend CacheableAttr
  
  cacheable_attr :num1, ttl: 3
  cacheable_attr :num2, ttl: 0
  cacheable_attr :num3, :num4, ttl: nil
  
  def num1_uncached
    rand(100)
  end
  
  def num2_uncached
    rand(100)
  end
  
  def num3_uncached
    rand(100)
  end
  
  def num4_uncached
    rand(100)
  end
end

num_gen = NumberGenerator.new


puts "The first number will change every 3 seconds"
puts "The second number will change every single call"
puts "The third and forth numbers will never change after the first call"
puts ""

loop do
  puts "[#{Time.now}] #{'%02d' % num_gen.num1} - #{'%02d' % num_gen.num2} - #{'%02d' % num_gen.num3} - #{'%02d' % num_gen.num4}"
  sleep 0.5
end
```

## License

See the `LICENSE` file for more details.