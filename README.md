# Cacheable Attr

Allow any Ruby object's attributes to be cacheable.

## Install

### Bundler: `gem 'cacheable_attr'`

### RubyGems: `gem install cacheable_attr`

## Usage

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
puts "The second number will change every single call (You should normally use regular attrs for this, but just showing off ttl: 0)"
puts "The third and forth numbers will never change after the first call"
puts ""

loop do
  puts "[#{Time.now}] #{'%02d' % num_gen.num1} - #{'%02d' % num_gen.num2} - #{'%02d' % num_gen.num3} - #{'%02d' % num_gen.num4}"
  sleep 0.5
end
```

## Contributing

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright © 2012 Ryan Scott Lewis <ryan@rynet.us>.

The MIT License (MIT) - See LICENSE for further details.
