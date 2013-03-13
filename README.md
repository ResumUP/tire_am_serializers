# Active Model Serializers + Tire

The easy way to add [Active Model Serializers](https://github.com/rails-api/active_model_serializers) to your [Tire](https://github.com/karmi/tire/) results.

## Installation

Drop this line to your application's Gemfile:
```ruby
gem 'tire-am_serializers'
```

## Usage

Do nothing, it should works as expected:
```ruby
render json: User.search(...).results
```

If you want to get old behaviour from Tire:
```ruby
render json: Vacancy.search("*").map(&:tire_as_json)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request