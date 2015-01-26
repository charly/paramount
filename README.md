# Paramount
Take controll of your params in a dedicated Form Object

## Installation
Add the following line to your application's Gemfile & bundle it!

```ruby
gem 'paramount'
```

## Usage

    $ bin/rails g paramount Book

This will create a new file in app/forms

```ruby
class BookForm < Paramount::Model

  attribute :title
  
  def assign
    model.attributes= attributes #.except(:notify_me, :author_name, :geolocate, :etc)
    # assign_association
  end

private
  def assign_association
    # (model.author || model.build_author).name = author_name 
  end
end
```


## Contributing

1. Fork it ( https://github.com/charly/paramount/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
