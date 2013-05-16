# TimeIterator

Utility class to iterate through times with a given step size.


## Installation

Add this line to your application's Gemfile:

    gem 'time-iterator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install time-iterator


## Usage

``` ruby
require "time-iterator"

Time.utc(1970, 1, 1).up_to(Time.now).step(24 * 60 * 60).count
# => 15842
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
